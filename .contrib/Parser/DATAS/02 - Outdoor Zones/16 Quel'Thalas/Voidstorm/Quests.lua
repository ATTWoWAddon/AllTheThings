---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41806, {	-- Voidstorm
				header(HEADERS.AchCriteria, 41806.01, {	-- Into the Abyss
					q(91084, {	-- Looming Shadows
						["sourceQuests"] = { 86898 },	-- Rise of the Haranir
						["provider"] = { "n", 255819 },	-- Elder Hagar
						["coord"] = { 36.6, 68.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isBreadcrumb"] = true,	-- TODO: next quest was up without turn it this one
					}),
					q(92061, {	-- Rising Storm
						["sourceQuests"] = { 91084 },	-- Looming Shadows
						["provider"] = { "n", 235787 },	-- Lor'themar Theron
						["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(86543, {	-- Magisters' Terrace: Homecoming
						["sourceQuests"] = { 92061 },	-- Rising Storm
						["provider"] = { "n", 235386 },	-- Magister Umbric
						["coord"] = { 45.3, 70.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(86549, {	-- No Fear of the Dark
						["sourceQuests"] = { 86543 },	-- Magisters' Terrace: Homecoming
						["provider"] = { "n", 235405 },	-- Magister Umbric
						["coord"] = { 35.2, 65.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(86557, {	-- A Matter of Strife and Death
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 235486 },	-- Lothraxion
						["coord"] = { 34.4, 60.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86558, {	-- Save a Piece of Mind
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 235411 },	-- Magister Umbric
						["coord"] = { 34.3, 60.5, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260837),	-- Gauntlets of Infinite Gravity
							i(260839),	-- Grips of the Colossal Behemoths
							i(260836),	-- Hazy Penumbral Mitts
							i(260838),	-- Neverending Vortex Striders
						},
					}),
					q(86559, {	-- The Far, Far Frontier
						["sourceQuests"] = {
							86557,	-- A Matter of Strife and Death
							86558,	-- Save a Piece of Mind
						},
						["provider"] = { "n", 235522 },	-- Lothraxion
						["coord"] = { 36.9, 58.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86562, {	-- Dancing with Death
						["sourceQuests"] = { 86559 },	-- The Far, Far Frontier
						["provider"] = { "n", 235530 },	-- Lothraxion
						["coord"] = { 31.3, 54.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260840),	-- Hazy Penumbral Belt
							i(260842),	-- Neverending Vortex Sash
							i(260841),	-- Sash of Infinite Gravity
							i(260843),	-- Waistguard of the Colossal Behemoths
						},
					}),
					q(86561, {	-- A Strange, Different World
						["sourceQuests"] = { 86559 },	-- The Far, Far Frontier
						["provider"] = { "n", 235532 },	-- Alleria Windrunner
						["coord"] = { 31.3, 54.3, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(242390),	-- Shadowgraft Fragment (QI!)
						},
					}),
					q(86565, {	-- No Prayer for the Wicked
						["sourceQuests"] = {
							86562,	-- Dancing with Death
							86561,	-- A Strange, Different World
						},
						["provider"] = { "n", 235535 },	-- Lothraxion
						["coord"] = { 27.4, 51.0, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260844),	-- Hazy Penumbral Pants
							i(260845),	-- Greaves of Infinite Gravity
							i(260846),	-- Neverending Vortex Breeches
							i(260847),	-- Pants of the Colossal Behemoths
						},
					}),
					------ Stay awhile and listen ------
					hqt(89060, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["description"] = "Dialogue becomes available during 'No Prayer for the Wicked' (86565).",
						["sourceQuests"] = {
							86562,	-- Dancing with Death
							86561,	-- A Strange, Different World
						},
						["provider"] = { "n", 235609 },	-- Alleria Windrunner
						["coord"] = { 35.4, 59.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41806.02, {	-- The Night's Veil
					q(86536, {	-- Reliable Enemies
						["sourceQuests"] = { 86565 },	-- No Prayer for the Wicked
						["provider"] = { "n", 235606 },	-- Lothraxion
						["coord"] = { 35.4, 59.1, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86531, {	-- Work Disruption
						["sourceQuests"] = { 86536 },	-- Reliable Enemies
						["provider"] = { "n", 235389 },	-- Alleria Windrunner
						["coord"] = { 36.6, 73.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86530, {	-- First, The Shells
						["sourceQuests"] = { 86536 },	-- Reliable Enemies
						["provider"] = { "n", 235394 },	-- Lothraxion
						["coord"] = { 36.7, 73.1, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(237380),	-- Empty Manacell (QI!)
						},
					}),
					q(86528, {	-- A Cracked Holokey
						["sourceQuests"] = { 86536 },	-- Reliable Enemies
						--["provider"] = { "o", XXXX },	-- Cracked Holokey
						["coord"] = { 35.7, 79.2, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86537, {	-- Network Insecurity
						["sourceQuests"] = {
							86528,	-- A Cracked Holokey
							86530,	-- First, The Shells
							86531,	-- Work Disruption
						},
						["provider"] = { "n", 235717 },	-- Alleria Windrunner
						["coord"] = { 36.3, 80.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(237745),	-- Encrypted Device (QI!)
							i(262669),	-- Void-Touched Axe
							i(262670),	--
							i(262671),	--
							i(262673),	--
							i(262677),	--
							i(262730),	--
							i(262734),	--
							i(262735),	--
							i(262738),	--
							i(262739),	--
						},
					}),
					q(86538, {	-- Second, The Fuel
						["sourceQuests"] = {
							86528,	-- A Cracked Holokey
							86530,	-- First, The Shells
							86531,	-- Work Disruption
						},
						["provider"] = { "n", 235713 },	-- Lothraxion
						["coord"] = { 36.3, 80.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(526844, {	--
								i(237744),	-- Arcane Remnant] (QI!)
							}),
							i(260848),	--
							i(262375),	-- Darkness-Infused Polearms
							i(262376),	--
							i(262672),	-- [DNT] Iron Fists of the Eternal Void
							i(262674),	--
							i(262675),	--
							i(262678),	--
							i(262733),	--
							i(262737),	--
						},
					}),
					q(86539, {	-- A Naaru!
						["sourceQuests"] = {
							86537,	-- Network Insecurity
							86538,	-- Second, The Fuel
						},
						["provider"] = { "n", 235713 },	-- Lothraxion
						["coord"] = { 36.3, 80.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86540, {	-- Third, Blow It Up
						["sourceQuests"] = { 86539 },	-- A Naaru!
						["provider"] = { "n", 235648 },	-- Lothraxion
						["coord"] = { 39.3, 82.2, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(88768, {	-- Agents of Darkness
						["sourceQuests"] = { 86539 },	-- A Naaru!
						["provider"] = { "n", 235660 },	-- Alleria Windrunner
						["coord"] = { 39.4, 82.2, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(263282),	-- Repurposed Volatile Manacell
						},
					}),
					q(86541, {	-- Just In Case...
						["sourceQuests"] = { 86539 },	-- A Naaru!
						["provider"] = { "n", 235650 },	-- Decimus
						["coord"] = { 39.4, 82.1, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(237895),	-- Fragmented Keystone (QI!)
							i(242254),	-- Master's Override (QI!)
						},
					}),
					q(86542, {	-- Flicker in the Dark
						["sourceQuests"] = {
							88768,	-- Agents of Darkness
							86541,	-- Just In Case...
							86540,	-- Third, Blow It Up
						},
						["provider"] = { "n", 235649 },	-- Lothraxion
						["coord"] = { 38.0, 83.2, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260833),	-- Cowl of Infinite Gravity
							i(260832),	-- Hazy Penumbral Helm
							i(260835),	-- Helmet of the Colossal Behemoths
							i(260834),	-- Neverending Vortex Cap
						},
					}),
					q(89249, {	-- Overwhelmed
						["sourceQuests"] = { 86542 },	-- Flicker in the Dark
						["provider"] = { "n", 241109 },	-- Arator
						["coord"] = { 41.6, 78.8, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86544, {	-- Post-Mortem
						["sourceQuests"] = { 89249 },	-- Overwhelmed
						["provider"] = { "n", 235724 },	-- Arator
						["coord"] = { 41.7, 74.7, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(238500),	-- Maella's Report (QI!)
						},
					}),
					--[[------ Stay awhile and listen ------
					hqt(XXXX, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["description"] = "Dialogue becomes available during 'Post-Mortem' (86544).",
						["sourceQuests"] = { 89249 },	-- Overwhelmed
						["provider"] = { "n", 235664 },	-- Alleria Windrunner
						["coord"] = { 41.7, 74.7, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--]]--
					q(86545, {	-- The Light's Brand
						["sourceQuests"] = { 86544 },	-- Post-Mortem
						["provider"] = { "n", 235724 },	-- Arator
						["coord"] = { 41.7, 74.7, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260854),	-- Hazy Penumbral Shoulderpads
							i(260856),	-- Neverending Vortex Mantle
							i(260855),	-- Pauldrons of Infinite Gravity
							i(260857),	-- Pauldrons of the Colossal Behemoths
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41806.03, {	-- Dawn of Reckoning
					q(86509, {	-- Friend or Fiend
						["sourceQuests"] = { 86545 },	-- The Light's Brand
						["provider"] = { "n", 240691 },	-- Decimus
						["coord"] = { 41.2, 72.7, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--[[------ Stay awhile and listen ------
					hqt(XXXX, {	-- Stay awhile and listen: Lothraxion
						["name"] = "Stay awhile and listen: Lothraxion",
						["description"] = "Dialogue becomes available during 'Friend or Fiend' (86509).",
						["sourceQuests"] = { 86545 },	-- The Light's Brand
						["provider"] = { "n", 240673 },	-- Lothraxion
						["coord"] = { 41.0, 72.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--]]--
					q(86510, {	-- Domus Penumbra
						["sourceQuests"] = { 86509 },	-- Friend or Fiend
						["provider"] = { "n", 240697 },	-- Decimus
						["coord"] = { 51.4, 72.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90571, {	-- The Lay of the Beast
						["sourceQuests"] = { 86510 },	-- Domus Penumbra
						["provider"] = { "n", 235697 },	-- Decimus
						["coord"] = { 51.0, 67.9, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260858),	-- Penumbral Gem Necklace
							i(260859),	-- Thorny Necklace
						},
					}),
					--[[------ Stay awhile and listen ------
					hqt(XXXX, {	-- Stay awhile and listen: Arator
						["name"] = "Stay awhile and listen: Arator",
						["description"] = "Dialogue becomes available during 'The Lay of the Beast' (90571).",
						["sourceQuests"] = { 86510 },	-- Domus Penumbra
						["provider"] = { "n", 235469 },	-- Arator
						["coord"] = { 51.0, 68.1, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--]]--
					q(86511, {	-- Edge of the Abyss
						["sourceQuests"] = { 90571 },	-- The Lay of the Beast
						["provider"] = { "n", 238296 },	-- Alleria Windrunner
						["coord"] = { 51.1, 68.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86512, {	-- The Harvest
						["sourceQuests"] = { 86511 },	-- Edge of the Abyss
						["provider"] = { "n", 235633 },	-- Decimus
						["coord"] = { 54.3, 74.3, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86513, {	-- Face the Tide
						["sourceQuests"] = { 86511 },	-- Edge of the Abyss
						["provider"] = { "n", 235469 },	-- Arator
						["coord"] = { 54.3, 74.3, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86514, {	-- Lady of the Pit
						["sourceQuests"] = {
							86513,	-- Face the Tide
							86512,	-- The Harvest
						},
						["provider"] = { "n", 236945 },	-- Alleria Windrunner
						["coord"] = { 55.6, 72.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(526075, {	--
								i(238779),	-- Torentia's Sigil (QI!)
							}),
							i(260861),	-- Bracelets of Infinite Gravity
							i(260863),	-- Greatbelt of the Colossal Behemoths
							i(260860),	-- Hazy Penumbral Guards
							i(260862),	-- Neverending Vortex Vambraces
						},
					}),
					q(86516, {	-- All Become Prey
						["sourceQuests"] = { 86514 },	-- Lady of the Pit
						["provider"] = { "n", 235502 },	-- Alleria Windrunner
						["coord"] = { 60.8, 73.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(531495, {	--
								i(237807),	-- Carrion Essence (QI!)
							}),
						},
					}),
					q(86517, {	-- Vanished in the Void
						["sourceQuests"] = { 86514 },	-- Lady of the Pit
						["provider"] = { "n", 235503 },	-- Arator
						["coord"] = { 60.8, 73.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(529725, {	--
								i(240831),	-- Hieron's Journal (QI!)
							}),
						},
					}),
					q(86515, {	-- Hollow Hunger
						["sourceQuests"] = { 86514 },	-- Lady of the Pit
						["provider"] = { "n", 235504 },	-- Lothraxion
						["coord"] = { 60.7, 73.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260867),	-- Breastplate of the Colossal Behemoths
							i(260864),	-- Hazy Penumbral Mantle
							i(260866),	-- Neverending Vortex Chainmail
							i(236752),	-- Severum's Sigil (QI!)
							i(260865),	-- Vest of Infinite Gravity
						},
					}),
					q(86518, {	-- The Mantle of Predation
						["sourceQuests"] = {
							86516,	-- All Become Prey
							86515,	-- Hollow Hunger
							86517,	-- Vanished in the Void
						},
						["provider"] = { "n", 235502 },	-- Alleria Windrunner
						["coord"] = { 60.8, 73.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--[[------ Stay awhile and listen ------
					hqt(XXXX, {	-- Stay awhile and listen: Lothraxion
						["name"] = "Stay awhile and listen: Lothraxion ",
						["description"] = "Dialogue becomes available during 'The Mantle of Predation' (86518).",
						["sourceQuests"] = {
							86516,	-- All Become Prey
							86515,	-- Hollow Hunger
							86517,	-- Vanished in the Void
						},
						["provider"] = { "n", 235504 },	-- Lothraxion
						["coord"] = { 60.7, 73.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--]]--
					q(86519, {	-- Abyssus, Abyssum
						["sourceQuests"] = { 86518 },	-- The Mantle of Predation
						["provider"] = { "n", 235715 },	-- Alleria Windrunner
						["coord"] = { 60.3, 76.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(256214),	-- Boots of Infinite Gravity (TODO: bugged, rewards only armor type you are on)
						},
					}),
					q(86520, {	-- Hunt the Light
						["sourceQuests"] = { 86519 },	-- Abyssus, Abyssum
						["provider"] = { "n", 239574 },	-- Alleria Windrunner
						["coord"] = { 60.1, 76.2, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(86521, {	-- Nexus-Point Xenas: Eclipse
						["sourceQuests"] = { 86520 },	-- Hunt the Light
						["provider"] = { "n", 235763 },	-- Alleria Windrunner
						["coord"] = { 64.1, 61.8, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--[[------ Stay awhile and listen ------
					hqt(XXXX, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner ",
						["description"] = "Dialogue becomes available during 'Nexus-Point Xenas: Eclipse' (86521).",
						["sourceQuests"] = { 86520 },	-- Hunt the Light
						["provider"] = { "n", 235763 },	-- Alleria Windrunner
						["coord"] = { 64.1, 61.8, MAP.MIDNIGHT.VOIDSTORM },
					}),
					--]]--
					q(86522, {	-- Daylight is Breaking
						["sourceQuests"] = { 86521 },	-- Nexus-Point Xenas: Eclipse
						["provider"] = { "n", 235765 },	-- Alleria Windrunner
						["coord"] = { 46.0, 64.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
				}),
			}),
			header(HEADERS.Achievement, 61864, {	-- Sojourner of Voidstorm
				header(HEADERS.AchCriteria, 61864.01, {	-- The Void Peers Back
					q(88755, {	-- Scholarly Pursuits
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 242700 },	-- Kelia Everglow
						["coord"] = { 35.8, 58.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(87388, {	-- A Bigger Beast
						["sourceQuests"] = { 88755 },	-- Scholarly Pursuits
						["provider"] = { "n", 236908 },	-- Matrean Dawnfall
						["coord"] = { 41.1, 61.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(87391, {	-- Sampling the Local Fare
						["sourceQuests"] = { 88755 },	-- Scholarly Pursuits
						["provider"] = { "n", 236930 },	-- Kelia Everglow
						["coord"] = { 41.2, 61.5, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(235632),	-- Exotic Tissue Sample (QI!)
						},
					}),
					q(88653, {	-- Yolks on You
						["sourceQuests"] = {
							87388,	-- A Bigger Beast
							87391,	-- Sampling the Local Fare
						},
						["provider"] = { "n", 236908 },	-- Matrean Dawnfall
						["coord"] = { 41.1, 61.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(87672, {	-- Void is in the Air
						["sourceQuests"] = {
							87388,	-- A Bigger Beast
							87391,	-- Sampling the Local Fare
						},
						["provider"] = { "n", 236930 },	-- Kelia Everglow
						["coord"] = { 41.2, 61.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(88708, {	--
						["sourceQuests"] = {
							87672,	-- Void is in the Air
							88653,	-- Yolks on You
						},
						["provider"] = { "n", 236930 },	-- Kelia Everglow
						["coord"] = { 41.2, 61.5, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(243146),	-- Ren'dorei Struggle (TOY!)
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.02, {	-- Shadow Puppets
					q(91145, {	-- The Conquered Heroes
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 245878 },	-- Knight Anais
						["coord"] = { 51.8, 71.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91147, {	-- Cut Her Strings
						["sourceQuests"] = { 91145 },	-- The Conquered Heroes
						["provider"] = { "n", 246035 },	-- Knight Anais
						["coord"] = { 56.5, 86.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(91146, {	-- Flickering Light
						["sourceQuests"] = { 91145 },	-- The Conquered Heroes
						["provider"] = { "n", 246035 },	-- Knight Anais (TODO: could be 252807)
						["coord"] = { 56.5, 86.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							o(551817, {	--
								i(255158),	-- Callum's Tinder Box (QI!)
							}),
							o(551773, {	--
								i(255159),	-- Callum's Shield (QI!)
							}),
							o(551815, {	--
								i(255160),	-- Callum's Necklace (QI!)
							}),
						},
					}),
					q(91148, {	-- Strung Along
						["sourceQuests"] = {
							91147,	-- Cut Her Strings
							91146,	-- Flickering Light
						},
						["provider"] = { "n", 252807 },	-- Knight Anais (mobileNPC)
						--["coord"] = { 56.5, 86.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(91149, {	-- Bury Me Not
						["sourceQuests"] = { 91148 },	-- Strung Along
						["provider"] = { "n", 253523 },	-- Knight Anais
						["coord"] = { 44.8, 90.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							o(613324, {	--
								i(256135),	-- Light-Infused Tinder Box (QI!)
							}),
							i(264289),	-- [DNT] Cloth Gloves
							i(264290),	-- [DNT] Leather Gloves
							i(264291),	-- [DNT] Mail Gloves
							i(264292),	-- [DNT] Plate Gloves
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.03, {	-- The Nethersent
					q(90782, {	-- The Nethersent
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 242233 },	-- Juras the Nethersent
						["coord"] = { 56.2, 71.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90866, {	-- Universal Language
						["sourceQuests"] = { 90782 },	-- The Nethersent
						["provider"] = { "n", 241620 },	-- Tul'amar, Twice-Exiled
						["coord"] = { 39.9, 49.0, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(243350),	-- Predator Blood (QI!)
						},
					}),
					q(90872, {	-- Drenched In It
						["sourceQuests"] = { 90866 },	-- Universal Language
						["provider"] = { "n", 241620 },	-- Tul'amar, Twice-Exiled
						["coord"] = { 39.4, 48.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90873, {	-- These Violent Delights
						["sourceQuests"] = { 90872 },	-- Drenched In It
						["provider"] = { "n", 241620 },	-- Tul'amar, Twice-Exiled
						["coord"] = { 34.1, 91.8, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(244173),	-- Relic of Liberation (QI!)
						},
					}),
					q(90874, {	-- Their Violent Ends
						["sourceQuests"] = { 90872 },	-- Drenched In It
						["provider"] = { "n", 241620 },	-- Tul'amar, Twice-Exiled
						["coord"] = { 34.1, 91.8, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(244171),	-- Abductor's Mark (QI!)
						},
					}),
					q(90875, {	-- Across Worlds
						["sourceQuests"] = {
							90874,	-- Their Violent Ends
							90873,	-- These Violent Delights
						},
						["provider"] = { "n", 241620 },	-- Tul'amar, Twice-Exiled
						["coord"] = { 34.1, 91.8, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(264293),	-- Exile's Tattered Shawl
							i(244435),	-- Lodestar of the Great Dark (QI!)
							i(264294),	-- Nethersent Eredar's Cloak
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.04, {	-- The Nightbreaker
					q(90910, {	-- Overwhelming Darkness (Alex TODO: wrong quest in chain index or breadcrumb?)
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 239720 },	-- Lucia Nightbreaker
						["coord"] = { 42.4, 75.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91339, {	-- Smothered in the Crib
						["sourceQuests"] = { 90910 },	-- Overwhelming Darkness
						["provider"] = { "n", 239720 },	-- Lucia Nightbreaker
						["coord"] = { 47.9, 78.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(246435),	-- Reliquary of Darkness (QI!)
						},
					}),
					q(91340, {	-- For Violence's Sake
						["sourceQuests"] = { 90910 },	-- Overwhelming Darkness
						["provider"] = { "n", 239720 },	-- Lucia Nightbreaker
						["coord"] = { 47.9, 78.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91341, {	-- Unlimited
						["sourceQuests"] = {
							91340,	-- For Violence's Sake
							91339,	-- Smothered in the Crib
						},
						["provider"] = { "n", 239720 },	-- Lucia Nightbreaker
						["coord"] = { 47.9, 78.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91343, {	-- Ambition's Reward
						["sourceQuests"] = { 91341 },	-- Unlimited
						["provider"] = { "n", 239720 },	-- Lucia Nightbreaker
						["coord"] = { 50.9, 45.3, 2527 },	-- Voidlands_Micro_Abundance_B
						["groups"] = {
							i(264295),	-- [DNT] Cloth Bracers
							i(264296),	-- [DNT] Leather Bracers
							i(264297),	-- [DNT] Mail Bracers
							i(264298),	-- Nightbreaker's Vambraces
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.05, {	-- Pathogenic Problem
					--[[q(91557, {	--
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: temp source which lead into zone)
						["isBreadcrumb"] = true,
					}),]]--
					q(91558, {	-- Pestilent Petals
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: fix to 91557 when you find it)
						["provider"] = { "n", 247664 },	-- Lady Darkglen
						["coord"] = { 35.9, 48.3, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(573747, {
								i(251902),	-- Mature Blood Petal (QI!)
							}),
						},
					}),
					q(91559, {	-- Virulent Vermin
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: fix to 91557 when you find it)
						["provider"] = { "n", 247664 },	-- Lady Darkglen
						["coord"] = { 35.9, 48.3, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(251905),	-- Specialized Liver (QI!)
						},
					}),
					q(91560, {	-- Expunging Explorers
						["sourceQuests"] = {
							91559,	-- Pestilent Petals
							91559,	-- Virulent Vermin
						},
						["provider"] = { "n", 247674 },	-- Lady Darkglen
						["coord"] = { 34.6, 43.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(251905),	-- Specialized Liver (QI!)
						},
					}),
					q(93801, {	-- Calculated Culling
						["description"] = "Available after you cured Ren'dorei Scout during 'Expunging Explorers' (91560)",
						["sourceQuests"] = {
							91559,	-- Pestilent Petals
							91559,	-- Virulent Vermin
						},
						["provider"] = { "n", 254402 },	-- Cured Ren'dorei Scout
						["coord"] = { 34.7, 43.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(251905),	-- Specialized Liver (QI!)
						},
					}),
					q(91561, {	-- Bloodborne Pathogen
						["sourceQuests"] = {
							93801,	-- Calculated Culling
							91560,	-- Expunging Explorers
						},
						["provider"] = { "n", 247674 },	-- Lady Darkglen
						["coord"] = { 34.6, 43.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(264300),	-- [DNT] Cloth Belt
							i(264299),	-- [DNT] Leather Belt
							i(264301),	-- [DNT] Mail Belt
							i(264302),	-- [DNT] Plate Belt
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.06, {	-- A Voice Inside
					q(91884, {	-- The Illusion of Motion
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 248881 },	-- Scout Nefina
						["coord"] = { 41.4, 74.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91885, {	-- Drain You
						["sourceQuests"] = { 91884 },	-- The Illusion of Motion
						["provider"] = { "n", 248880 },	-- Starving Voidwalker
						["coord"] = { 48.8, 82.3, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(249433),	-- Void Splinter (QI!)
						},
					}),
					q(91886, {	-- Voices of Omens
						["sourceQuests"] = { 91885 },	-- Drain You
						["provider"] = { "n", 256206 },	-- Sentient Voidwalker
						["coord"] = { 48.8, 82.3, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91887, {	-- Dominion of Deceit
						["sourceQuests"] = { 91886 },	-- Voices of Omens
						["provider"] = { "n", 248894 },	-- Scout Nefina
						["coord"] = { 44.6, 82.3, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(264434),	-- Voldy (PET!)
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.07, {	-- Shadowguard's Shadow
					q(92390, {	-- Risk for Research
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 250677 },	-- Lanlae Noxa
						["coord"] = { 39.7, 86.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(92155, {	-- Object Exorcism
						["sourceQuests"] = { 92390 },	-- Risk for Research
						["provider"] = { "n", 249935 },	-- Lanlae Noxa
						["coord"] = { 66.9, 65.3, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(92156, {	-- It Follows Me
						["sourceQuests"] = { 92155 },	-- Object Exorcism
						["provider"] = { "n", 249917 },	-- Havazza
						["coord"] = { 69.2, 62.9, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(251278),	-- Consuming Brand (QI!)
						},
					}),
					q(92157, {	-- Ritual Activity
						["sourceQuests"] = { 92156 },	-- It Follows Me
						["provider"] = { "n", 249935 },	-- Lanlae Noxa
						["coord"] = { 69.1, 63.0, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(92158, {	-- Let it In
						["sourceQuests"] = { 92157 },	-- Ritual Activity
						["provider"] = { "n", 249935 },	-- Lanlae Noxa
						["coord"] = { 67.1, 65.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(92159, {	-- A Final Destination
						["sourceQuests"] = { 92158 },	-- Let it In
						["provider"] = { "n", 251277 },	-- Lanlae Noxa
						["coord"] = { 74.4, 60.7, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(264304),	-- [DNT] Cloth Chest
							i(264305),	-- [DNT] Leather Chest
							i(264306),	-- [DNT] Mail Chest
							i(264307),	-- [DNT] Plate Chest
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.08, {	-- A Gift, Given Freely
					q(92603, {	-- O Lonely Star
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 252510 },	-- Orin Straylight
						["coord"] = { 39.9, 86.6, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
					}),
					q(92605, {	-- Honest as Bone
						["sourceQuests"] = { 92603 },	-- O Lonely Star
						["provider"] = { "n", 254012 },	-- Orin Straylight
						["coord"] = { 39.5, 32.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(256694, {	-- Bone Splinter (QI!)
								["providers"] = {
									{ "o", 578030 },	--
									{ "o", 589095 },	--
								},
							}),
						},
					}),
					q(92604, {	-- Speak in Blood
						["sourceQuests"] = { 92603 },	-- O Lonely Star
						["provider"] = { "n", 254012 },	-- Orin Straylight
						["coord"] = { 39.5, 32.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(256692),	-- Viscous Ichor (QI!)
						},
					}),
					q(92606, {	-- Take Up Your Gift
						["sourceQuests"] = {
							92604,	-- Speak in Blood
							92605,	-- Honest as Bone
						},
						["provider"] = { "n", 254010 },	-- Orin Straylight
						["coord"] = { 31.9, 30.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(256549),	-- Shadow Chisel (QI!)
						},
					}),
					q(92607, {	-- And Carve New Shapes
						["sourceQuests"] = { 92606 },	-- Take Up Your Gift
						["provider"] = { "n", 254014 },	-- Orin Straylight
						["coord"] = { 31.8, 30.1, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
						["groups"] = {
							i(264308),	-- [DNT] Cloth Mask
							i(264309),	-- [DNT] Leather Mask
							i(264310),	-- [DNT] Mail Mask
							i(264311),	-- [DNT] Plate Mask
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.09, {	-- Breaking the Triad
					--[[Alex TODO: missing in build, but quests should be in chain:
					q(91597),
					q(91565),
					q(91566),
					q(91583),
					q(91598),
					q(91694),
					q(91600),
					q(91603),
					q(91605),
					q(91606),
					q(91599),]]--
				}),
				header(HEADERS.AchCriteria, 61864.10, {	-- Go Low, Go Loud
					q(92657, {	-- The Brewing Storm
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 254510 },	-- Lysikas
						["coord"] = { 36.0, 59.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(92658, {	-- Tactical Acquisition
						["sourceQuests"] = { 92657 },	-- The Brewing Storm
						["provider"] = { "n", 254509 },	-- Lysikas
						["coord"] = { 26.3, 68.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(257728, {	-- Condensed Void Shard (QI!)
								["providers"] = {
									{ "o", 609910 },	--
									{ "o", 580092 },	--
								},
							}),
						},
					}),
					q(92659, {	-- Materiel Destruction
						["sourceQuests"] = { 92657 },	-- The Brewing Storm
						["provider"] = { "n", 254509 },	-- Lysikas
						["coord"] = { 26.3, 68.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(92660, {	-- Null Implements
						["sourceQuests"] = {
							92659,	-- Materiel Destruction
							92658,	-- Tactical Acquisition
						},
						["provider"] = { "n", 252947 },	-- Lysikas
						["coord"] = { 35.7, 66.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(580095, {	--
								i(257729),	-- Null Stabilizer (QI!)
							}),
							o(580096, {	--
								i(257730),	-- Voidway Energist (QI!)
							}),
							o(580097, {	--
								i(257731),	-- Singularity Forceps (QI!)
							}),
						},
					}),
					q(92661, {	-- Hammer Meet Anvil
						["sourceQuests"] = {
							92659,	-- Materiel Destruction
							92658,	-- Tactical Acquisition
						},
						["provider"] = { "n", 252949 },	-- Riftblade Maella
						["coord"] = { 35.7, 66.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(92662, {	-- Core Collapse
						["sourceQuests"] = {
							92661,	-- Hammer Meet Anvil
							92660,	-- Null Implements
						},
						["provider"] = { "n", 254513 },	-- Riftblade Maella
						["coord"] = { 31.2, 68.2, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(260590),	-- Maella's Stormarion Core (QI!)
							i(264325),	-- [DNT] Cloth Pauldrons
							i(264326),	-- [DNT] Leather Pauldrons
							i(264327),	-- [DNT] Mail Pauldrons
							i(264328),	-- [DNT] Plate Pauldrons
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.11, {	-- Something to Prove
					--[[Alex TODO: missing in build, but quests should be in chain:
					q(92939),
					q(92944),
					q(92946),
					q(92948),]]--
				}),
				header(HEADERS.AchCriteria, 61864.12, {	-- Oaths to Family
					--[[q(90838, {	--
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", XXXX },	-- XXXXX
						["coord"] = { X, Y, MAP.MIDNIGHT.VOIDSTORM },
						["isBreadcrumb"] = true,
					}),]]--
					q(90845, {	-- Distant Memories
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: temo source, fix to 90838 when you find it)
						["provider"] = { "n", 244499 },	-- Kifaan
						["coord"] = { 44.7, 68.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(542839, {	--
								i(244775),	-- K'areshi Keepsake (QI!)
							}),
						},
					}),
					q(90844, {	-- Fits of Lucidity
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark (TODO: temo source, fix to 90838 when you find it)
						["provider"] = { "n", 244499 },	-- Kifaan
						["coord"] = { 44.7, 68.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(244146),	-- Interrogated Data (QI!)
						},
					}),
					q(90847, {	-- Truth From Power
						["sourceQuests"] = {
							90845,	-- Distant Memories
							90844,	-- Fits of Lucidity
						},
						["provider"] = { "n", 244499 },	-- Kifaan
						["coord"] = { 44.7, 68.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(245628),	-- Dreamfire's Necklace (QI!)
						},
					}),
					q(90848, {	-- She Started the Fire
						["sourceQuests"] = { 90847 },	-- Truth From Power
						["provider"] = { "n", 244499 },	-- Kifaan
						["coord"] = { 44.7, 68.6, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90851, {	-- Eating Their Own
						["sourceQuests"] = { 90848 },	-- She Started the Fire
						["provider"] = { "n", 244516 },	-- Kifaan
						["coord"] = { 37.7, 48.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90852, {	-- Techno Magnetic Pulse
						["sourceQuests"] = { 90848 },	-- She Started the Fire
						["provider"] = { "n", 244516 },	-- Kifaan
						["coord"] = { 37.7, 48.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(93396, {	-- Bursting at the Seams
						["sourceQuests"] = {
							90852,	-- Techno Magnetic Pulse
							90851,	-- Eating Their Own
						},
						["provider"] = { "n", 244516 },	-- Kifaan
						["coord"] = { 36.3, 44.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90858, {	-- Repress the Oppressors
						["sourceQuests"] = { 93396 },	-- Bursting at the Seams
						["provider"] = { "n", 244522 },	-- Veraan
						["coord"] = { 36.3, 44.0, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90860, {	-- Shedding the Yoke
						["sourceQuests"] = { 90858 },	-- Bursting at the Seams
						["provider"] = { "n", 244522 },	-- Veraan
						["coord"] = { 37.4, 39.5, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(264407),	-- [DNT] Cloth Pants
							i(264408),	-- [DNT] Leather Pants
							i(264409),	-- [DNT] Mail Pants
							i(264410),	-- [DNT] Plate Pants
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.13, {	-- To Be Changed
					q(91533, {	-- What We Leave Behind (Alex TODO: questchain order reversed in wago table, chain bugged in 63967)
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 249034 },	-- Riftwalker Sideras
						["coord"] = { 53.7, 69.9, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(567709, {	--
								i(248209),	-- A Worn Envelope (QI!)
								i(248207),	-- Hieron's Journal (QI!)
							}),
						},
					}),
					q(91535, {	-- Home Sweet Grave
						["sourceQuests"] = { 91533 },	-- What We Leave Behind
						["provider"] = { "n", 248616 },	-- Riftblade Astre
						["coord"] = { 41.8, 74.8, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(555428, {	--
								i(248241),	-- Ghostflower Leaves (QI!)
							}),
						},
					}),
					q(91536, {	-- Like a Weed
						["sourceQuests"] = { 91533 },	-- What We Leave Behind
						["provider"] = { "n", 248616 },	-- Riftblade Astre
						["coord"] = { 41.8, 74.8, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91537, {	-- Confronting It
						["sourceQuests"] = {
							91535,	-- Home Sweet Grave
							91536,	-- Like a Weed
						},
						["provider"] = { "n", 248616 },	-- Riftblade Astre
						["coord"] = { 41.9, 74.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91541, {	-- Unchecked Emotions
						["sourceQuests"] = { 91537 },	-- Confronting It
						["provider"] = { "n", 248616 },	-- Riftblade Astre
						["coord"] = { 41.9, 74.5, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91542, {	-- The Town Inside Me
						["sourceQuests"] = { 91541 },	-- Unchecked Emotions
						["provider"] = { "n", 248072 },	-- Riftblade Astre
						["coord"] = { 52.1, 69.6, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(248722),	-- Ghostflower Tea (QI!)
						},
					}),
					--[[ quest above are bugged, you cannot turn it in, further quests in chain:
					q(91542),
					q(91543),
					q(91963),
					q(91544),
					q(91545),
					q(91546),]]--
				}),
				header(HEADERS.AchCriteria, 61864.14, {	-- A Dance with the Devil
					q(90914, {	-- A Born Killer
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 243907 },	-- Decimus
						["coord"] = { 51.2, 68.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(248086),	-- Void Essence (QI!)
						},
					}),
					q(90915, {	-- Artifice of Aggression
						["sourceQuests"] = { 90914 },	-- A Born Killer
						["provider"] = { "n", 243907 },	-- Decimus
						["coord"] = { 51.2, 68.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							o(565238, {	--
								i(248281),	-- Light Shard (QI!)
							}),
						},
					}),
					q(90916, {	-- Seek to Destroy
						["sourceQuests"] = { 90915 },	-- Artifice of Aggression
						["provider"] = { "n", 243907 },	-- Decimus
						["coord"] = { 51.2, 68.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90917, {	-- Harvester of Savagery
						["sourceQuests"] = { 90916 },	-- Seek to Destroy
						["provider"] = { "n", 244929 },	-- Decimus
						["coord"] = { 61.3, 61.9, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(248593),	-- Nascent Blade (QI!)
						},
					}),
					q(90918, {	-- The Unforgiven
						["sourceQuests"] = { 90916 },	-- Seek to Destroy
						["provider"] = { "n", 244929 },	-- Decimus
						["coord"] = { 61.3, 61.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90919, {	-- The Fiend that Failed
						["sourceQuests"] = {
							90918,	-- The Unforgiven
							90917,	-- Harvester of Savagery
						},
						["provider"] = { "n", 244929 },	-- Decimus
						["coord"] = { 61.3, 61.9, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90920, {	-- Warmth for the Soul
						["sourceQuests"] = { 90919 },	-- The Fiend that Failed
						["provider"] = { "n", 244948 },	-- Decimus
						["coord"] = { 59.1, 56.7, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90923, {	-- Shepherd of Fear
						["sourceQuests"] = { 90920 },	-- Warmth for the Soul
						["provider"] = { "n", 244948 },	-- Decimus
						["coord"] = { 59.1, 56.7, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90922, {	-- The Fallen Wake
						["sourceQuests"] = { 90920 },	-- Warmth for the Soul
						["provider"] = { "n", 251891 },	-- Lingering Shade (mobileNPC)
						--["coord"] = { 59.1, 56.7, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(90924, {	-- The Wicked End
						["sourceQuests"] = {
							90922,	-- The Fallen Wake
							90923,	-- Shepherd of Fear
						},
						["provider"] = { "n", 252853 },	-- Decimus
						["coord"] = { 47.3, 49.1, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							ach(61569),	-- Fool Me Once...
							i(264425),	-- [DNT]
							i(264426),	-- [DNT] Agility Mace
							i(264427),	-- [DNT]
							i(264428),	-- [DNT]
							i(264429),	-- [DNT] Agility Sword
							i(264430),	-- [DNT]
							i(264431),	-- [DNT]
							i(264432),	-- [DNT]
							--TODO: there qna in the end - I'm not sure if there could be some hqts with them
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61864.14, {	-- A Domanaar's Best Friend
					q(91363, {	-- Harvest of Darkness
						["sourceQuests"] = { 86549 },	-- No Fear of the Dark
						["provider"] = { "n", 246727 },	-- Ravenia
						["coord"] = { 52.1, 67.4, MAP.MIDNIGHT.VOIDSTORM },
						["groups"] = {
							i(246372),	-- Void-Infused Protein (QI!)
							o(556121, {
								i(246661),	-- Glaring Glowcap (QI!)
							}),
						},
					}),
					q(91380, {	-- Belly of the Beast
						["sourceQuests"] = { 91363 },	-- Harvest of Darkness
						["provider"] = { "n", 246727 },	-- Ravenia
						["coord"] = { 52.1, 67.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
					q(91382, {	-- Mighty and Superior
						["sourceQuests"] = { 91380 },	-- Belly of the Beast
						["provider"] = { "n", 246727 },	-- Ravenia
						["coord"] = { 52.1, 67.4, MAP.MIDNIGHT.VOIDSTORM },
					}),
				}),
			}),
			n(BONUS_OBJECTIVES, {
				q(92641, {	-- Bloodying the Plain
					["description"] = "Become available during 'Cut Her Strings' (91147).",
					["sourceQuests"] = { 91145 },	-- The Conquered Heroes
					["coord"] = { 56.5, 86.4, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				}),
			}),
			--Zone buffs console tutorial (warbound?)
			q(93970, {	-- Researching the Storm
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 248328 },	-- Void Researcher Anomander
				["coord"] = { 52.6, 72.9, MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					currency(3400),	-- Uncontaminated Void Sample
					--spell(1225312),	-- Amassing Voidlust
				},
			}),
			q(94790, {	-- Research Console: Exploring the Void
				["sourceQuests"] = { 93970 },	-- Researching the Storm
				["provider"] = { "n", 248328 },	-- Void Researcher Anomander
				["coord"] = { 52.6, 72.9, MAP.MIDNIGHT.VOIDSTORM },
				["isWeekly"] = true,
				["groups"] = {
					currency(3400),	-- Uncontaminated Void Sample
				},
			}),
			--questchainID 6001 (A More Potent Foe) TODO: bugged in 63967, could be dh only but something vent wrong?
			--'This Questline contains the story of Leona Darkstrider becoming the first Devourer Demon Hunter'
			q(92505, {	-- Truth of the Past
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 252110 },	-- Leona Darkstrider
				["coord"] = { 53.2, 70.4, MAP.MIDNIGHT.VOIDSTORM },
			}),
			q(92506, {	-- The Soul Price
				["sourceQuests"] = { 92505 },	-- Truth of the Past
				["provider"] = { "n", 256285 },	-- Allari the Souleater
				["coord"] = { 52.9, 14.2, EREDATH },
			}),
			q(92507, {	-- A More Potent Foe
				["sourceQuests"] = { 92506 },	-- The Soul Price
				["provider"] = { "n", 256285 },	-- Allari the Souleater
				["coord"] = { 52.9, 14.2, EREDATH },
			}),
			--[[quest above bugged (there no npc when you come back, further quests in chain:
			q(92508),
			q(92509),
			q(92510),
			q(92511),
			q(92512),]]--
			--to Master's Perch (not a breadcrumb?)
			q(93810, {	-- Masters' Perch
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 254765 },	-- Perodius
				["coord"] = { 51.4, 67.6, MAP.MIDNIGHT.VOIDSTORM },
			}),
			--Slayer's Rise
			q(91197, {	-- Collecting Remains
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 245976 },	-- Deminos Darktrance
				["coord"] = { 38.8, 81.5, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["isDaily"] = true,
				["groups"] = {
					o(554772, {	--
						i(245937),	-- Void-Tainted Remains (QI!)
					}),
				},
			}),
			q(89354, {	-- Preparing for Battle
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 245976 },	-- Deminos Darktrance
				["coord"] = { 38.8, 81.5, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["isWeekly"] = true,
				["groups"] = {
					o(554772, {	--
						i(245937),	-- Void-Tainted Remains (QI!)
					}),
				},
			}),
			q(93865, {	-- Make Your Name
				["sourceQuests"] = { 86549 },	-- No Fear of the Dark
				["provider"] = { "n", 245571 },	-- Sador
				["coord"] = { 36.0, 81.3, MAP.MIDNIGHT.SLAYERS_RISE_OUTDOOR },
				["isDaily"] = true,
				["groups"] = {
					i(262967),	-- Domanaar Dueling Flag (QI!)
				},
			}),
			-- Voidforge
			q(94623, {	-- Building the Voidforge
				--["sourceQuests"] = { ??? },	-- ???
				["provider"] = { "n", 243907 },	-- Decimus
				["coord"] = { 51.2, 68.4, MAP.MIDNIGHT.VOIDSTORM },
				["groups"] = {
					--spell(1276894),	-- Transmute Elemental Voidcore
					--spell(1277384),	-- The Voidforge
					i(265695),	-- Elementary Voidcore Shard (QI!)
				},
			}),
			q(94625, {	-- An Elementary Voidcore
				["sourceQuests"] = { 94623 },	-- Building the Voidforge
				["provider"] = { "n", 243907 },	-- Decimus
				["coord"] = { 51.2, 68.4, MAP.MIDNIGHT.VOIDSTORM },
				--["isWeekly"] = true,	-- TODO: likely will be on live
				["repeatable"] = true,	-- TODO: beta only?
				["groups"] = {
					--spell(1276894),	-- Transmute Elemental Voidcore
					i(265695),	-- Elementary Voidcore Shard (QI!)
				},
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(QUESTS, {
				-- During questing
				--q(89196),	-- Zone Choice Made (spellID 1254861), same hqt as previously.
				q(92633),	-- during 90922 (The Fallen Wake), absorb light from n(252619),	-- Fallen Defender
			}),
		}),
	}),
}));
