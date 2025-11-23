---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MIDNIGHT, {
	m(ZULAMAN_MID, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41803, {	-- For Zul'Aman!
				header(HEADERS.AchCriteria, 41803.01, {	-- Dis Was Our Land
					q(86708, {	-- The Gates of Zul'Aman
						--["sourceQuests"] = { 86735 },	-- Paved in Ash (Alex TODO: it (for whatever reason) fire 86736 (Paved in Ash) on alpha, fix whatever will be proper one on beta stage
						["provider"] = { "n", 240523 },	-- Scouting Map
						["coord"] = { 45.4, 70.3, SILVERMOON_CITY_MID },
					}),
					q(86710, {	-- The Line Must be Drawn Here
						["sourceQuests"] = { 86708 },	-- The Gates of Zul'Aman
						["provider"] = { "n", 236436 },	-- Lady Liadrin
						["coord"] = { 60.1, 81.5, SILVERMOON_CITY_MID },
					}),
					q(90749, {	-- Our Mutual Enemy
						["sourceQuests"] = { 86710 },	-- The Line Must be Drawn Here
						["provider"] = { "n", 236436 },	-- Lady Liadrin
						["coord"] = { 60.1, 81.5, 2536 },	-- Atal'Aman
					}),
					q(86868, {	-- Goodwill Tour
						["sourceQuests"] = { 90749 },	-- Our Mutual Enemy
						["provider"] = { "n", 236485 },	-- Lady Liadrin
						["coord"] = { 5.5, 47.0, 2536 },	-- Atal'Aman
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
						["coord"] = { 5.7, 47.8, 2536 },	-- Atal'Aman
					}),
					q(86717, {	-- Show Us Your Worth
						["sourceQuests"] = {
							86711,	-- Amani Clarion Call
							86868,	-- Goodwill Tour
						},
						["provider"] = { "n", 236559 },	-- Zul'Jarra
						["coord"] = { 46.3, 48.8, 2536 },	-- Atal'Aman
					}),
					q(86719, {	-- Important Amani
						["sourceQuests"] = {
							86711,	-- Amani Clarion Call
							86868,	-- Goodwill Tour
						},
						["provider"] = { "n", 236558 },	-- Zul'jan
						["coord"] = { 46.3, 48.4, 2536 },	-- Atal'Aman
						["groups"] = {
							o(539207, {	-- 
								i(237768),	-- Hash'ey Staff (QI!)
							}),
						},
					}),
					q(86716, {	-- Armed by Light
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236522 },	-- Zul'jan
						["coord"] = { 16.6, 20.5, 2536 },	-- Atal'Aman
						["groups"] = {
							i(237767),	-- Lightwood Weapon (QI!)
							i(248555),	-- 
							i(248556),	-- 
							i(248557),	-- 
							i(248558),	-- 
							i(248559),	-- 
							i(248560),	-- 
							i(248561),	-- Stonebough Hatchet
							i(248562),	-- Stonebough Spear
						},
					}),
					q(86721, {	-- Everything We Worked For
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236522 },	-- Zul'jan
						["coord"] = { 16.6, 20.5, 2536 },	-- Atal'Aman
					}),
					q(86712, {	-- The Amani Stand Strong
						["sourceQuests"] = {
							86719,	-- Important Amani
							86717,	-- Show Us Your Worth
						},
						["provider"] = { "n", 236540 },	-- Zul'jan
						["coord"] = { 22.5, 79.9, 2536 },	-- Atal'Aman
						["groups"] = {
							i(237501),	-- Lightwood Weapon (QI!)
						},
					}),
					q(86715, {	-- Rituals Cut Short
						["sourceQuests"] = {
							86716,	-- Armed by Light
							86721,	-- Everything We Worked For
						},
						["provider"] = { "n", 236542 },	-- Lady Liadrin
						["coord"] = { 23.1, 79.8, 2536 },	-- Atal'Aman
					}),
					q(86718, {	-- Twilight Bled
						["sourceQuests"] = {
							86716,	-- Armed by Light
							86721,	-- Everything We Worked For
						},
						["provider"] = { "n", 236541 },	-- Zul'jarra
						["coord"] = { 23.1, 79.8, 2536 },	-- Atal'Aman
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
							--??,	--
						},
						["provider"] = { "n", 236587 },	-- Zul'jarra
						["coord"] = { 47.6, 46.8, 2536 },	-- Atal'Aman
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
						["coord"] = { 47.8, 47.8, 2536 },	-- Atal'Aman
						["groups"] = {
							--spell(1239146),	-- Guest of Zul'Aman
						},
					}),
					q(86723, {	-- Isolation
						["sourceQuests"] = { 86722 },	-- Heart of the Amani
						["provider"] = { "n", 236602 },	-- Zul'jarra
						["coord"] = { 42.6, 66.9, ZULAMAN_MID },
					}),
					q(86652, {	-- Left in the Shadows
						["sourceQuests"] = { 86723 },	-- Isolation
						["provider"] = { "n", 236659 },	-- Zul'jarra
						["coord"] = { 45.7, 65.5, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 41803.02, {	-- Path of de Hash'ey
					q(86653, {	-- The Path of the Amani
						["sourceQuests"] = { 86723 },	-- Isolation
						["provider"] = { "n", 236126 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, ZULAMAN_MID },
					}),
					------ Stay awhile and listen ------
					hqt(91060, {	-- Stay awhile and listen: Loa Speaker Kinduru
						["name"] = "Stay awhile and listen: Loa Speaker Kinduru",
						["description"] = "Dialogue becomes available during 'The Path of the Amani' (86653).",
						["sourceQuests"] = { 86652 },	-- Left in the Shadows
						["provider"] = { "n", 244479 },	-- Loa Speaker Kinduru
						["coord"] = { 43.8, 68.4, ZULAMAN_MID },
					}),
					--
					q(86654, {	-- Gnarldin Bashing
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236143 },	-- Lady Liadrin
						["coord"] = { 51.6, 70.7, ZULAMAN_MID },
					}),
					q(89334, {	-- Ahead of the Issue
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236140 },	-- Zul'jarra
						["coord"] = { 51.6, 70.8, ZULAMAN_MID },
						["groups"] = {
							i(260461),	-- Brulagh's Torque
							i(239083),	-- Head of Brulagh the Crusher (QI!)
							i(243188),	-- Head of Cragward Gaahl (QI!)
							i(243189),	-- Head of Pulverizer Helthra (QI!)
						},
					}),
					q(86655, {	-- De Ancient Path
						["sourceQuests"] = { 86653 },	-- The Path of the Amani
						["provider"] = { "n", 236140 },	-- Zul'jarra
						["coord"] = { 51.6, 70.8, ZULAMAN_MID },
						["groups"] = {
							i(248570),	-- Skyblessed Breastplate
							i(248569),	-- Skyblessed Chainmail
							i(248568),	-- Skyblessed Vest
							i(248567),	-- Skyblessed Vestment
						},
					}),
					q(86656, {	-- Brutal Feast
						["sourceQuests"] = {
							89334,	-- Ahead of the Issue
							86655,	-- De Ancient Path
							86654,	-- Gnarldin Bashing
						},
						["provider"] = { "n", 236147 },	-- Zul'jarra
						["coord"] = { 51.9, 75.9, ZULAMAN_MID },
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
					--	["coord"] = { 52.4, 81.0, ZULAMAN_MID },
					--}),
					--
					q(86809, {	-- Test of Conviction
						["sourceQuests"] = { 86656 },	-- Brutal Feast
						["provider"] = { "n", 244422 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, ZULAMAN_MID },
						["groups"] = {
							--spell(1239215),	-- Blessing: Akil'zon's Gale
							--spell(1239206),	-- Winds of Akil'zon
						},
					}),
					q(86657, {	-- Shadebasin Watch
						["sourceQuests"] = { 86809 },	-- Brutal Feast
						["provider"] = { "n", 236141 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, ZULAMAN_MID },
					}),
					------ Stay awhile and listen ------
					hqt(92125, {	-- Stay awhile and listen: Zul'jarra
						["name"] = "Stay awhile and listen: Zul'jarra",
						["description"] = "Dialogue becomes available during 'Shadebasin Watch' (86657).",
						["sourceQuests"] = { 86809 },	-- Test of Conviction
						["provider"] = { "n", 236141 },	-- Zul'jarra
						["coord"] = { 52.4, 81.0, ZULAMAN_MID },
					}),
					--
					q(86660, {	-- Rescue from the Shadows
						["sourceQuests"] = { 86657 },	-- Shadebasin Watch
						["provider"] = { "n", 244438 },	-- Zul'jarra
						["coord"] = { 44.1, 34.5, ZULAMAN_MID },
					}),
					q(86658, {	-- The Crypt in the Mist
						["sourceQuests"] = { 86657 },	-- Shadebasin Watch
						["provider"] = { "n", 244438 },	-- Zul'jarra
						["coord"] = { 44.1, 34.5, ZULAMAN_MID },
						["groups"] = {
							i(248573),	-- Spiritwarden's Cinch
							i(248571),	-- Spiritwarden's Cord
							i(248572),	-- Spiritwarden's Sash
							i(248574),	-- Spiritwarden's Waistguard
						},
					}),
					q(86659, {	-- Breaching the Mist
						["sourceQuests"] = {
							86660,	-- Rescue from the Shadows
							86658,	-- The Crypt in the Mist
						},
						["provider"] = { "n", 244588 },	-- Zul'jarra
						["coord"] = { 36.8, 35.0, ZULAMAN_MID },
						["groups"] = {
							i(248576),	-- Prowlers Cloth
							i(248575),	-- Prowlers Shawl
						},
					}),
					q(92084, {	-- Halazzi's Guile
						["sourceQuests"] = { 86659 },	-- Breaching the Mist
						["provider"] = { "n", 236155 },	-- Zul'jarra
						["coord"] = { 32.4, 31.6, ZULAMAN_MID },
						["groups"] = {
							--Alex TODO: check if Blizzard removed this as dupe reward from it
							i(248576),	-- Prowlers Cloth
							i(248575),	-- Prowlers Shawl
							--spell(1239217),	-- Blessing: Halazzi's Guile
						},
					}),
					q(86661, {	-- Coals of a Dead Loa
						["sourceQuests"] = { 92084 },	-- Halazzi's Guile
						["provider"] = { "n", 236155 },	-- Zul'jarra
						["coord"] = { 32.4, 31.6, ZULAMAN_MID },
					}),
					q(86808, {	-- The Riddled Speaker
						["sourceQuests"] = { 86661 },	-- Coals of a Dead Loa
						["provider"] = { "n", 244592 },	-- Zul'jarra
						["coord"] = { 38.5, 22.5, ZULAMAN_MID },
					}),
					q(86663, {	-- Embers to a Flame
						["sourceQuests"] = { 86808 },	-- The Riddled Speaker
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, ZULAMAN_MID },
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Lady Liadrin
					--	["name"] = "Stay awhile and listen: Lady Liadrin",
					--	["description"] = "Dialogue becomes available during 'Embers to a Flame' (86663).",
					--	["sourceQuests"] = { 86808 },	-- The Riddled Speaker
					--	["provider"] = { "n", 236163 },	-- Lady Liadrin
					--	["coord"] = { 55.0, 18.4, ZULAMAN_MID },
					--}),
					--
					q(86664, {	-- Seer or Sear
						["sourceQuests"] = { 86663 },	-- Embers to a Flame
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, ZULAMAN_MID },
						["groups"] = {
							i(248578),	-- Band of Impatience
							i(248577),	-- Ring of Doubt
						},
					}),
					q(86665, {	-- Face in the Fire
						["sourceQuests"] = { 86664 },	-- Seer or Sear
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, ZULAMAN_MID },
					}),
					q(90772, {	-- The Flames Rise Higher
						["sourceQuests"] = { 86665 },	-- Face in the Fire
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, ZULAMAN_MID },
						["groups"] = {
							spell(1239220),	-- Blessing: Jan'alai's Everburn
						},
					}),
					q(86666, {	-- In the Shadow of Rebirth
						["sourceQuests"] = { 90772 },	-- The Flames Rise Higher
						["provider"] = { "n", 236162 },	-- Zul'jarra
						["coord"] = { 55.0, 18.3, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 41803.03, {	-- Where War Slumbers
					q(86681, {	-- A Taste of Vengeance
						["sourceQuests"] = { 86666 },	-- In the Shadow of Rebirth
						["provider"] = { "n", 240186 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, ZULAMAN_MID },
					}),
					q(86682, {	-- Waking de Bear
						["sourceQuests"] = { 86681 },	-- A Taste of Vengeance
						["provider"] = { "n", 240186 },	-- Zul'jarra
						["coord"] = { 43.8, 68.3, ZULAMAN_MID },
					}),
					q(91958, {	-- Den of Nalorakk: Unforgiven
						["sourceQuests"] = { 86681 },	-- A Taste of Vengeance
						["provider"] = { "n", 240215 },	-- Zul'jarra
						["coord"] = { 33.6, 78.8, ZULAMAN_MID },
						["groups"] = {
							--spell(1239223),	-- Blessing: Nalorakk's Pressure
						},
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Zul'jarra
					--	["name"] = "Stay awhile and listen: Zul'jarra",
					--	["description"] = "Dialogue becomes available during 'Den of Nalorakk: Unforgiven' (91958).",
					--	["sourceQuests"] = { 86682 },	-- Waking de Bear
					--	["provider"] = { "n", 240215 },	-- Zul'jarra
					--	["coord"] = { 33.6, 78.8, ZULAMAN_MID },
					--}),
					--
				}),
				header(HEADERS.AchCriteria, 41803.04, {	-- De Amani Never Die
					q(86683, {	-- Hash'ey Away
						["sourceQuests"] = { 91958 },	-- Den of Nalorakk: Unforgiven
						["provider"] = { "n", 240215 },	-- Zul'jarra
						["coord"] = { 31.6, 83.9, ZULAMAN_MID },
					}),
					q(86684, {	-- The Blade's Edge
						["sourceQuests"] = { 86683 },	-- Hash'ey Away
						["provider"] = { "n", 240216 },	-- Zul'jarra
						["coord"] = { 43.5, 68.8, ZULAMAN_MID },
					}),
					q(86687, {	-- Conduit Crisis
						["sourceQuests"] = { 86684 },	-- The Blade's Edge
						["provider"] = { "n", 240033 },	-- Zul'jarra
						["coord"] = { 28.4, 77.4, ZULAMAN_MID },
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
						["coord"] = { 28.4, 77.4, ZULAMAN_MID },
					}),
					q(86686, {	-- Light Indiscriminate
						["sourceQuests"] = { 86684 },	-- The Blade's Edge
						["provider"] = { "n", 240039 },	-- Lady Liadrin
						["coord"] = { 28.4, 77.4, ZULAMAN_MID },
					}),
					q(91001, {	-- Clear de Way
						["sourceQuests"] = {
							86687,	-- Conduit Crisis
							86685,	-- Chip and Shatter
							86686,	-- The Blade's Edge
						},
						["provider"] = { "n", 245270 },	-- Zul'jarra
						["coord"] = { 25.7, 77.6, ZULAMAN_MID },
					}),
					q(86692, {	-- Blade Shattered
						["sourceQuests"] = { 91001 },	-- Clear de Way
						["provider"] = { "n", 240034 },	-- Zul'jarra
						["coord"] = { 22.5, 77.4, ZULAMAN_MID },
						["groups"] = {
							i(248583),	-- Drum of Renewed Bonds
						},
					}),
					q(86693, {	-- De Legend of Hash'ey
						["sourceQuests"] = { 86692 },	-- Blade Shattered
						["provider"] = { "n", 240037 },	-- Zul'jarra
						["coord"] = { 21.4, 77.4, ZULAMAN_MID },
					}),
					q(91062, {	-- Broken Bridges
						["sourceQuests"] = { 86693 },	-- De Legend of Hash'ey
						["provider"] = { "n", 249653 },	-- Zul'jarra
						["coord"] = { 45.7, 65.5, ZULAMAN_MID },
					}),
					------ Stay awhile and listen ------
					hqt(92108, {	-- Stay awhile and listen: Zul'jan
						["name"] = "Stay awhile and listen: Zul'jan",
						["description"] = "Dialogue becomes available during 'Broken Bridges' (91062).",
						["sourceQuests"] = { 86693 },	-- De Legend of Hash'ey
						["provider"] = { "n", 245646 },	-- Zul'jan
						["coord"] = { 51.3, 54.4, ZULAMAN_MID },
					}),
					--
				}),
			}),
			--Alex TODO: seems like next zone related?
			q(91087, {	-- Reports Returned
				["sourceQuests"] = { 91062 },	-- Broken Bridges
				["provider"] = { "n", 241308 },	-- Lady Liadrin
				["coord"] = { 50.8, 54.5, ZULAMAN_MID },
			}),
			q(91967, {	-- You Know This Evil?
				["sourceQuests"] = { 91087 },	-- Reports Returned
				["provider"] = { "n", 235787 },	-- Lor'themar Theron
				["coord"] = { 45.4, 70.3, SILVERMOON_CITY_MID },
				--Alex TODO: further progress locked due to vanishing quest npcs
			}),
			--
			n(BONUS_OBJECTIVES, {
				q(91040, {	-- Vexatious Vilebranch
					["coord"] = { 36.7, 34.9, ZULAMAN_MID },
				}),
			}),
			--Sojourner
			header(HEADERS.Achievement, 61452, {	-- Sojourner of Zul'Aman
				header(HEADERS.AchCriteria, 61452.01, {	-- Healing the Spirit
					q(91206, {	-- Loa Disturbance
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 254665 },	-- Elder Doru
						["coord"] = { 43.1, 67.9, ZULAMAN_MID },
					}),
					q(87254, {	-- Curse Cleanse
						["sourceQuests"] = { 91206 },	-- Loa Disturbance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, ZULAMAN_MID },
						["groups"] = {
							i(245982),	-- Large Pango Liver (QI!)
						},
					}),
					q(87256, {	-- Alternative Medicine
						["sourceQuests"] = { 91206 },	-- Loa Disturbance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, ZULAMAN_MID },
						["groups"] = {
							o(516293, {	-- 
								i(235912),	-- Bloodclot Branch (QI!)
							}),
						},
					}),
					q(87267, {	-- Demands Unmet
						["sourceQuests"] = {
							87256,	-- Alternative Medicine
							87254,	-- Curse Cleanse
						},
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, ZULAMAN_MID },
						["groups"] = {
							o(554628, {	-- 
								i(246210),	-- Shattered Staff (QI!)
							}),
						},
					}),
					q(87268, {	-- Required Repentance
						["sourceQuests"] = { 87267 },	-- Demands Unmet
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, ZULAMAN_MID },
					}),
					q(87317, {	-- Denial Denied
						["sourceQuests"] = { 87268 },	-- Required Repentance
						["provider"] = { "n", 237953 },	-- Loa Speaker Sij'ta
						["coord"] = { 40.5, 49.4, ZULAMAN_MID },
					}),
					q(92531, {	-- The Medicine Loa's Shrine
						["sourceQuests"] = { 87317 },	-- Denial Denied
						["provider"] = { "n", 237956 },	-- Kulzi
						["coord"] = { 38.8, 44.8, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.02, {	-- [PH] Logging Camp
					q(88986, {	-- Blind The Bandits
						--["sourceQuests"] = { XXX },	-- ??
						["provider"] = { "n", 240521 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.3, ZULAMAN_MID },
						["groups"] = {
							i(238962),	-- Lightwood Splinters (QI!)
						},
					}),
					q(88987, {	-- Salvaged Sabotage
						--["sourceQuests"] = { XXX },	-- ??
						["provider"] = { "n", 240521 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.3, ZULAMAN_MID },
						["groups"] = {
							o(525374, {	--
								i(238964),	-- Stolen Equipment (QI!)
							}),
						},
					}),
					q(88988, {	-- The Artisan's Apprentice
						["sourceQuests"] = {
							88986,	-- Blind The Bandits
							88987,	-- Salvaged Sabotage
						},
						["provider"] = { "n", 241219 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.5, ZULAMAN_MID },
						["groups"] = {
							o(527670, {	--
								i(239138),	-- Lightwood Chunk (QI!)
							}),
						},
					}),
					q(88989, {	-- Another One Bites the Sawdust
						["sourceQuests"] = { 88988 },	-- The Artisan's Apprentice
						["provider"] = { "n", 241219 },	-- Woodcrafter Azai
						["coord"] = { 28.4, 27.5, ZULAMAN_MID },
						["groups"] = {
							o(531204, {	--
								i(241612),	-- Lightwood Javelin (QI!)
							}),
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.03, {	-- Love Triangle
					q(89231, {	-- A Fighter Not a Lover
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 240977 },	-- Zak'kash
						["coord"] = { 43.9, 66.0, ZULAMAN_MID },
						["groups"] = {
							i(249236),	-- Amani Headdress (QI!)
							o(567976, {	-- 
								i(249231),	-- Eagle Feather (QI!)
							}),
						},
					}),
					q(89230, {	-- A Lover Not a Fighter
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 240976 },	-- Kagara
						["coord"] = { 44.0, 66.2, ZULAMAN_MID },
						["groups"] = {
							i(249271),	-- Gnarldin Necklace (QI!)
						},
					}),
					q(89233, {	-- Love Triangle
						["sourceQuests"] = {
							89231,	-- A Fighter Not a Lover
							89230,	-- A Lover Not a Fighter
						},
						["provider"] = { "n", 240975 },	-- Namaji
						["coord"] = { 44.4, 65.7, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.04, {	-- Sorrowing Kin
					q(89565, {	-- The Path of Mourning
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 242014 },	-- Chana
						["coord"] = { 45.4, 69.7, ZULAMAN_MID },
					}),
					q(89503, {	-- Somber Siblings
						["sourceQuests"] = { 89565 },	-- The Path of Mourning
						["provider"] = { "n", 247424 },	-- Chana
						["coord"] = { 45.9, 72.4, ZULAMAN_MID },
						["groups"] = {
							o(528004, {	-- 
								i(239447),	-- Weeping Spores (QI!)
							}),
						},
					}),
					q(89506, {	-- Strong Ties
						["sourceQuests"] = { 89503 },	-- Somber Siblings
						["provider"] = { "n", 247425 },	-- Chana (mobileNPC)
						["groups"] = {
							i(239480),	-- Resilient Sinew (QI!)
						},
					}),
					q(89559, {	-- Reasonless Worship
						["sourceQuests"] = { 89506 },	-- Strong Ties
						["provider"] = { "n", 247425 },	-- Chana (mobileNPC)
						["groups"] = {
							o(528071, {	-- 
								i(239494),	-- Shrine Piece (QI!)
							}),
						},
					}),
					q(89513, {	-- Kindling Aplenty
						["sourceQuests"] = { 89506 },	-- Strong Ties
						["provider"] = { "n", 247425 },	-- Chana (mobileNPC)
						["groups"] = {
							o(528034, {	-- 
								i(239483),	-- Fallen Branch (QI!)
							}),
						},
					}),
					q(89560, {	-- A Quiet Farewell
						["sourceQuests"] = {
							89513,	-- Kindling Aplenty
							89559,	-- Reasonless Worship
						},
						["provider"] = { "n", 247425 },	-- Chana (mobileNPC)
					}),
				}),
				header(HEADERS.AchCriteria, 61452.05, {	-- [TODO: missing name, some quest in criteria wrapper could be not from it]
					q(90481, {	-- I Have a Permit
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 242383 },	-- Seeker Crikkash
						["coord"] = { 46.3, 26.1, ZULAMAN_MID },
					}),
					q(90484, {	-- Sightseeing Stegadon
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242393 },	-- Trishe
						["coord"] = { 47.3, 26.1, ZULAMAN_MID },
					}),
					q(90482, {	-- Cuisine Connection
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242394 },	-- Amaxel
						["coord"] = { 47.2, 24.6, ZULAMAN_MID },
						["groups"] = {
							i(241013),	-- Zapgut Eel Stomach (QI!)
							o(529683, {	-- 
								i(241014),	-- Blisterskin Kelp (QI!)
							}),
						},
					}),
					q(90483, {	-- A Witherbark Story
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, ZULAMAN_MID },
					}),
					q(90485, {	-- Afterthought Artifacts
						["sourceQuests"] = { 90481 },	-- I Have a Permit
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, ZULAMAN_MID },
						["groups"] = {
							o(572498, {	-- 
								i(241615),	-- Lost Amani Trinket (QI!)
							}),
							o(572428, {	-- 
								i(251075),	-- Lost Amani Bolt (QI!)
							}),
							o(531227, {	-- 
								i(251272),	-- Lost Amani Oar (QI!)
							}),
							o(531213, {	-- 
								i(241614),	-- Old Amani Pot (QI!)
							}),
						},
					}),
					q(90486, {	-- Dangerous Delicacies
						["sourceQuests"] = { 90482 },	-- Cuisine Connection
						["provider"] = { "n", 242394 },	-- Amaxel
						["coord"] = { 47.2, 24.6, ZULAMAN_MID },
					}),
					q(90568, {	-- Unlikely Friends
						["sourceQuests"] = {
							90483,	-- A Witherbark Story
							90485,	-- Afterthought Artifacts
						},
						["provider"] = { "n", 242391 },	-- Seeker Crikkash
						["coord"] = { 47.3, 24.4, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.06, {	-- The Voice of Nalorakk
					q(91813, {	-- The Spiritpaw
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 248657 },	-- Pel'na Torntusk
						["coord"] = { 33.6, 78.8, ZULAMAN_MID },
					}),
					q(91747, {	-- Not Quite Nalorakk
						["sourceQuests"] = { 91813 },	-- The Spiritpaw
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, ZULAMAN_MID },
						["groups"] = {
							i(248300),	-- Nalorakk Trinket (QI!)
						},
					}),
					q(91748, {	-- Too Much Twilight
						["sourceQuests"] = { 91813 },	-- The Spiritpaw
						["provider"] = { "n", 248123 },	-- Fleeg
						["coord"] = { 41.3, 80.1, ZULAMAN_MID },
					}),
					q(91749, {	-- It's Just Not Right
						["sourceQuests"] = {
							91747,	-- Not Quite Nalorakk
							91748,	-- Too Much Twilight
						},
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, ZULAMAN_MID },
						["groups"] = {
							o(566020 , {	-- 
								i(248659),	-- Groffa's Treasures (QI!)
							}),
						},
					}),
					q(93734, {	-- Precious Trinkets
						["sourceQuests"] = { 91749 },	-- It's Just Not Right
						["provider"] = { "n", 248121 },	-- Furgh
						["coord"] = { 41.4, 80.1, ZULAMAN_MID },
					}),
					q(91750, {	-- Perils of Trust
						["sourceQuests"] = { 93734 },	-- Precious Trinkets
						["provider"] = { "n", 248123 },	-- Fleeg
						["coord"] = { 41.3, 80.1, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.07, {	-- Reclaiming de Honor
					q(92492, {	-- Honorin' de Sacrifice
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 245664 },	-- Lilaju
						["coord"] = { 33.6, 78.8, ZULAMAN_MID },
					}),
					q(92495, {	-- Disruptin' de Blade
						["sourceQuests"] = { 92492 },	-- Honorin' de Sacrifice
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 26.1, 64.5, ZULAMAN_MID },
					}),
					q(92493, {	-- What Remains of Idago
						["sourceQuests"] = { 92492 },	-- Honorin' de Sacrifice
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 26.1, 64.5, ZULAMAN_MID },
						["groups"] = {
							o(574576 , {	-- 
								i(252134),	-- Idago's Warspear (QI!)
							}),
							--o(XXXX, {	-- 
								i(252136),	-- Idago's Letter (QI!)
							--}),
							o(574585 , {	-- 
								i(252135),	-- Idago's Banner (QI!)
							}),
						},
					}),
					q(92496, {	-- Spears Against de Shadow
						["sourceQuests"] = {
							92495,	-- Disruptin' de Blade
							92493,	-- What Remains of Idago
						},
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 22.6, 63.9, ZULAMAN_MID },
					}),
					q(92497, {	-- Simply Magical
						["sourceQuests"] = {
							92495,	-- Disruptin' de Blade
							92493,	-- What Remains of Idago
						},
						["provider"] = { "n", 251522 },	-- Idago
						["coord"] = { 21.2, 63.4, ZULAMAN_MID },
						["groups"] = {
							o(580011, {	-- 
								i(260406),	-- Page of Pain (QI!)
							}),
							o(580012, {	-- 
								i(260407),	-- Page of Binding (QI!)
							}),
						},
					}),
					q(92499, {	-- The Wisest Leaders Follow
						["sourceQuests"] = {
							92497,	-- Simply Magical
							92496,	-- Spears Against de Shadow
						},
						["provider"] = { "n", 251669 },	-- Lilaju
						["coord"] = { 22.6, 63.9, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.08, {	-- Vengeance for Tolbani
					q(91069, {	-- Vengeance for Tolbani
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, ZULAMAN_MID },
					}),
					q(91070, {	-- Reclaim The Goods
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, ZULAMAN_MID },
						["groups"] = {
							o(548731, {	-- 
								i(245588),	-- Food Provisions (QI!)
							}),
						},
					}),
					q(91071, {	-- The Menace of Atal'Abasi
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, ZULAMAN_MID },
					}),
					q(91556, {	-- Loa's Flame
						["sourceQuests"] = {
							91070,	-- Reclaim The Goods
							91071,	-- The Menace of Atal'Abasi
							91069,	-- Vengeance for Tolbani
						},
						["provider"] = { "n", 245669 },	-- Jehnira
						["coord"] = { 53.1, 62.8, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.09, {	-- Loa of Murlocs
				}),
				header(HEADERS.AchCriteria, 61452.10, {	-- No Fear
					q(92450, {	-- Growing Up is Hard
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 45.2, 69.8, ZULAMAN_MID },
					}),
					q(92451, {	-- I Think I Can
						["sourceQuests"] = { 92450 },	-- Growing Up is Hard
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 48.1, 67.6, ZULAMAN_MID },
					}),
					q(92452, {	-- Not According to Plan
						["sourceQuests"] = { 92451 },	-- I Think I Can
						--["provider"] = { "o", XXXX },	-- Ani's Trinket Bag
						["coord"] = { 48.7, 66.1, ZULAMAN_MID },
						["groups"] = {
							o(587574 , {	-- 
								i(259345),	-- Ani's Feathered Totem (QI!)
							}),
							o(587576 , {	-- 
								i(259348),	-- Ani's Scented Strobilus (QI!)
							}),
							o(587577, {	-- 
								i(259350),	-- Ani's Carved Effigy (QI!)
							}),
						},
					}),
					q(92453, {	-- Fearless
						["sourceQuests"] = { 92452 },	-- Not According to Plan
						["provider"] = { "n", 251258 },	-- Ani
						["coord"] = { 44.6, 60.5, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.11, {	-- Bitter Honor
					q(93093, {	-- Gnarldin Trophies
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, ZULAMAN_MID },
						["groups"] = {
							i(257084),	-- Bashed In Bark (QI!)
							i(257090),	-- Bone Belt (QI!)
							i(257086),	-- Chewed Remains (QI!)
							i(257087),	-- Crumbling Ring (QI!)
							i(257082),	-- Gnarldin Necklace (QI!)
							i(256672),	-- Gnarldin Trophies (QI!)
							i(257080),	-- Rune-Carved Skull (QI!)
							i(257088),	-- Torn Bracer (QI!)
						},
					}),
					q(93094, {	-- Scavenged Victory
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, ZULAMAN_MID },
						["groups"] = {
							o(588832, {	--
								i(256685),	-- Hunter's Tablet (QI!)
							}),
						},
					}),
					q(93095, {	-- Gnarldin Fury
						["sourceQuests"] = {
							93093,	-- Gnarldin Trophies
							93094,	-- Scavenged Victory
						},
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, ZULAMAN_MID },
					}),
					q(93096, {	-- Amani Honor
						["sourceQuests"] = { 93095 },	-- Gnarldin Fury
						["provider"] = { "n", 253997 },	-- Kel'venko
						["coord"] = { 28.9, 33.5, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.12, {	-- The Sound of Her Voice
					q(93178, {	-- A Quiet Walk Interrupted
						--["sourceQuests"] = { XXX },	-- ??
						["provider"] = { "n", 254716 },	-- Nerunda
						["coord"] = { 36.7, 25.1, ZULAMAN_MID },
						["groups"] = {
							--o(XXX, {
								i(265611),	-- Broken Picnic Basket (QI!)
							--}),
							o(616571, {
								i(265626),	-- Shattered Teapot (QI!)
							}),
						},
					}),
					q(93179, {	-- Child-like Devotion
						["sourceQuests"] = { 93178 },	-- A Quiet Walk Interrupted
						["provider"] = { "n", 254716 },	-- Nerunda
						["coord"] = { 36.7, 25.1, ZULAMAN_MID },
					}),
					q(93180, {	-- Shrine Preparations
						["sourceQuests"] = { 93179 },	-- Child-like Devotion
						["provider"] = { "n", 254719 },	-- Kanza
						["coord"] = { 52.3, 32.2, ZULAMAN_MID },
						["groups"] = {
							o(619616, {
								i(265341),	-- Thorncap (QI!)
							}),
						},
					}),
					q(93181, {	-- Temple and a Teapot
						["sourceQuests"] = { 93180 },	-- Shrine Preparations
						["provider"] = { "n", 258014 },	-- Kanza
						["coord"] = { 51.4, 30.6, ZULAMAN_MID },
						["groups"] = {
							i(265401),	-- Antique Tuskarr Teapot (QI!)
						},
					}),
					q(93182, {	-- Healing Homeward
						["sourceQuests"] = { 93181 },	-- Temple and a Teapot
						["provider"] = { "n", 258363 },	-- Kanza
						["coord"] = { 52.3, 32.1, ZULAMAN_MID },
						["groups"] = {
							--spell(1276571),	-- Blessings of Children
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61452.13, {	-- A Venomous History
					q(91406, {	-- Far from the Hinterlands
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, ZULAMAN_MID },
					}),
					q(91407, {	-- The Eye of the Loa
						["sourceQuests"] = { 91406 },	-- Far from the Hinterlands
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, ZULAMAN_MID },
					}),
					q(91563, {	-- Halazzi's Hunt
						["sourceQuests"] = { 91407 },	-- The Eye of the Loa
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, ZULAMAN_MID },
					}),
					q(91404, {	-- A Most Vile Venom
						["sourceQuests"] = { 91563 },	-- Halazzi's Hunt
						["provider"] = { "n", 246999 },	-- Loa Speaker Tobui
						["coord"] = { 32.3, 31.6, ZULAMAN_MID },
						["groups"] = {
							o(584793, {	-- 
								i(246681),	-- Ritual Fang (QI!)
							}),
						},
					}),
					q(91403, {	-- Probable Paralytic
						["sourceQuests"] = { 91407 },	-- The Eye of the Loa (TODO: this quest was up when you come at this place to turn in 91563, it could be up by itself here, need more testing)
						["provider"] = { "n", 246999 },	-- Loa Speaker Tobui
						["coord"] = { 32.3, 31.6, ZULAMAN_MID },
					}),
					q(91405, {	-- Validating the Venom
						["sourceQuests"] = {
							91403,	-- Probable Paralytic
							91404,	-- A Most Vile Venom
						},
						["provider"] = { "n", 246999 },	-- Loa Speaker Tobui
						["coord"] = { 32.3, 31.6, ZULAMAN_MID },
					}),
					q(91408, {	-- Seeking Shadra
						["sourceQuests"] = { 91405 },	-- Validating the Venom
						["provider"] = { "n", 247014 },	-- Nija Torntusk
						["coord"] = { 36.1, 24.8, ZULAMAN_MID },
					}),
					q(91630, {	-- Stolen Sight
						["sourceQuests"] = { 91408 },	-- Seeking Shadra
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coord"] = { 39.1, 22.3, ZULAMAN_MID },
						["groups"] = {
							i(246744),	-- Eye of Shadra (QI!)
						},
					}),
					q(91409, {	-- Dreaming of Spiders
						["sourceQuests"] = { 91630 },	-- Stolen Sight
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coord"] = { 39.1, 22.3, ZULAMAN_MID },
					}),
					q(91411, {	-- Deep in Maisara
						["sourceQuests"] = { 91409 },	-- Dreaming of Spiders
						["provider"] = { "n", 247251 },	-- Nija Torntusk
						["coord"] = { 38.8, 22.7, ZULAMAN_MID },
						["groups"] = {
							i(246586),	-- Shell of Shadra (QI!)
						},
					}),
					q(91412, {	-- Return of the Venom Queen
						["sourceQuests"] = { 91411 },	-- Deep in Maisara
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coord"] = { 38.7, 22.7, ZULAMAN_MID },
					}),
					q(91410, {	-- Shared Loa
						["sourceQuests"] = { 91412 },	-- Return of the Venom Queen
						["provider"] = { "n", 247254 },	-- Mixer Jamanga
						["coord"] = { 38.7, 22.7, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.14, {	-- [PH] Hub Culture
					q(93051, {	-- The Final Exam
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 254136 },	-- Ri'kari
						["coord"] = { 44.0, 65.7, ZULAMAN_MID },
					}),
				}),
				header(HEADERS.AchCriteria, 61452.15, {	-- Something Vile This Way Comes

				}),
				header(HEADERS.AchCriteria, 61452.16, {	-- River-Walkers of the Prowl
					q(93257, {	-- Revantusk at Risk
						--["sourceQuests"] = { XXX },	-- ???
						["provider"] = { "n", 254488 },	-- Jak'zari
						["coord"] = { 45.9, 70.7, ZULAMAN_MID },
					}),
					q(93258, {	-- Crab Clues
						["sourceQuests"] = { 93257 },	-- Revantusk at Risk
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, ZULAMAN_MID },
					}),
					q(93260, {	-- Caging Crawlers
						["sourceQuests"] = { 93258 },	-- Crab Clues
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, ZULAMAN_MID },
					}),
					q(93259, {	-- Clobbering Crawlers
						["sourceQuests"] = { 93258 },	-- Crab Clues
						["provider"] = { "n", 254491 },	-- Kahanea
						["coord"] = { 40.2, 79.2, ZULAMAN_MID },
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
						["coord"] = { 32.2, 83.8, ZULAMAN_MID },
						["groups"] = {
							i(260410),	-- Void-Touched Refuse (QI!)
						},
					}),
				}),
			}),
			--Not in but still in zone
			--Just one quest
			q(93049, {	-- Homework Support
				--["sourceQuests"] = { XXX },	-- ??
				["provider"] = { "n", 254144 },	-- An'jali
				["coord"] = { 46.7, 68.0, ZULAMAN_MID },
				["groups"] = {
					o(613439, {	-- 
						i(258892),	-- Dragonhawk Fern Frond (QI!)
					}),
					o(613438, {	-- 
						i(258891),	-- Pristine Shade Lily (QI!)
					}),
				},
			}),
			--Possible Renown 2/3 quest?
			q(93792, {	-- Blessings of the Loa
				["provider"] = { "n", 256510 },	-- Du'gal
				["coord"] = { 43.1, 69.2, ZULAMAN_MID },
			}),
			--Delves
			q(93410, {	-- Delver's Call: Twilight Crypts
				--["provider"] = { "o", XXXX },	-- Twilight Crypts
				["coord"] = { 43.1, 69.2, ZULAMAN_MID },
			}),
			--Odd chain, could be one of criteria questID but missing it?
			q(93440, {	-- Personal History
				--["sourceQuests"] = { XXX },	-- ??
				["provider"] = { "n", 249653 },	-- Zul'jarra
				["coord"] = { 45.8, 65.5, ZULAMAN_MID },
			}),
			q(93433, {	-- Shrine, Sealed, Delivered
				["sourceQuests"] = { 93440 },	-- Personal History
				["provider"] = { "n", 254827 },	-- Elder Doru
				["coord"] = { 46.3, 47.3, 2536 },	-- Atal'Aman
			}),
			q(93432, {	-- Swords to Plowshares
				["sourceQuests"] = { 93440 },	-- Personal History
				["provider"] = { "n", 254783 },	-- Torundo the Grizzled
				["coord"] = { 46.3, 47.3, 2536 },	-- Atal'Aman
				["groups"] = {
					i(259204),	-- Raider Ash Remains (QI!)
				},
			}),
			q(93436, {	-- Hex the Innocent, Disrupt the Guilty
				["sourceQuests"] = {
					93433,	-- Shrine, Sealed, Delivered
					93432,	-- Swords to Plowshares
				},
				["provider"] = { "n", 254827 },	-- Elder Doru
				["coord"] = { 45.9, 47.1, 2536 },	-- Atal'Aman
				["groups"] = {
					i(259967),	-- Amani Hex Stave (QI!)
				},
			}),
			q(93435, {	-- Four Instigators
				["sourceQuests"] = {
					93433,	-- Shrine, Sealed, Delivered
					93432,	-- Swords to Plowshares
				},
				["provider"] = { "n", 254783 },	-- Torundo the Grizzled
				["coord"] = { 45.9, 47.5, 2536 },	-- Atal'Aman
			}),
			q(93437, {	-- In Their Own Blood
				["sourceQuests"] = {
					93435,	-- Four Instigators
					93436,	-- Hex the Innocent, Disrupt the Guilty
				},
				["provider"] = { "n", 254783 },	-- Torundo the Grizzled
				["coord"] = { 46.0, 47.5, 2536 },	-- Atal'Aman
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MIDNIGHT, {
		m(ZULAMAN_MID, {
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
