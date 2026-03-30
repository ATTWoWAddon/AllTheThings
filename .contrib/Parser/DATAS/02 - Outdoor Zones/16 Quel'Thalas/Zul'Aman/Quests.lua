---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41803, {	-- For Zul'Aman!
				header(HEADERS.AchCriteria, 41803.01, {	-- Dis Was Our Land
					q(86708, {	-- The Gates of Zul'Aman
						["sourceQuests"] = {
							86735,	-- Paved in Ash [A]
							86736,	-- Paved in Ash [H]
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 240523 },	-- Scouting Map
						["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(86710, {	-- The Line Must be Drawn Here
						["sourceQuests"] = { 86708 },	-- The Gates of Zul'Aman
						["provider"] = { "n", 236436 },	-- Lady Liadrin
						["coord"] = { 60.1, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90749, {	-- Our Mutual Enemy
						["sourceQuests"] = { 86710 },	-- The Line Must be Drawn Here
						["provider"] = { "n", 236436 },	-- Lady Liadrin
						["coord"] = { 60.1, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86868, {	-- Goodwill Tour
						["sourceQuests"] = { 90749 },	-- Our Mutual Enemy
						["provider"] = { "n", 236485 },	-- Lady Liadrin
						["coord"] = { 5.5, 47.0, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"]	= {
							i(248554),	-- Twilightbreaker's Gauntlets
							i(248552),	-- Twilightbreaker's Gloves
							i(248553),	-- Twilightbreaker's Grips
							i(248551),	-- Twilightbreaker's Handwraps
						},
					}),
					q(86711, {	-- Amani Clarion Call
						["sourceQuests"] = { 90749 },	-- Our Mutual Enemy
						["provider"] = { "n", 236468 },	-- Zul'Jarra
						["coord"] = { 5.7, 47.8, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = { i(264334) },	-- Amani War Drum (DECOR!)
					}),
					q(86717, {	-- Show Us Your Worth
						["sourceQuests"] = {
							86711,	-- Amani Clarion Call
							86868,	-- Goodwill Tour
						},
						["provider"] = { "n", 236559 },	-- Zul'Jarra
						["coord"] = { 46.3, 48.8, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(86719, {	-- Important Amani
						["sourceQuests"] = {
							86711,	-- Amani Clarion Call
							86868,	-- Goodwill Tour
						},
						["provider"] = { "n", 236558 },	-- Zul'jan
						["coord"] = { 46.3, 48.4, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							o(539207, {	-- Hastily Packed Belongings
								["coord"] = { 16.5, 20.7, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
								["groups"] = { i(237768) },	-- Hash'ey Staff (QI!)
							}),
						},
					}),
					q(86716, {	-- Armed by Light
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236522 },	-- Zul'jan
						["coord"] = { 16.6, 20.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							i(237767),	-- Lightwood Weapon (QI!)
							--
							i(248560),	-- Stonebough Blade
							i(248559),	-- Stonebough Bow
							i(248557),	-- Stonebough Dagger
							i(248558),	-- Stonebough Edge
							i(248556),	-- Stonebough Greatsword
							i(248561),	-- Stonebough Hatchet
							i(248555),	-- Stonebough Kris
							i(248562),	-- Stonebough Spear
						},
					}),
					q(86721, {	-- Everything We Worked For
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236522 },	-- Zul'jan
						["coord"] = { 16.6, 20.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(86712, {	-- The Amani Stand Strong
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236540 },	-- Zul'jan
						["coord"] = { 22.6, 79.9, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							i(237501),	-- Lightwood Weapon (PQI!)
							--
							i(264257),	-- Zul'Aman Armament Rest (DECOR!)
						},
					}),
					q(86715, {	-- Rituals Cut Short
						["sourceQuests"] = {
							86716,	-- Armed by Light
							86721,	-- Everything We Worked For
						},
						["provider"] = { "n", 236542 },	-- Lady Liadrin
						["coord"] = { 23.1, 79.9, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(86718, {	-- Twilight Bled
						["sourceQuests"] = {
							86716,	-- Armed by Light
							86721,	-- Everything We Worked For
						},
						["provider"] = { "n", 236541 },	-- Zul'jarra
						["coord"] = { 22.9, 79.3, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							i(260470),	-- Bloodspattered Bindings
							i(260469),	-- Bloodspattered Cuffs
							i(260468),	-- Bloodspattered Shackles
							i(260471),	-- Bloodspattered Wraps
						},
					}),
					q(86720, {	-- Break the Blade
						["sourceQuests"] = {
							86712,	-- The Amani Stand Strong
							86715,	-- Rituals Cut Short
							86718,	-- Twilight Bled
						},
						["provider"] = { "n", 236587 },	-- Zul'jarra
						["coord"] = { 47.5, 46.8, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							i(248563),	-- Zulguard's Shoes
							i(248564),	-- Zulguard's Stompers
							i(248565),	-- Zulguard's Striders
							i(248566),	-- Zulguard's Warboots
						},
					}),
					q(86722, {	-- Heart of the Amani
						["sourceQuests"] = { 86720 },	-- Break the Blade
						["provider"] = { "n", 236601 },	-- Zul'jarra
						["coord"] = { 47.8, 47.8, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(86723, {	-- Isolation
						["sourceQuests"] = { 86722 },	-- Heart of the Amani
						["provider"] = { "n", 236602 },	-- Zul'jarra
						["coord"] = { 42.7, 66.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86652, {	-- Left in the Shadows
						["sourceQuests"] = { 86723 },	-- Isolation
						["provider"] = { "n", 236659 },	-- Zul'jarra
						["coord"] = { 45.7, 65.5, MAP.MIDNIGHT.ZULAMAN },
					}),
				}),
				header(HEADERS.AchCriteria, 41803.02, {	-- Path of de Hash'ey
					q(86653, {	-- The Path of the Amani
						["sourceQuests"] = { 86723 },	-- Isolation
						["provider"] = { "n", 236126 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					hqt(91060, {	-- Stay awhile and listen: Loa Speaker Kinduru
						["name"] = "Stay awhile and listen: Loa Speaker Kinduru",
						["description"] = "Dialogue becomes available after accepting 'The Path of the Amani' (86653).",
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 244479 },	-- Loa Speaker Kinduru
						["coord"] = { 43.8, 68.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					--
					q(86655, {	-- De Ancient Path
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236140 },	-- Zul'jarra
						["coord"] = { 51.6, 70.8, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(248570),	-- Skyblessed Breastplate
							i(248569),	-- Skyblessed Chainmail
							i(248568),	-- Skyblessed Vest
							i(248567),	-- Skyblessed Vestment
						},
					}),
					q(89334, {	-- Ahead of the Issue
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236140 },	-- Zul'jarra
						["coord"] = { 51.6, 70.8, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(239083),	-- Head of Brulagh the Crusher (QI!)
							i(243188),	-- Head of Cragward Gaahl (QI!)
							i(243189),	-- Head of Pulverizer Helthra (QI!)
							--
							i(260461),	-- Brulagh's Torque
							i(260459),	-- Gaahl's Gorget
							i(260458),	-- Helthra's Fetish
						},
					}),
					q(86654, {	-- Gnarldin Bashing
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236143 },	-- Lady Liadrin
						["coord"] = { 51.6, 70.7, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(264255) },	-- Amani Trophy Frame (DECOR!)
					}),
					q(86656, {	-- Brutal Feast
						["sourceQuests"] = {
							89334,	-- Ahead of the Issue
							86655,	-- De Ancient Path
							86654,	-- Gnarldin Bashing
						},
						["provider"] = { "n", 236147 },	-- Zul'jarra
						["coord"] = { 51.9, 75.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Lady Liadrin
					--	["name"] = "Stay awhile and listen: Lady Liadrin",
					--	["description"] = "Dialogue becomes available during 'Brutal Feast' (86656).",
					--	["sourceQuests"] = {
					--		89334,	-- Ahead of the Issue
					--		86655,	-- De Ancient Path
					--		86654,	-- Gnarldin Bashing
					--	},
					--	["provider"] = { "n", 244421 },	-- Lady Liadrin
					--	["coord"] = { 52.4, 81.0, MAP.MIDNIGHT.ZULAMAN },
					--}),
					--
					q(86809, {	-- Test of Conviction
						["sourceQuests"] = { 86656 },	-- Brutal Feast
						["provider"] = { "n", 244422 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86657, {	-- Shadebasin Watch
						["sourceQuests"] = { 86809 },	-- Brutal Feast
						["provider"] = { "n", 236141 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					hqt(92125, {	-- Stay awhile and listen: Zul'jarra
						["name"] = "Stay awhile and listen: Zul'jarra",
						["description"] = "Dialogue becomes available after accepting 'Shadebasin Watch' (86657).",
						["sourceQuests"] = { 86809 },	-- Test of Conviction
						["provider"] = { "n", 236141 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					--
					q(86658, {	-- The Crypt in the Mist
						["sourceQuests"] = { 86657 },	-- Shadebasin Watch
						["provider"] = { "n", 244438 },	-- Zul'jarra
						["coord"] = { 44.1, 34.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(248573),	-- Spiritwarden's Cinch
							i(248571),	-- Spiritwarden's Cord
							i(248572),	-- Spiritwarden's Sash
							i(248574),	-- Spiritwarden's Waistguard
						},
					}),
					q(86660, {	-- Rescue from the Shadows
						["sourceQuests"] = { 86657 },	-- Shadebasin Watch
						["provider"] = { "n", 244438 },	-- Zul'jarra
						["coord"] = { 44.1, 34.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(253469) },	-- Ritual-Cursed Sarcophagus (DECOR!)
					}),
					q(86659, {	-- Breaching the Mist
						["sourceQuests"] = {
							86660,	-- Rescue from the Shadows
							86658,	-- The Crypt in the Mist
						},
						["provider"] = { "n", 244588 },	-- Zul'jarra
						["coord"] = { 36.8, 35.0, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(248576),	-- Prowlers Cloth
							i(248575),	-- Prowlers Shawl
						},
					}),
					q(92084, {	-- Halazzi's Guile
						["sourceQuests"] = { 86659 },	-- Breaching the Mist
						["provider"] = { "n", 236155 },	-- Zul'jarra
						["coord"] = { 32.4, 31.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86661, {	-- Coals of a Dead Loa
						["sourceQuests"] = { 92084 },	-- Halazzi's Guile
						["provider"] = { "n", 236155 },	-- Zul'jarra
						["coord"] = { 32.4, 31.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86808, {	-- The Riddled Speaker
						["sourceQuests"] = { 86661 },	-- Coals of a Dead Loa
						["provider"] = { "n", 244592 },	-- Zul'jarra
						["coord"] = { 38.5, 22.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86663, {	-- Embers to a Flame
						["sourceQuests"] = { 86808 },	-- The Riddled Speaker
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(264715) },	-- Zul'Aman Flame Cradle (DECOR!)
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Lady Liadrin
					--	["name"] = "Stay awhile and listen: Lady Liadrin",
					--	["description"] = "Dialogue becomes available during 'Embers to a Flame' (86663).",
					--	["sourceQuests"] = { 86808 },	-- The Riddled Speaker
					--	["provider"] = { "n", 236163 },	-- Lady Liadrin
					--	["coord"] = { 55.0, 18.4, MAP.MIDNIGHT.ZULAMAN },
					--}),
					--
					q(86664, {	-- Seer or Sear
						["sourceQuests"] = { 86663 },	-- Embers to a Flame
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(248578),	-- Band of Impatience
							i(248577),	-- Ring of Doubt
						},
					}),
					q(86665, {	-- Face in the Fire
						["sourceQuests"] = { 86664 },	-- Seer or Sear
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(90772, {	-- The Flames Rise Higher
						["sourceQuests"] = { 86665 },	-- Face in the Fire
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86666, {	-- In the Shadow of Rebirth
						["sourceQuests"] = { 90772 },	-- The Flames Rise Higher
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, MAP.MIDNIGHT.ZULAMAN },
					}),
				}),
				header(HEADERS.AchCriteria, 41803.03, {	-- Where War Slumbers
					q(86681, {	-- Den of Nalorakk: A Taste of Vengeance
						["sourceQuests"] = { 86666 },	-- In the Shadow of Rebirth
						["provider"] = { "n", 240186 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264481),	-- Earthhide Amani Tapestry (DECOR!)
							i(264480),	-- Greenvine Amani Tapestry (DECOR!)
							i(264479),	-- Skyweave Amani Tapestry (DECOR!)
						},
					}),
					q(86682, {	-- Den of Nalorakk: Waking de Bear
						["sourceQuests"] = { 86681 },	-- A Taste of Vengeance
						["provider"] = { "n", 240186 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91958, {	-- Den of Nalorakk: Unforgiven
						["sourceQuests"] = { 86681 },	-- A Taste of Vengeance
						["provider"] = { "n", 240215 },	-- Zul'jarra
						["coord"] = { 33.6, 78.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Zul'jarra
					--	["name"] = "Stay awhile and listen: Zul'jarra",
					--	["description"] = "Dialogue becomes available during 'Den of Nalorakk: Unforgiven' (91958).",
					--	["sourceQuests"] = { 86682 },	-- Waking de Bear
					--	["provider"] = { "n", 240215 },	-- Zul'jarra
					--	["coord"] = { 33.6, 78.8, MAP.MIDNIGHT.ZULAMAN },
					--}),
					--
				}),
				header(HEADERS.AchCriteria, 41803.04, {	-- De Amani Never Die
					q(86683, {	-- Hash'ey Away
						["sourceQuests"] = { 91958 },	-- Den of Nalorakk: Unforgiven
						["provider"] = { "n", 240215 },	-- Zul'jarra
						["coord"] = { 31.6, 83.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86684, {	-- The Blade's Edge
						["sourceQuests"] = { 86683 },	-- Hash'ey Away
						["provider"] = { "n", 240216 },	-- Zul'jarra
						["coord"] = { 43.5, 68.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86687, {	-- Conduit Crisis
						["sourceQuests"] = { 86684 },	-- The Blade's Edge
						["provider"] = { "n", 240033 },	-- Zul'jarra
						["coord"] = { 28.4, 77.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(248579),	-- Atalguard's Oath Mantle
							i(248582),	-- Atalguard's Oath Pauldrons
							i(248581),	-- Atalguard's Oath Shoulderguards
							i(248580),	-- Atalguard's Oath Shoulderpads
						},
					}),
					q(86685, {	-- Chip and Shatter
						["sourceQuests"] = { 86684 },	-- The Blade's Edge
						["provider"] = { "n", 240033 },	-- Zul'jarra
						["coord"] = { 28.4, 77.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86686, {	-- Light Indiscriminate
						["sourceQuests"] = { 86684 },	-- The Blade's Edge
						["provider"] = { "n", 240039 },	-- Lady Liadrin
						["coord"] = { 28.4, 77.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91001, {	-- Clear de Way
						["sourceQuests"] = {
							86687,	-- Conduit Crisis
							86685,	-- Chip and Shatter
							86686,	-- The Blade's Edge
						},
						["provider"] = { "n", 245270 },	-- Zul'jarra
						["coord"] = { 25.7, 77.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(86692, {	-- Blade Shattered
						["sourceQuests"] = { 91001 },	-- Clear de Way
						["provider"] = { "n", 240034 },	-- Zul'jarra
						["coord"] = { 22.5, 77.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(248583) },	-- Drum of Renewed Bonds
					}),
					q(86693, {	-- De Legend of Hash'ey
						["sourceQuests"] = { 86692 },	-- Blade Shattered
						["provider"] = { "n", 240037 },	-- Zul'jarra
						["coord"] = { 21.4, 77.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(255648) },	-- Zul'Aman Ancestral Fountain (DECOR!)
					}),
					q(91062, {	-- Broken Bridges
						["sourceQuests"] = { 86693 },	-- De Legend of Hash'ey
						["provider"] = { "n", 249653 },	-- Zul'jarra
						["coord"] = { 45.7, 65.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					hqt(92108, {	-- Stay awhile and listen: Zul'jan
						["name"] = "Stay awhile and listen: Zul'jan",
						["description"] = "Dialogue becomes available during 'Broken Bridges' (91062).",
						["sourceQuests"] = { 86693 },	-- De Legend of Hash'ey
						["provider"] = { "n", 245646 },	-- Zul'jan
						["coord"] = { 51.3, 54.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					--
					q(91087, {	-- Reports Returned
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 241308 },	-- Lady Liadrin
						["coord"] = { 50.8, 54.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(256928) },	-- Banner of the Amani Tribe (DECOR!)
					}),
				}),
			}),
			n(BONUS_OBJECTIVES, {
				q(91040, {	-- Vexatious Vilebranch
					["sourceQuests"] = { 86659 },	-- Breaching the Mist
					["coord"] = { 33.8, 33.6, MAP.MIDNIGHT.ZULAMAN },
				}),
			}),
			--Sojourner
			header(HEADERS.Achievement, 61452, {	-- Sojourner of Zul'Aman
				header(HEADERS.AchCriteria, 61452.01, {	-- Healing the Spirit
					q(91206, {	-- Loa Disturbance
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 254665 },	-- Elder Doru
						["coord"] = { 43.1, 67.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(87254, {	-- Curse Cleanse
						["sourceQuests"] = { 91206 },	-- Loa Disturbance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(245982) },	-- Large Pango Liver (QI!)
					}),
					q(87256, {	-- Alternative Medicine
						["sourceQuests"] = { 91206 },	-- Loa Disturbance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(516293, {	-- Bloodweed Shrub
								i(235912),	-- Bloodweed Branch (QI!)
							}),
						},
					}),
					q(87267, {	-- Demands Unmet
						["sourceQuests"] = {
							87256,	-- Alternative Medicine
							87254,	-- Curse Cleanse
						},
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(554628, {	-- Forgotten Staff
								["coord"] = { 39.4, 44.9, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(246210) },	-- Shattered Staff (QI!)
							}),
						},
					}),
					q(87268, {	-- Required Repentance
						["sourceQuests"] = { 87267 },	-- Demands Unmet
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(87317, {	-- Denial Denied
						["sourceQuests"] = { 87268 },	-- Required Repentance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92531, {	-- The Medicine Loa's Shrine
						["sourceQuests"] = { 87317 },	-- Denial Denied
						["provider"] = { "n", 237956 },	-- Kulzi
						["coord"] = { 38.8, 44.9, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(256645) },	-- Pattern: Blessed Pango Charm (RECIPE!)
					}),
				}),
				header(HEADERS.AchCriteria, 61452.02, {	-- Sawdust to Sawdust
					q(88985, {	-- Recuperating Returns
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["qg"] = 241082,	-- Torundo the Grizzled <War Advisor>
						["coord"] = { 45.7, 65.5, MAP.MIDNIGHT.ZULAMAN },
						["isBreadcrumb"] = true,
					}),
					q(88986, {	-- Blind The Bandits
						["sourceQuests"] = { 88985 },	-- Recuperating Returns
						["provider"] = { "n", 240521 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(238962) },	-- Lightwood Splinters (PQI!)
					}),
					q(88987, {	-- Salvaged Sabotage
						["sourceQuests"] = { 88985 },	-- Recuperating Returns
						["provider"] = { "n", 240521 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(525374, {	-- Stolen Equipment
								["coords"] = {
									{ 29.9, 27.9, MAP.MIDNIGHT.ZULAMAN },
									{ 30.3, 27.7, MAP.MIDNIGHT.ZULAMAN },
									{ 30.3, 28.4, MAP.MIDNIGHT.ZULAMAN },
									{ 30.4, 27.3, MAP.MIDNIGHT.ZULAMAN },
									{ 30.7, 27.6, MAP.MIDNIGHT.ZULAMAN },
									{ 30.8, 27.6, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(238964) },	-- Stolen Equipment (QI!)
							}),
						},
					}),
					q(88988, {	-- The Artisan's Apprentice
						["sourceQuests"] = {
							88986,	-- Blind The Bandits
							88987,	-- Salvaged Sabotage
						},
						["provider"] = { "n", 241219 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(527670, {	-- Lightwood Pile
								["coord"] = { 28.6, 27.6, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(239138) },	-- Lightwood Chunk (QI!)
							}),
						},
					}),
					q(88989, {	-- Another One Bites the Sawdust
						["sourceQuests"] = { 88988 },	-- The Artisan's Apprentice
						["provider"] = { "n", 241219 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(531204, {	-- Completed Javelin
								["coord"] = { 28.5, 27.5, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(241612) },	-- Lightwood Javelin (QI!)
							}),
							--
							i(264456),	-- Lightwood Carved Longbow
							i(264450),	-- Lightwood Carver's Knife
							i(264458),	-- Lightwood Channeling Staff
							i(264455),	-- Lightwood Crescent Blades
							i(264454),	-- Lightwood Forager's Saber
							i(264449),	-- Lightwood Logging Hatchet
							i(264453),	-- Lightwood Rune Blade
							i(264451),	-- Lightwood Spirit Cudgel
							i(264457),	-- Lightwood Splitter Spear
							i(264459),	-- Lightwood Sunsword
							i(264452),	-- Lightwood Timber Maul
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.03, {	-- Between Two Trolls
					q(89231, {	-- A Fighter Not a Lover
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 240977 },	-- Zak'kash
						["coord"] = { 43.9, 66.0, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(249236),	-- Amani Headdress (QI!)
							o(567976, {	-- Eagle Feather
								i(249231),	-- Eagle Feather (QI!)
							}),
						},
					}),
					q(89230, {	-- A Lover Not a Fighter
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 240976 },	-- Kagara
						["coord"] = { 44.0, 66.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(249271) },	-- Gnarldin Necklace (QI!)
					}),
					q(89233, {	-- Love Triangle
						["sourceQuests"] = {
							89231,	-- A Fighter Not a Lover
							89230,	-- A Lover Not a Fighter
						},
						["provider"] = { "n", 240975 },	-- Namaji
						["coord"] = { 44.4, 65.7, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264448),	-- Featherwoven Promise Band
							i(264447),	-- Ring of the Threshadon's Heart
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.04, {	-- Sorrowing Kin
					q(89565, {	-- The Path of Mourning
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 242014 },	-- Chana
						["coord"] = { 45.4, 69.7, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(89503, {	-- Somber Siblings
						["sourceQuests"] = { 89565 },	-- The Path of Mourning
						["provider"] = { "n", 247424 },	-- Chana
						["coord"] = { 45.9, 72.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(528004, {	-- Weeping Caps
								i(239447),	-- Weeping Spores (QI!)
							}),
						},
					}),
					q(89506, {	-- Strong Ties
						["sourceQuests"] = { 89503 },	-- Somber Siblings
						["qgs"] = {
							247425,	-- Chana (mobileNPC)
							256867,	-- Grieving Amani (mobileNPC)
						},
						["coord"] = { 46.2, 74.8, MAP.MIDNIGHT.ZULAMAN },	-- General area where previous quest takes place
						["groups"] = { i(239480) },	-- Resilient Sinew (QI!)
					}),
					q(89513, {	-- Kindling Aplenty
						["sourceQuests"] = { 89506 },	-- Strong Ties
						["qgs"] = {
							247425,	-- Chana (mobileNPC)
							256867,	-- Grieving Amani (mobileNPC)
						},
						["coord"] = { 46.7, 78.0, MAP.MIDNIGHT.ZULAMAN },	-- General area where previous quest takes place
						["groups"] = {
							o(528034, {	-- Fallen Branch
								["coords"] = {
									{ 48.0, 84.7, MAP.MIDNIGHT.ZULAMAN },
									{ 48.1, 85.5, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(239483) },	-- Fallen Branch (QI!)
							}),
						},
					}),
					q(89559, {	-- Reasonless Worship
						["sourceQuests"] = { 89513 },	-- Kindling Aplenty
						["qgs"] = {
							247425,	-- Chana (mobileNPC)
							256867,	-- Grieving Amani (mobileNPC)
						},
						["coord"] = { 48.5, 85.1, MAP.MIDNIGHT.ZULAMAN },	-- General area where previous quest takes place
						["groups"] = {
							o(528071, {	-- Shrine Piece
								["coord"] = { 47.3, 87.6, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(239494) },	-- Weathered Shrine Piece (QI!)
							}),
						},
					}),
					q(89560, {	-- A Quiet Farewell
						["sourceQuests"] = {
							89513,	-- Kindling Aplenty
							89559,	-- Reasonless Worship
						},
						["qgs"] = {
							247425,	-- Chana (mobileNPC)
							256867,	-- Grieving Amani (mobileNPC)
						},
						["coord"] = { 47.3, 87.6, MAP.MIDNIGHT.ZULAMAN },	-- General area where previous quest takes place
						["groups"] = { i(264654) },	-- Emberwing Hatchling (PET!)
					}),
				}),
				header(HEADERS.AchCriteria, 61452.05, {	-- Unlikely Friends
					q(93667, {	-- Camp Stonewash
						["sourceQuests"] = { 86657 },	-- Shadebasin Watch
						["qg"] = 255852,	-- Scout Zel'kanra
						["coord"] = { 44.2, 33.6, MAP.MIDNIGHT.ZULAMAN },
						["isBreadcrumb"] = true,
					}),
					q(90481, {	-- I Have a Permit
						["sourceQuests"] = { 93667 },	-- Camp Stonewash
						["provider"] = { "n", 242383 },	-- Seeker Crikkash
						["coord"] = { 46.3, 26.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(90482, {	-- Cuisine Connection
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242394 },	-- Amaxel
						["coord"] = { 47.2, 24.6, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(241013),	-- Zapgut Eel Stomach (QI!)
							o(529683, {	-- Blisterskin Kelp
								["coords"] = {
									{ 48.0, 28.5, MAP.MIDNIGHT.ZULAMAN },
									{ 48.4, 26.6, MAP.MIDNIGHT.ZULAMAN },
									{ 48.4, 27.7, MAP.MIDNIGHT.ZULAMAN },
									{ 48.5, 29.2, MAP.MIDNIGHT.ZULAMAN },
									{ 48.7, 26.6, MAP.MIDNIGHT.ZULAMAN },
									{ 49.4, 27.6, MAP.MIDNIGHT.ZULAMAN },
									{ 49.9, 25.3, MAP.MIDNIGHT.ZULAMAN },
									{ 50.3, 27.9, MAP.MIDNIGHT.ZULAMAN },
									{ 50.6, 26.1, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(241014) },	-- Blisterskin Kelp (QI!)
							}),
						},
					}),
					q(90483, {	-- A Witherbark Story
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(90485, {	-- Afterthought Artifacts
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(572498, {	-- Lost Amani Trinket
								["coord"] = { 49.5, 27.8, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(241615) },	-- Lost Amani Trinket (QI!)
							}),
							o(572428, {	-- Lost Amani Bolt
								["coord"] = { 48.9, 28.4, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(251075) },	-- Lost Amani Bolt (QI!)
							}),
							o(531227, {	-- Lost Amani Oar
								["coord"] = { 48.4, 28.3, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(251272) },	-- Lost Amani Oar (QI!)
							}),
							o(531213, {	-- Old Amani Pot
								["coord"] = { 48.7, 28.7, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(241614) },	-- Old Amani Pot (QI!)
							}),
						},
					}),
					q(90484, {	-- Sightseeing Stegadon
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242393 },	-- Trishe
						["coord"] = { 47.3, 26.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(90486, {	-- Dangerous Delicacies
						["sourceQuests"] = { 90482 },	-- Cuisine Connection
						["provider"] = { "n", 242394 },	-- Amaxel
						["coord"] = { 47.2, 24.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(90568, {	-- Unlikely Friends
						["sourceQuests"] = {
							90483,	-- A Witherbark Story
							90485,	-- Afterthought Artifacts
							90486,	-- Dangerous Delicacies
							90484,	-- Sightseeing Stegadon
						},
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264182, {	-- Kelum'ko's Generous Aromatic Gift
								i(264183),	-- Kelum'ko's Generous Aromatic Gift
							})
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.06, {	-- The Voice of Nalorakk
					q(91813, {	-- The Spiritpaw
						["sourceQuests"] = { 91958 },	-- Den of Nalorakk: Unforgiven
						["provider"] = { "n", 248657 },	-- Pel'na Torntusk
						["coord"] = { 33.6, 78.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91747, {	-- Not Quite Nalorakk
						["sourceQuests"] = { 91813 },	-- The Spiritpaw
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(248300) },	-- Nalorakk Trinket (QI!)
					}),
					q(91748, {	-- Too Much Twilight
						["sourceQuests"] = { 91813 },	-- The Spiritpaw
						["provider"] = { "n", 248123 },	-- Fleeg
						["coord"] = { 41.3, 80.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91749, {	-- It's Just Not Right
						["sourceQuests"] = {
							91747,	-- Not Quite Nalorakk
							91748,	-- Too Much Twilight
						},
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(566020 , {	-- Groffa's Hoard
								["coord"] = { 44.5, 79.3, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(248659) },	-- Groffa's Treasures (QI!)
							}),
						},
					}),
					q(93734, {	-- Precious Trinkets
						["sourceQuests"] = { 91749 },	-- It's Just Not Right
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91750, {	-- Perils of Trust
						["sourceQuests"] = { 93734 },	-- Precious Trinkets
						["provider"] = { "n", 248123 },	-- Fleeg
						["coord"] = { 41.3, 80.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(263274),	-- Furgh's Legguards
							i(263275),	-- Furgh's Legplates
							i(263273),	-- Fleeg's Hidewraps
							i(263272),	-- Fleeg's Trousers
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.07, {	-- Reclaiming de Honor
					q(92492, {	-- Honorin' de Sacrifice
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 245664 },	-- Lilaju
						["coord"] = { 33.6, 78.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92493, {	-- What Remains of Idago
						["sourceQuests"] = { 92492 },	-- Honorin' de Sacrifice
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 26.1, 64.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(574585 , {	-- Idago's Banner
								["coord"] = { 23.4, 60.4, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(252135) },	-- Idago's Banner (QI!)
							}),
							o(574576 , {	-- Idago's Warspear
								["coord"] = { 25.0, 63.3, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(252134) },	-- Idago's Warspear (QI!)
							}),
							o(574587, {	-- Lilaju's Hiding Spot
								["coord"] = { 24.1, 59.7, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(252136) },	-- Idago's Letter (QI!)
							}),
						},
					}),
					q(92495, {	-- Disruptin' de Blade
						["sourceQuests"] = { 92492 },	-- Honorin' de Sacrifice
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 26.1, 64.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92496, {	-- Spears Against de Shadow
						["sourceQuests"] = {
							92495,	-- Disruptin' de Blade
							92493,	-- What Remains of Idago
						},
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 22.6, 63.9, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92497, {	-- Simply Magical
						["sourceQuests"] = {
							92495,	-- Disruptin' de Blade
							92493,	-- What Remains of Idago
						},
						["provider"] = { "n", 251522 },	-- Idago
						["coords"] = {
							{ 21.2, 63.4, MAP.MIDNIGHT.ZULAMAN },
							{ 61.2, 39.8, 2584 },	-- Revantusk Sedge
						},
						["groups"] = {
							o(580011, {	-- Tome of Pain
								["coord"] = { 35.7, 39.4, 2584 },	-- Revantusk Sedge
								["groups"] = { i(260406) },	-- Page of Pain (QI!)
							}),
							o(580012, {	-- Tome of Binding
								["coord"] = { 46.8, 75.7, 2584 },	-- Revantusk Sedge
								["groups"] = { i(260407) },	-- Page of Binding (QI!)
							}),
						},
					}),
					q(92499, {	-- The Wisest Leaders Follow
						["sourceQuests"] = {
							92497,	-- Simply Magical
							92496,	-- Spears Against de Shadow
						},
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 22.6, 63.9, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264469),	-- Ashbound Tribute Cloak
							i(264468),	-- Cloak of the Revantusk Rite
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.08, {	-- Vengeance for Tolbani
					q(94867, {	-- Lost in Atal'Abasi
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["qg"] = 258950,	-- Vakala
						["coord"] = { 45.1, 68.3, MAP.MIDNIGHT.ZULAMAN },
						["isBreadcrumb"] = true,
					}),
					q(91069, {	-- Vengeance for Tolbani
						["sourceQuests"] = { 94867 },	-- Lost in Atal'Abasi
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91070, {	-- Reclaim The Goods
						["sourceQuests"] = { 94867 },	-- Lost in Atal'Abasi
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(548731, {	-- Stolen Provisions
								["coords"] = {
									{ 48.4, 67.2, MAP.MIDNIGHT.ZULAMAN },
									{ 48.8, 64.0, MAP.MIDNIGHT.ZULAMAN },
									{ 50.3, 66.6, MAP.MIDNIGHT.ZULAMAN },
									{ 50.5, 64.4, MAP.MIDNIGHT.ZULAMAN },
									{ 52.6, 62.3, MAP.MIDNIGHT.ZULAMAN },
									{ 54.0, 66.3, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(245588) },	-- Food Provisions (QI!)
							}),
						},
					}),
					q(91071, {	-- The Menace of Atal'Abasi
						["sourceQuests"] = { 94867 },	-- Lost in Atal'Abasi
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91556, {	-- Loa's Flame
						["sourceQuests"] = {
							91070,	-- Reclaim The Goods
							91071,	-- The Menace of Atal'Abasi
							91069,	-- Vengeance for Tolbani
						},
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(264470) },	-- Ash-Tied Offering
					}),
				}),
				header(HEADERS.AchCriteria, 61452.09, {	-- The Loa of Murlocs
					q(92163, {	-- The Loa of Murlocs
						["sourceQuests"] = { 91958 },	-- Den of Nalorakk: Unforgiven
						["qg"] = 257092,	-- Old Teo'zan
						["coord"] = { 46.0, 65.1, MAP.MIDNIGHT.ZULAMAN },
						["isBreadcrumb"] = true,
					}),
					q(92164, {	-- Murloc Madness
						["sourceQuests"] = { 92163 },	-- The Loa of Murlocs	// Unlocked when "Paved in Ash" is completed in Eversong Campaign on Live realms. Leaving it as is because of breadcrumb
						["qg"] = 250196,	-- King Mrgl-Mrgl <"Loa of Murlocs">
						["coord"] = { 52.9, 60.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92165, {	-- Fish Are Food, Not Friends
						["sourceQuests"] = { 92163 },	-- The Loa of Murlocs	// Unlocked when "Paved in Ash" is completed in Eversong Campaign on Live realms. Leaving it as is because of breadcrumb
						["qg"] = 250196,	-- King Mrgl-Mrgl <"Loa of Murlocs">
						["coord"] = { 52.9, 60.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(617375, {	-- Murloc-Skewered Lynxfish
								["coords"] = {
									{ 48.6, 58.5, MAP.MIDNIGHT.ZULAMAN },
									{ 48.7, 59.5, MAP.MIDNIGHT.ZULAMAN },
									{ 48.8, 56.5, MAP.MIDNIGHT.ZULAMAN },
									{ 49.0, 56.4, MAP.MIDNIGHT.ZULAMAN },
									{ 49.3, 60.6, MAP.MIDNIGHT.ZULAMAN },
									{ 49.9, 59.4, MAP.MIDNIGHT.ZULAMAN },
									{ 49.9, 61.2, MAP.MIDNIGHT.ZULAMAN },
									{ 50.4, 58.3, MAP.MIDNIGHT.ZULAMAN },
									{ 51.9, 59.9, MAP.MIDNIGHT.ZULAMAN },
									{ 52.0, 60.8, MAP.MIDNIGHT.ZULAMAN },
									{ 52.4, 61.5, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(263202) },	-- Murloc-Skewered Lynxfish (QI!)
							}),
						},
					}),
					q(92166, {	-- Following Suit
						["sourceQuests"] = { 92163 },	-- The Loa of Murlocs	// Unlocked when "Paved in Ash" is completed in Eversong Campaign on Live realms. Leaving it as is because of breadcrumb
						["qg"] = 250196,	-- King Mrgl-Mrgl <"Loa of Murlocs">
						["coord"] = { 52.9, 60.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92167, {	-- There Can Be Only One
						["sourceQuests"] = {
							92165,	-- Fish Are Food, Not Friends
							92166,	-- Following Suit
							92164,	-- Murloc Madness
						},
						["qg"] = 250197,	-- Assistant Grgl-Grgl <"Priestess" of the "Loa of Murlocs">
						["coord"] = { 52.9, 60.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(263446),	-- Spare Murloc Suit (PQI!)
							--
							i(264474),	-- Loa Impostor's Brinefists
							i(264472),	-- Loa Impostor's Clawguards
							i(264471),	-- Loa Impostor's Gloves
							i(264473),	-- Loa Impostor's Tidegrips
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.10, {	-- No Fear
					q(92450, {	-- Growing Up is Hard
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 45.2, 69.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92451, {	-- I Think I Can
						["sourceQuests"] = { 92450 },	-- Growing Up is Hard
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 48.1, 67.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92452, {	-- Not According to Plan
						["sourceQuests"] = { 92451 },	-- I Think I Can
						["provider"] = { "o", 573714 },	-- Ani's Trinket Bag
						["coord"] = { 48.7, 66.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(587574 , {	-- Ani's Feathered Totem
								["coord"] = { 47.4, 63.5, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(259345) },	-- Ani's Feathered Totem (QI!)
							}),
							o(587576 , {	-- Ani's Scented Strobilus
								["coord"] = { 46.0, 62.0, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(259348) },	-- Ani's Scented Strobilus (QI!)
							}),
							o(587577, {	-- Ani's Carved Effigy
								["coord"] = { 45.3, 61.1, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(259350) },	-- Ani's Carved Effigy (QI!)
							}),
						},
					}),
					q(92453, {	-- Fearless
						["sourceQuests"] = { 92452 },	-- Not According to Plan
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 44.6, 60.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(264587) },	-- Ani's Trinket Bag
					}),
				}),
				header(HEADERS.AchCriteria, 61452.11, {	-- Bitter Honor
					q(93093, {	-- Gnarldin Trophies
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(256672, {	-- Gnarldin Trophies (QI!)
								-- All of these count as i:256672 when looted
								i(257084),	-- Bashed In Bark (QI!)
								i(257081),	-- Bloodied Spear Tip (QI!)
								i(257090),	-- Bone Belt (QI!)
								i(257086),	-- Chewed Remains (QI!)
								i(257087),	-- Crumbling Ring (QI!)
								i(257082),	-- Gnarldin Necklace (QI!)
								i(257080),	-- Rune-Carved Skull (QI!)
								i(257088),	-- Torn Bracer (QI!)
							}),
						},
					}),
					q(93094, {	-- Scavenged Victory
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(588832, {	-- Fallen Hunter
								["coords"] = {
									{ 26.8, 36.2, MAP.MIDNIGHT.ZULAMAN },	-- NPC:254239, faking being fallen
									{ 27.6, 35.1, MAP.MIDNIGHT.ZULAMAN },
									{ 28.1, 37.0, MAP.MIDNIGHT.ZULAMAN },
									{ 28.4, 35.0, MAP.MIDNIGHT.ZULAMAN },
									{ 28.5, 38.3, MAP.MIDNIGHT.ZULAMAN },
									{ 29.0, 36.4, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(256685) },	-- Hunter's Tablet (QI!)
							}),
						},
					}),
					q(93095, {	-- Gnarldin Fury
						["sourceQuests"] = {
							93093,	-- Gnarldin Trophies
							93094,	-- Scavenged Victory
						},
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93096, {	-- Amani Honor
						["sourceQuests"] = { 93095 },	-- Gnarldin Fury
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264462),	-- Tuskcarver's Bone Hammer
							i(264460),	-- Tuskcarver's Fang Knife
							i(264463),	-- Tuskcarver's Hunt Blade
							i(264461),	-- Tuskcarver's Ritual Maul
							i(264464),	-- Tuskcarver's Sharpstaff
							i(264467),	-- Tuskcarver's Shield
							i(264466),	-- Tuskcarver's Trophy
							i(264465),	-- Tuskcarver's War Brand
							i(269980),	-- Tuskcarver's Warglaive
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.12, {	-- The Sound of Her Voice
					q(93178, {	-- A Quiet Walk Interrupted
						["sourceQuests"] = { 86735 },	-- Paved in Ash	// I am sure this is a bug but this is currently accurate. -Exo
						["provider"] = { "n", 254716 },	-- Nerunda
						["coord"] = { 36.8, 25.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93179, {	-- Child-like Devotion
						["sourceQuests"] = { 93178 },	-- A Quiet Walk Interrupted
						["provider"] = { "n", 254716 },	-- Nerunda
						["coord"] = { 36.8, 25.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93180, {	-- Shrine Preparations
						["sourceQuests"] = { 93179 },	-- Child-like Devotion
						["provider"] = { "n", 254719 },	-- Kanza
						["coord"] = { 52.3, 32.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(619616, {	-- Thorncap
								["coords"] = {
									{ 51.3, 30.4, MAP.MIDNIGHT.ZULAMAN },
									{ 51.4, 30.6, MAP.MIDNIGHT.ZULAMAN },
									{ 51.8, 30.6, MAP.MIDNIGHT.ZULAMAN },
									{ 52.0, 30.6, MAP.MIDNIGHT.ZULAMAN },
									{ 52.7, 29.8, MAP.MIDNIGHT.ZULAMAN },
									{ 53.0, 30.6, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(265341) },	-- Thorncap (QI!)
							}),
						},
					}),
					q(93181, {	-- Temple and a Teapot
						["sourceQuests"] = { 93180 },	-- Shrine Preparations
						["provider"] = { "n", 258014 },	-- Kanza
						["coord"] = { 51.4, 30.6, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(265401) },	-- Antique Tuskarr Teapot (QI!)
					}),
					q(93182, {	-- Healing Homeward
						["sourceQuests"] = { 93181 },	-- Temple and a Teapot
						["provider"] = { "n", 258363 },	-- Kanza
						["coord"] = { 52.3, 32.2, MAP.MIDNIGHT.ZULAMAN },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.13, {	-- A Venomous History
					q(91406, {	-- Far from the Hinterlands
						["sourceQuests"] = { 92084 },	-- Halazzi's Guile
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91407, {	-- The Eye of the Loa
						["sourceQuests"] = { 91406 },	-- Far from the Hinterlands
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91563, {	-- Halazzi's Hunt
						["sourceQuests"] = { 91407 },	-- The Eye of the Loa
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91403, {	-- Probable Paralytic
						["sourceQuests"] = { 91407 },	-- The Eye of the Loa
						["provider"] = { "n", 250068 },	-- Loa Speaker Tobui
						["coord"] = { 32.2, 31.6, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(246621) },	-- Venomous Horn (QI!)
					}),
					q(91404, {	-- A Most Vile Venom
						["sourceQuests"] = { 91563 },	-- Halazzi's Hunt
						["provider"] = { "n", 250068 },	-- Loa Speaker Tobui
						["coord"] = { 32.2, 31.6, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(584793, {	-- Ritual Supplies
								["coord"] = { 40.4, 36.0, MAP.MIDNIGHT.ZULAMAN },
								["groups"] = { i(246681) },	-- Ritual Fang (QI!)
							}),
						},
					}),
					q(91405, {	-- Validating the Venom
						["sourceQuests"] = {
							91403,	-- Probable Paralytic
							91404,	-- A Most Vile Venom
						},
						["provider"] = { "n", 250068 },	-- Loa Speaker Tobui
						["coord"] = { 32.2, 31.6, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91408, {	-- Seeking Shadra
						["sourceQuests"] = { 91405 },	-- Validating the Venom
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91630, {	-- Stolen Sight
						["sourceQuests"] = { 91408 },	-- Seeking Shadra
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coords"] = {
							{ 39.1, 22.3, MAP.MIDNIGHT.ZULAMAN },
							{ 59.6, 57.2, 2583 },	-- Wit'Kalar Crypt
						},
						["groups"] = { i(246744) },	-- Eye of Shadra (QI!)
					}),
					q(91409, {	-- Dreaming of Spiders
						["sourceQuests"] = { 91630 },	-- Stolen Sight
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coords"] = {
							{ 39.1, 22.3, MAP.MIDNIGHT.ZULAMAN },
							{ 59.6, 57.2, 2583 },	-- Wit'Kalar Crypt
						},
					}),
					q(91411, {	-- Maisara Caverns: Deep in Maisara
						["sourceQuests"] = { 91409 },	-- Dreaming of Spiders
						["provider"] = { "n", 247251 },	-- Nija Torntusk
						["coords"] = {
							{ 38.8, 22.7, MAP.MIDNIGHT.ZULAMAN },
							{ 46.2, 71.9, 2583 },	-- Wit'Kalar Crypt
						},
						["groups"] = { i(246586) },	-- Shell of Shadra (QI!)
					}),
					q(91412, {	-- Return of the Venom Queen
						["sourceQuests"] = { 91411 },	-- Maisara Caverns: Deep in Maisara
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coords"] = {
							{ 38.7, 22.7, MAP.MIDNIGHT.ZULAMAN },
							{ 43.0, 71.9, 2583 },	-- Wit'Kalar Crypt
						},
					}),
					q(91410, {	-- Shared Loa
						["sourceQuests"] = { 91412 },	-- Return of the Venom Queen
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coords"] = {
							{ 38.7, 22.7, MAP.MIDNIGHT.ZULAMAN },
							{ 43.0, 71.9, 2583 },	-- Wit'Kalar Crypt
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.14, {	-- Beyond the Walls
					-- This entire Quest "Chain" is convoluted... A bunch of disjointed quests.
					q(93047, {	-- Butchery Basics
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 241072 },	-- Gijaniji
						["coord"] = { 45.6, 69.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(258890) },	-- Boar Carcass (QI!)
					}),
					q(93048, {	-- Got No Rhythm
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 254142 },	-- Iklani
						["coord"] = { 46.8, 66.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93049, {	-- Homework Support
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 254144 },	-- An'jali
						["coord"] = { 46.6, 68.0, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(613439, {	-- Dragonhawk Fern
								["coords"] = {
									{ 43.4, 70.1, MAP.MIDNIGHT.ZULAMAN },
									{ 43.5, 67.5, MAP.MIDNIGHT.ZULAMAN },
									{ 43.6, 66.6, MAP.MIDNIGHT.ZULAMAN },
									{ 44.3, 66.0, MAP.MIDNIGHT.ZULAMAN },
									{ 44.5, 68.5, MAP.MIDNIGHT.ZULAMAN },
									{ 44.6, 69.5, MAP.MIDNIGHT.ZULAMAN },
									{ 44.6, 70.6, MAP.MIDNIGHT.ZULAMAN },
									{ 44.9, 65.4, MAP.MIDNIGHT.ZULAMAN },
									{ 45.0, 66.9, MAP.MIDNIGHT.ZULAMAN },
									{ 45.4, 67.8, MAP.MIDNIGHT.ZULAMAN },
									{ 45.6, 69.6, MAP.MIDNIGHT.ZULAMAN },
									{ 45.9, 68.7, MAP.MIDNIGHT.ZULAMAN },
									{ 46.2, 68.3, MAP.MIDNIGHT.ZULAMAN },
									{ 46.4, 65.9, MAP.MIDNIGHT.ZULAMAN },
									{ 46.5, 67.4, MAP.MIDNIGHT.ZULAMAN },
									{ 47.6, 67.3, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(258892) },	-- Dragonhawk Fern Frond (QI!)
							}),
							o(613438, {	-- Shade Lily Cluster
								["coords"] = {
									{ 42.1, 67.3, MAP.MIDNIGHT.ZULAMAN },
									{ 42.9, 69.8, MAP.MIDNIGHT.ZULAMAN },
									{ 43.9, 64.8, MAP.MIDNIGHT.ZULAMAN },
									{ 43.9, 71.1, MAP.MIDNIGHT.ZULAMAN },
									{ 44.3, 67.8, MAP.MIDNIGHT.ZULAMAN },
									{ 45.4, 65.8, MAP.MIDNIGHT.ZULAMAN },
									{ 46.6, 68.6, MAP.MIDNIGHT.ZULAMAN },
									{ 46.9, 66.0, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(258891) },	-- Pristine Shade Lily (QI!)
							}),
						},
					}),
					q(93051, {	-- The Final Exam
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 255406 },	-- Recruit Dar'rak
						["coord"] = { 43.1, 67.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93050, {	-- Altar History
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 254146 },	-- Rakan
						["coord"] = { 43.5, 68.84, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(267005) },	-- Rakan's Totem (QI!)
					}),
				}),
				header(HEADERS.AchCriteria, 61452.15, {	-- Something Vile This Way Comes
					q(91833, {	-- Dirty Deeps
						["sourceQuests"] = { 86664 },	-- Seer or Sear
						["qg"] = 244591,	-- Vun'zarah
						["coord"] = { 38.6, 22.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(248814) },	-- Witherbark Supplies (PQI!)
					}),
					q(91835, {	-- Send Dem Home
						["sourceQuests"] = { 91833 },	-- Dirty Deeps
						["qg"] = 248838,	-- Dak'zor
						["coord"] = { 44.9, 36.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(248745) },	-- Hex Breaker (PQI!)
					}),
					q(91836, {	-- Respect de Totem
						["sourceQuests"] = { 91835 },	-- Send Dem Home
						["qg"] = 248838,	-- Dak'zor
						["coord"] = { 44.9, 36.6, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = { i(254430) },	-- Totem Remnant (QI!)
					}),
					q(91838, {	-- De Vile Diminished
						["sourceQuests"] = { 91836 },	-- Respect de Totem
						["qg"] = 248787,	-- Tan'zin
						["coord"] = { 44.9, 36.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(91840, {	-- One Will Not Rise
						["sourceQuests"] = { 91838 },	-- De Vile Diminished
						["qg"] = 249106,	-- Witherbark Scout (Dak'zor) (mobileNPC)
						["coord"] = { 47.1, 41.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(254778),	-- Altered Totem (QI!)
							i(250190),	-- Knife Priestess Hezzia's Head (QI!)
						},
					}),
					q(91839, {	-- Sacrifice Denied
						["sourceQuests"] = { 91840 },	-- One Will Not Rise
						["qg"] = 248838,	-- Dak'zor
						["coord"] = { 38.5, 22.3, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(264665),	-- Defiant Loa Platebody
							i(264664),	-- Hexbreaker Chain Hauberk
							i(264662),	-- Robe of the Knife Priestess
							i(264663),	-- Spiritdrain Vest of the Witherbark
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.16, {	-- River-Walkers of the Prowl
					q(93257, {	-- Revantusk at Risk
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 254488 },	-- Jak'zari
						["coord"] = { 45.9, 70.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93258, {	-- Crab Clues
						["sourceQuests"] = { 93257 },	-- Revantusk at Risk
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93260, {	-- Caging Crawlers
						["sourceQuests"] = { 93258 },	-- Crab Clues
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							o(614503, {	-- Crab Trap
								["coords"] = {
									{ 32.3, 84.2, MAP.MIDNIGHT.ZULAMAN },
									{ 33.3, 81.1, MAP.MIDNIGHT.ZULAMAN },
									{ 33.7, 83.3, MAP.MIDNIGHT.ZULAMAN },
									{ 34.8, 82.2, MAP.MIDNIGHT.ZULAMAN },
									{ 35.6, 81.7, MAP.MIDNIGHT.ZULAMAN },
									{ 37.5, 81.2, MAP.MIDNIGHT.ZULAMAN },
								},
								["groups"] = { i(264166) },	-- Void Artifact Shard (QI!)
							}),
						},
					}),
					q(93259, {	-- Clobbering Crawlers
						["sourceQuests"] = { 93258 },	-- Crab Clues
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(259471),	-- Mouthwatering Crab Meat (QI!)
						},
					}),
					q(93261, {	-- A Crab of Unusual Size
						["sourceQuests"] = {
							93259,	-- Clobbering Crawlers
							93260,	-- Caging Crawlers
						},
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 32.2, 83.8, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(260410),	-- Chipped Twilight's Blade Artifact (QI!)
							--
							i(263280),	-- Tidewrought Coif
							i(263281),	-- Tidewrought Greathelm
							i(263279),	-- Tidewrought Mask
							i(263278),	-- Tidewrought Veil
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.17, {	-- Bloodstains
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Lady Liadrin
					--	["name"] = "Stay awhile and listen: Lady Liadrin",
					--	["description"] = "Dialogue is available before accepting 'Personal History' (93440).",
					--	["sourceQuests"] = { 91062 },	-- Broken Bridges
					--	["provider"] = { "n", 258727 },	-- Lady Liadrin
					--	["coord"] = { 45.7, 65.4, MAP.MIDNIGHT.ZULAMAN },
					--}),
					--
					q(93440, {	-- Personal History
						["sourceQuests"] = { 91062 },	-- Broken Bridges
						["provider"] = { "n", 249653 },	-- Zul'jarra
						["coord"] = { 45.8, 65.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93432, {	-- Swords to Plowshares
						["sourceQuests"] = { 93440 },	-- Personal History
						["provider"] = { "n", 254783 },	-- Torundo the Grizzled
						["coord"] = { 46.1, 47.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = { i(259204) },	-- Raider Ash Remains (QI!)
					}),
					q(93433, {	-- Shrine, Sealed, Delivered
						["sourceQuests"] = { 93440 },	-- Personal History
						["provider"] = { "n", 254827 },	-- Elder Doru
						["coord"] = { 46.2, 47.5, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(93435, {	-- Four Instigators
						["sourceQuests"] = {
							93433,	-- Shrine, Sealed, Delivered
							93432,	-- Swords to Plowshares
						},
						["provider"] = { "n", 254783 },	-- Torundo the Grizzled
						["coord"] = { 45.4, 44.7, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
					}),
					q(93436, {	-- Hex the Innocent, Disrupt the Guilty
						["sourceQuests"] = {
							93433,	-- Shrine, Sealed, Delivered
							93432,	-- Swords to Plowshares
						},
						["provider"] = { "n", 254827 },	-- Elder Doru
						["coord"] = { 45.2, 44.9, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = { i(259967) },	-- Amani Hex Stave (QI!)
					}),
					q(93437, {	-- In Their Own Blood
						["sourceQuests"] = {
							93435,	-- Four Instigators
							93436,	-- Hex the Innocent, Disrupt the Guilty
						},
						["provider"] = { "n", 254783 },	-- Torundo the Grizzled
						["coord"] = { 45.9, 47.4, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
						["groups"] = {
							iensemble(264184, {	-- Arsenal: Heirlooms of Atal'Aman (COSMETIC!)
								i(265072),	-- Amani Fangstitch Quiver (COSMETIC!)
							}),
						},
					}),
				}),
			}),
			-- Altar of Blessings
			q(93792, {	-- Blessings of the Loa
				-- Exo Note: Quest completion is a criterion for ach:62270 (Altar of Blessings: One for Altar)
				["sourceQuests"] = { 91062 },	-- Broken Bridges
				["provider"] = { "n", 256510 },	-- Du'gal
				["coord"] = { 43.1, 69.2, MAP.MIDNIGHT.ZULAMAN },
			}),
			--
			q(94839, {	-- Blessings of Peril
				["provider"] = { "i", 263938 },	-- Idol of Peril (QS!)
			}),
			q(94910, {	-- Blessings of Growth
				["provider"] = { "i", 266440 },	-- Idol of Growth (QS!)
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.ZULAMAN, {
			n(QUESTS, {
				--During questing
				--q(89196),	-- Zone Choice Made (spellID 1254861), after accepting questID 86708 (The Gates of Zul'Aman) // seems like also fired on any quest that are sourced from Scouting Map and then it unflagging itself at somepoint during chain?
				--Love Triangle (questID 89233), as of 63728 you can have both flagged - pick up one, cancel quest and pick another one.
				q(91965),	-- if Zak'kash was chosen
				q(91964),	-- if Kagara was chosen
			}),
		}),
	}),
}));
