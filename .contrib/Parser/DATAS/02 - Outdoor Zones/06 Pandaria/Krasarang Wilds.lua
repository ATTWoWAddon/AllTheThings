---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- IMPORTANT: if you add coordinates to any part of this file, make sure you verify them manually!
-- The coordinates listed on wowhead (as of september 2019) are incorrect and probably based on an older version of the Krasarang map.
-- If you use those coordinates instead of manually confirming them, they'll place you outside of /tar range.

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(KRASARANG_WILDS, {
			["lore"] = "The Krasarang Wilds along Pandaria's southern coast conceal many ancient secrets of a lost dynasty that have drawn the attention of prophecy-seekers among the Alliance and Horde. The Wilds are also home to the vicious, domineering mogu, and a more insidious danger still: the Sha of Despair is believed to have escaped from its bindings in the Temple of the Red Crane, and stifling gloom has begun to blanket the land in its path.",
			["icon"] = 623769,
			["maps"] = {
				419,	-- Ruins of Ogudei, Alliance Excavation
				420,	-- Ruins of Ogudei (the map is weird here, and this ID only shows up when you're headed towards the objective for Ogudei's Lieutenants. for the rest of this floor, when you hit M it registers you on the incorrect level, and displays the wrong floor on the map)
				421,	-- Ruins of Ogudei, Reliquary Incursion
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6975),	-- Explore Krasarang Wilds
					ach(6535, {	-- Mighty Roamin' Krasaranger (Alliance)
						["races"] = ALLIANCE_ONLY,
					}),
					ach(6536, {	-- Mighty Roamin' Krasaranger (Horde)
						["races"] = HORDE_ONLY,
					}),
				}),
				battlepets({
					pet(716),	-- Amethyst Spiderling (PET!)
					pet(714, {	-- Feverbite Hatchling (PET!)
						["coord"] = { 18.0, 43.8, KRASARANG_WILDS },
					}),
					pet(678),	-- Jungle Grub (PET!)
					pet(718),	-- Luyu Moth (PET!)
					pet(708),	-- Malayan Quillrat (PET!)
					pet(722, {	-- Mei Li Sparkler (PET!)
						["coord"] = { 37.6, 44.0, KRASARANG_WILDS },
					}),
					pet(717),	-- Savory Beetle (PET!)
					pet(711, {	-- Sifang Otter (PET!)
						["coord"] = { 86.4, 10.4, KRASARANG_WILDS },
					}),
					pet(712, {	-- Sifang Otter Pup (PET!)
						["coord"] = { 85.8, 16.6, KRASARANG_WILDS },
					}),
					pet(723),	-- Spiny Terrapin (PET!)
				}),
				explorationHeader({
					visit_exploration(6160,{coord={31.9,70.6,KRASARANG_WILDS}}),	-- Angkhal Pavilion
					visit_exploration(6430,{coord={62.3,39.7,KRASARANG_WILDS}}),	-- Anglers Expedition
					exploration(6106),	-- Anglers Wharf
					exploration(6155),	-- Cradle of Chi-Ji
					exploration(6049),	-- Crane Wing Refuge
					exploration(6013),	-- Dawnchaser Retreat
					exploration(6010),	-- Dojani River
					visit_exploration(6162,{coord={34.6,82.7,KRASARANG_WILDS}}),	-- Dome Balrissa
					exploration(6017),	-- Fallsong Village
					visit_exploration(6612,{coord={14.2,59.4,KRASARANG_WILDS}}),	-- Horde Landing Site
					visit_exploration(6147,{coord={46.2,63.9,KRASARANG_WILDS}}),	-- Kea Krak
					exploration(6369),	-- Krasarang Cove
					visit_exploration(6018,{coord={35.9,38.8,KRASARANG_WILDS}}),	-- Krasari Falls
					exploration(6146),	-- Marista
					visit_exploration(6113,{coord={64.9,48.5,KRASARANG_WILDS}}),	-- Narsong Spires
					visit_exploration(6108,{coord={71.6,40.8,KRASARANG_WILDS}}),	-- Narsong Trench
					exploration(6135),	-- Nayeli Lagoon
					visit_exploration(6161,{coord={36.8,75.9,KRASARANG_WILDS}}),	-- Pedestal of Hope
					visit_exploration(6011,{coord={52.5,33.0,KRASARANG_WILDS}}),	-- Pools of Youth
					exploration(6008),	-- Ruins of Dojan
					exploration(6015),	-- Ruins of Korja
					visit_exploration(6158,{coord={60.9,43.5,KRASARANG_WILDS}}),	-- Sandy Shallows
					exploration(6016),	-- Sentinel Basecamp
					exploration(6058),	-- Shattered Convoy
					exploration(6048),	-- Temple of the Red Crane
					exploration(6004),	-- The Deepwild
					exploration(6019),	-- The Forbidden Jungle
					exploration(6009, {	-- The Incursion
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Zhu's Watch, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(6026, {	-- The Krasari Ruins
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Zhu's Watch, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(6371, {	-- The Southern Isles
						-- CRIEVE NOTE: I was not able to collect this at all. Might be a phasing issue.
						["collectible"] = false,
					}),
					exploration(6020),	-- The Southern Wall
					exploration(6007),	-- Thunder Cleft
					exploration(6370),	-- Turtle Beach
					exploration(6148),	-- Unga Ingoo
					exploration(6005),	-- Zhu Province
					exploration(6000),	-- Zhu's Watch
				}),
				n(FLIGHT_PATHS, {
					fp(992, {	-- Cradle of Chi-Ji, Krasarang Wilds
						["cr"] = 65189,	-- Feather Keeper Li <Flight Master>
						["coord"] = { 31.2, 63.2, KRASARANG_WILDS },
					}),
					fp(990, {	-- Dawnchaser Retreat, Krasarang Wilds
						["cr"] = 59047,	-- Munch Windhoof <Flight Master>
						["coord"] = { 29.0, 50.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					applyclassicphase(MOP_PHASE_LANDFALL, fp(1195, {	-- Domination Point, Krasarang Wilds
						["cr"] = 67785,	-- Kromthar <Flight Master>
						["coord"] = { 9.60, 52.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					})),
					applyclassicphase(MOP_PHASE_LANDFALL, fp(1190, {	-- Lion's Landing, Krasarang Wilds
						["cr"] = 68226,	-- Daggin Windbeard <Flight Master>
						["coord"] = { 88.4, 34.6, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					})),
					fp(993, {	-- Marista, Krasarang Wilds
						["cr"] = 60441,	-- Nan-Po <Flight Master>
						["coord"] = { 52.4, 76.6, KRASARANG_WILDS },
					}),
					fp(991, {	-- Sentinel Basecamp, Krasarang Wilds
						["cr"] = 59048,	-- Maylen Moonfeather <Flight Master>
						["coord"] = { 25.2, 33.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(988, {	-- The Incursion, Krasarang Wilds
						["cr"] = 59049,	-- Tylen Moonfeather <Flight Master>
						["coord"] = { 67.6, 32.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(987, {	-- Thunder Cleft, Krasarang Wilds
						["cr"] = 59046,	-- Lira Skysplitter <Flight Master>
						["coord"] = { 59.2, 24.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					fp(986, {	-- Zhu's Watch, Krasarang Wilds
						["cr"] = 60232,	-- Gee Hung <Flight Master>
						["coord"] = { 76.6, 8.40, KRASARANG_WILDS },
					}),
				}),
				petbattles({
					n(66733, {	-- Mo'ruk <Grand Master Pet Tamer>
						["coord"] = { 65.0, 42.7, KRASARANG_WILDS },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31954, {	-- Grand Master Mo'ruk
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
				-- TODO:
					-- try to figure out where the alternate versions of "Into the Wilds" come from for each faction. i picked up 30178 on Alliance and 30133 on Horde after completeing all the Zhu's Watch quests. the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't. possibly there are different versions if you abandon/re-pick up, or if you start questing elsewhere in the zone?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
					-- try to figure out where the second version of "Going on the Offensive" comes from. does it have different SQs?  is it from starting somewhere else in the zone, or doing it in a different order?  the quest text is slightly different (one version says "I want you to look for my scout. I sent her to investigate the Crane Temple but she hasn't returned. Get her report and rendezvous with us at the Sentinel Basecamp further west."  the other doesn't mention a scout at all, and just says "We are pressing westward and could use your help. Meet us at the Sentinel Basecamp further west when you are ready.")
					-- same as above but with "Going West" for Horde, as opposed to "Going on the Offensive" for Alliance. i picked up 30132, unsure what needs to happen to pick up 30464
					-- ShadowBrooks -- NOTE FOR CRIEVE see changes for 30132 and 30464
					q(30695, {	-- Ahead on the Way
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["qg"] = 59138,	-- Koro Mistwalker
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
						["groups"] = {
							i(81552),	-- Red Crane Sword
							i(81553),	-- Crane Temple Blade
							i(81554),	-- Ward of Despair
							i(81555),	-- Hope's Shield
							i(81556),	-- Sha-Warped Blade
							i(81557),	-- Maw of Despair
							i(90546),	-- Red Crane Scepter
							i(90547),	-- Lantern of Hope
						},
					}),
					q(30089, {	-- Apply Directly to the Forehead
						["sourceQuests"] = { 30088 },	-- Why So Serious?
						["qg"] = 56115,	-- Ken-Ken
						["coord"] = { 80.1, 0.98, KRASARANG_WILDS },
						["groups"] = {
							i(79021),	-- Ken-Ken's Mask (QI!)
							i(81467),	-- Nayeli Leggings
							i(81468),	-- Mortbreath Legguards
							i(81469),	-- Deepwild Legguards
							i(81470),	-- Narsong Legplates
							i(81471),	-- Angkhal Trousers
							i(81472),	-- Riverblade Legguards
							i(81473),	-- Sarjun Leggings
							i(81474),	-- Korjan Legguards
							i(81475),	-- Dojani Legguards
						},
					}),
					q(30672, {	-- Balance
						["sourceQuests"] = {
							30691,	-- Misery
							30671,	-- Wisdom Has A Price
						},
						["qg"] = 60139,	-- Wise Ana Wu
						["coord"] = { 47.6, 78.2, KRASARANG_WILDS },
						["groups"] = {
							i(81542),	-- Fishmonger's Blade
							i(81543),	-- Waterkeeper's Wand
							i(81544),	-- Marista Halberd
							i(81545),	-- Marista Blade
							i(81546),	-- Cloudfall Sword
							i(81547),	-- Marista Bow
							i(81548),	-- Marista Mace
							i(81549),	-- Marista Axe
							i(81550),	-- Cloudfall Blade
							i(81551),	-- Cloudfall Mace
						},
					}),
					q(30674, {	-- Balance Without Violence
						["description"] = "Automatically given you while moving through Nayeli Lagoon.",
						["sourceQuests"] = {
							30691,	-- Misery
							30671,	-- Wisdom Has A Price
						},
						["coord"] = { 46.9, 84.8, KRASARANG_WILDS },
					}),
					q(30384, {	-- Blind Them! (A)
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["qg"] = 58735,	-- Lyalia
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30124, {	-- Blind Them! (H)
						["sourceQuests"] = { 30179 },	-- Poisoned!
						["qg"] = 58114,	-- Kor Bloodtust
						["coord"] = { 62.6, 20.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30270, {	-- Blinding the Riverblades
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["qg"] = 59138,	-- Koro Mistwalker
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30084, {	-- Borderlands
						["sourceQuests"] = { 30091 },	-- Tears of Pandaria
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.7, 1.56, KRASARANG_WILDS },
						["groups"] = {
							i(78928),	-- Flame of Zhu's Watch (QI!)
						},
					}),
					q(30668, {	-- Build Your Own Raft
						["sourceQuests"] = { 30666 },	-- Sudden, Unexpected Crocolist Aggression
						["qg"] = 60173,	-- Jay Cloudfall
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
						["groups"] = {
							o(211379, {	-- Spare Plank
								i(80685),	-- Spare Plank (QI!)
							}),
							o(211382, {	-- Tough Kelp
								i(80804),	-- Tough Kelp (QI!)
							}),
						},
					}),
					q(30675, {	-- Buried Hozen Treasure
						["provider"] = { "i", 80827 },	-- Confusing Treasure Map
						["coord"] = { 48.1, 90.8, KRASARANG_WILDS },	-- general midpoint-ish area, since the mobs are spread out around the island
						["crs"] = {
							60299,	-- Unga Fish-Getter
							60357,	-- Unga Treasure-Hider
							60358,	-- Unga Villager
						},
						["groups"] = {
							o(211420, {	-- Lump of Sand
								i(80817),	-- Buried Hozen Treasure (QI!)
							}),
							i(80822),	-- The Golden Banana (TOY!)
						},
					}),
					q(30082, {	-- Cheer Up, Yi-Mo
						["sourceQuests"] = { 30080 },	-- Finding Yi-Mo
						["qg"] = 58376,	-- Yi-Mo Longbrow
						["coord"] = { 85.5, 0.74, KRASARANG_WILDS },
						["groups"] = {
							i(81440),	-- Nayeli Hood
							i(81441),	-- Mortbreath Helm
							i(81442),	-- Deepwild Helm
							i(81443),	-- Narsong Headcover
							i(81444),	-- Angkhal Cowl
							i(81445),	-- Riverblade Helm
							i(81446),	-- Sarjun Helm
							i(81447),	-- Korjan Helm
							i(81448),	-- Dojani Helm
						},
					}),
					q(30352, {	-- Crane Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
					}),
					q(30126, {	-- Crane Mastery
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in the version above
					}),
					q(31262, {	-- Crane Mastery: Needlebeak
						["sourceQuests"] = { 30352 },	-- Crane Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(85854),	-- The Needlebeak (QI!)
							i(88052),	-- Nayeli Waistband
							i(88051),	-- Mortbreath Waistband
							i(88050),	-- Deepwild Belt
							i(88049),	-- Narsong Waistband
							i(88048),	-- Angkhal Waistband
							i(88047),	-- Riverblade Waistband
							i(88046),	-- Sarjun Belt
							i(88045),	-- Korjan Waistband
							i(88044),	-- Dojani Waistband
						},
					}),
					q(30080, {	-- Finding Yi-Mo
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.7, 1.57, KRASARANG_WILDS },
					}),
					q(30174, {	-- For Family
						["sourceQuests"] = {
							30164,	-- The Stoneplow Convoy
							30175,	-- The Mantid (H)
						},
						["qg"] = 58607,	-- Sunwalker Dezco
						["coord"] = { 15.3, 36.2, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(81449),	-- Nayeli Mantle
							i(81450),	-- Mortbreath Spaulder
							i(81451),	-- Deepwild Pauldrons
							i(81452),	-- Narsong Spaulders
							i(81453),	-- Angkhal Amice
							i(81454),	-- Riverblade Spaulder
							i(81455),	-- Sarjun Spaulders
							i(81456),	-- Korjan Shoulders
							i(81457),	-- Dojani Shoulders
						},
					}),
					q(30163, {	-- For the Tribe
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["qg"] = 58114,	-- Kor Bloodtusk
						["coord"] = { 29.0, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30363, {	-- Going on the Offensive
						["sourceQuests"] = { 30348 },	-- Immortality?
						["qg"] = 58735,	-- Lyalia
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						-- does this also require "Lotus Tea" (30351) and "Threats from Dojan" (30349)?
						["groups"] = {
							i(79332),	-- Sentinel Scout's Report (QI!)
						},
					}),
					q(30465, {	-- Going on the Offensive
						["qg"] = 58735,	-- Lyalia
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						-- does this have different SQs than the previous version?
					}),
					q(30132, {	-- Going West
						["description"] = "This version is available if you have not completed the Temple of the Red Crane questline.",
						["sourceQuests"] = { 30131 },	-- Life
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 63.1, 20.7, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1, "questID", 30273 },	-- In the House of the Red Crane
						["groups"] = {
							i(79745),	-- Sunwalker Scout's Report (QI!)
						},
					}),
					q(30464, {	-- Going West
						["sourceQuests"] = {
							30131,	-- Life
							30273,	-- In the House of the Red Crane
						},
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 63.1, 20.7, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30130, {	-- Herbal Remedies
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 62.6, 20.0, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(210209, {	-- Imperial Lotus
								i(78918),	-- Imperial Lotus Leaves (QI!)
							}),
							i(88532),	-- Lotus Water
						},
					}),
					heroscall(q(49558, {	-- Hero's Call: Krasarang Wilds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 81,
					})),
					q(30376, {	-- Hope Springs Eternal
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							29990,	-- Training and Discipline
							-- TODO: may also require the following quests:
							-- 29581,	-- The Golden Dream
							-- 29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["qg"] = 59719,	-- Chi-Ji
						["coord"] = { 41.6, 46.3, KRASARANG_WILDS },
						["isBreadcrumb"] = true,
					}),
					q(30348, {	-- Immortality?
						["sourceQuests"] = {
							30347,	-- The Pools of Youth
							30349,	-- Threat from Dojan (A)
							30351,	-- Lotus Tea (A)
						},
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 70.7, 28.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30273, {	-- In the House of the Red Crane
						["sourceQuests"] = {
							30695,	-- Ahead on the Way
							30271,	-- Sha Can Awe
							30272,	-- Striking the Rain
						},
						["qg"] = 59608,	-- Anduin Wrynn
						-- Anduin seems to follow you constantly even if you abandon this, so coords appear to be unnecessary
						["groups"] = {
							i(81493),	-- Dojani Girdle
							i(81492),	-- Korjan Girdle
							i(81491),	-- Sarjun Waistguard
							i(81490),	-- Riverblade Belt
							i(81489),	-- Angkhal Cord
							i(81488),	-- Narsong Clasp
							i(81487),	-- Deepwild Waistguard
							i(81486),	-- Mortbreath Belt
							i(81485),	-- Nayeli Cord
						},
					}),
					q(30178, {	-- Into the Wilds
						["sourceQuests"] = { 30090 },	-- Zhu's Despair
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30462, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						-- does this have different SQs than the previous version?
					}),
					q(30133, {	-- Into the Wilds
						["sourceQuests"] = { 30090 },	-- Zhu's Despair
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["groups"] = {
							i(79825),	-- Zhu's Watch Supplies (QI!)
						},
					}),
					q(30461, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						-- does this have different SQs than the previous version?
					}),
					q(30131, {	-- Life
						["sourceQuests"] = {
							30128,	-- The Pools of Youth
							30130,	-- Herbal Remedies
						},
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 62.6, 19.9, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30351, {	-- Lotus Tea
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["qg"] = 56114,	-- Kang Bramblestaff
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(78918),	-- Imperial Lotus Leaves (QI!)
							i(88532),	-- Lotus Water
						},
					}),
					q(30081, {	-- Materia Medica
						["sourceQuests"] = {
							30079,	-- What's Eating Zhu's Watch?
							30082,	-- Cheer Up, Yi-Mo
						},
						["qg"] = 56115,	-- Ken-ken
						["coord"] = { 80.2, 1.00, KRASARANG_WILDS },
						["groups"] = {
							o_repeated({
								i(78877),	-- Slick Mudfish (QI!)
								o(210184),	-- Slick Mudfish
								o(210186),	-- Slick Mudfish
							}),
							o(210188, {	-- Chunk of Honeycomb
								i(78881),	-- Chunk of Honeycomb (QI!)
							}),
							i(78880),	-- Salty Core (QI!)
						},
					}),
					applyclassicphase(MOP_PHASE_LANDFALL, q(32246, {	-- Meet the Scout (A)
						["sourceQuests"] = { 31483 },	-- Incoming...
						["qg"] = 64610,	-- Lyalia
						["coord"] = { 84.0, 58.7, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_1_0 },
						["races"] = ALLIANCE_ONLY,
					})),
					applyclassicphase(MOP_PHASE_LANDFALL, q(32249, {	-- Meet the Scout (H)
						["sourceQuests"] = { 31483 },	-- Incoming...
						["qg"] = 64566,	-- Sunwalker Dezco
						["coord"] = { 62.8, 27.9, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_1_0 },
						["races"] = HORDE_ONLY,
					})),
					q(30691, {	-- Misery
						["sourceQuests"] = { 30669 },	-- The Lorewalker on the Lake
						["qg"] = 60139,	-- Wise Ana Wu
						["coord"] = { 47.6, 78.1, KRASARANG_WILDS },
					}),
					q(30354, {	-- No Sister Left Behind
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["qg"] = 58821,	-- Lyalia
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30667, {	-- Particular Plumage
						["qg"] = 60182,	-- Tony Tuna
						["coord"] = { 53.7, 74.4, KRASARANG_WILDS },
						["groups"] = {
							i(80677),	-- Emerald Tailfeather (QI!)
							i(80678),	-- Crimson Tailfeather (QI!)
							i(80679),	-- Dusky Tailfeather (QI!)
						},
					}),
					q(30179, {	-- Poisoned!
						["sourceQuests"] = {
							30121,	-- Search Party
						},
						["qg"] = 58160,	-- Chizen Dawnchaser
						["coord"] = { 60.4, 25.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(79252),	-- Mogu Poisoned Blade (QI!)
							i(81522),	-- Ring of the Pools of Youth
							i(81523),	-- Ring of Tears
							i(81524),	-- Toothrow Band
							i(81525),	-- Seal of Lost Centuries
							i(81526),	-- Seal of the Forbidden Jungle
						},
					}),
					q(30353, {	-- Profit Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(78914),	-- Vial of Tiger Blood (QI!)
							i(81494),	-- Nayeli Gloves
							i(81495),	-- Mortbreath Gloves
							i(81496),	-- Deepwild Gauntlets
							i(81497),	-- Narsong Gloves
							i(81498),	-- Angkhal Handguards
							i(81499),	-- Riverblade Gloves
							i(81500),	-- Sarjun Gauntlets
							i(81501),	-- Krojan Gauntlets
							i(81502),	-- Dojani Gauntlets
						},
					}),
					q(30125, {	-- Profit Mastery
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in the version above
					}),
					q(31260, {	-- Profit Mastery: Chasheen
						["sourceQuests"] = { 30353 },	-- Profit Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(85774),	-- Ancient Tiger's Blood (QI!)
						},
					}),
					q(30169, {	-- Raid Leader Slovan
						["qg"] = 58278,	-- Tired Shushen <Waterspeaker>
						["coord"] = { 29.7, 39.0, KRASARANG_WILDS },
						["groups"] = {
							i(88387),	-- Shushen's Spittoon (TOY!)
						},
					}),
					q(30355, {	-- Re-Reclaim (A)
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["qg"] = 56114,	-- Kang Bramblestaff
						["coord"] = { 25.2, 30.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81503),	-- Nayeli Cuffs
							i(81504),	-- Mortbreath Bindings
							i(81505),	-- Deepwild Armguards
							i(81506),	-- Narsong Bracers
							i(81507),	-- Angkhal Cuffs
							i(81508),	-- Riverblade Armwraps
							i(81509),	-- Sarjun Wristguards
							i(81510),	-- Korjan Armplates
							i(81511),	-- Dojani Bracers
						},
					}),
					q(30230, {	-- Re-Reclaim (H)
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["qg"] = 56112,	-- Kang Bramblestaff
						["races"] = HORDE_ONLY,
						["groups"] = {
							o_repeated({
								i(79120),	-- Mogu Artifact (QI!)
								o(210416),	-- Mogu Artifact
								o(210417),	-- Mogu Artifact
								o(210418),	-- Mogu Artifact
							}),
							i(81503),	-- Nayeli Cuffs
							i(81504),	-- Mortbreateh Bindings
							i(81505),	-- Deepwild Armguards
							i(81506),	-- Narsong Bracers
							i(81507),	-- Angkhal Cuffs
							i(81508),	-- Riverblade Armwaraps
							i(81509),	-- Sarjun Wristguards
							i(81510),	-- Korjan Armplates
							i(81511),	-- Dojani Bracers
						},
					}),
					q(30375, {	-- Sea Snakes
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in 30268, "The Murksweats"
					}),
					q(30121, {	-- Search Party
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 59.8, 24.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30083, {	-- Securing the Province
						["sourceQuests"] = { 30091 },	-- Tears of Pandaria
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.7, 1.56, KRASARANG_WILDS },
						["groups"] = {
							i(81512),	-- Sha-Haunted Locket
							i(81513),	-- Choker of Despair
							i(81514),	-- Wildscale Amulet
							i(81515),	-- Red Crane Pendant
							i(81516),	-- Pendant of the Lost Dynasty
						},
					}),
					q(30356, {	-- Sever Their Supply Line
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["qg"] = 58821,	-- Lyalia
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30271, {	-- Sha Can Awe
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["qgs"] = {
							59188,	-- Anduin Wrynn
							59189,	-- Anduin Wrynn
							59608,	-- Anduin Wrynn
						},
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30123, {	-- Skitterer Stew
						["sourceQuests"] = { 30179 },	-- Poisoned!
						["qg"] = 56112,	-- Kang Bramblestaff
						["coord"] = { 62.7, 20.3, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(78911),	-- Intact Skitterer Glands (QI!)
						},
					}),
					q(30350, {	-- Squirmy Delight
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["qg"] = 56114,	-- Kang Bramblestaff
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(78911),	-- Intact Skitterer Glands (QI!)
							i(88388),	-- Squirmy Delight
						},
					}),
					q(30272, {	-- Striking the Rain
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["qg"] = 59138,	-- Koro Mistwalker
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30666, {	-- Sudden, Unexpected Crocolisk Aggression
						["qg"] = 60173,	-- Jay Cloudfall
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
					}),
					q(30091, {	-- Tears of Pandaria
						["sourceQuests"] = { 30082 },	-- Cheer Up, Yi-Mo
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.7, 1.57, KRASARANG_WILDS },
					}),
					q(30274, {	-- The Arcanic Oubliette
						["coord"] = { 70.6, 28.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30229, {	-- The Greater Danger
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["qg"] = 58114,	-- Kor Bloodtusk
						["coord"] = { 29.0, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30359, {	-- The Lord Reclaimer
						["sourceQuests"] = {
							30361,	-- The Mantid
							30357,	-- The Stoneplow Convoy
						},
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 14.3, 35.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30669, {	-- The Lorewalker on the Lake
						["sourceQuests"] = { 30668 },	-- Build Your Own Raft
						["qg"] = 60173,	-- Jay Cloudfall
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
					}),
					q(30344, {	-- The Lost Dynasty
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 50.9, 31.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(79713),	-- Dynastic Tablet (QI!)
							i(81522),	-- Ring of the Pools of Youth
							i(81523),	-- Ring of Tears
							i(81524),	-- Toothrow Band
							i(81525),	-- Seal of Lost Centuries
							i(81526),	-- Seal of the Forbidden Jungle
						},
					}),
					q(30361, {	-- The Mantid (A)
						["sourceQuests"] = {
							30354,	-- No Sister Left Behind
							30355,	-- Re-Reclaim
							30356,	-- Sever Their Supply Line
						},
						["qg"] = 58630,	-- Ambassador Han
						["coord"] = { 24.9, 30.2, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81458),	-- Nayeli Robe
							i(81459),	-- Mortbreath Robes
							i(81460),	-- Deepwild Armor
							i(81461),	-- Narsong Chestguard
							i(81462),	-- Angkhal Robe
							i(81463),	-- Riverblade Tunic
							i(81464),	-- Sarjun Chestguard
							i(81465),	-- Korjan Chestpiece
							i(81466),	-- Dojani Chestpiece
						},
					}),
					q(30175, {	-- The Mantid (H)
						["sourceQuests"] = {
							30230,	-- Re-Reclaim
							30229,	-- The Greater Danger
							30163,	-- For the Tribe
						},
						["qg"] = 58630,	-- Ambassador Han
						["coord"] = { 29.3, 48.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(81458),	-- Nayeli Robe
							i(81459),	-- Mortbreath Robes
							i(81460),	-- Deepwild Armor
							i(81461),	-- Narsong Chestguard
							i(81462),	-- Angkhal Robe
							i(81463),	-- Riverblade Tunic
							i(81464),	-- Sarjun Chestguard
							i(81465),	-- Korjan Chestpiece
							i(81466),	-- Dojani Chestpiece
						},
					}),
					q(30129, {	-- The Mogu Agenda
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["qg"] = 56112,	-- Kang Bramblestaff
						["coord"] = { 62.7, 20.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(78917),	-- Dojani Orders (QI!)
						},
					}),
					q(30268, {	-- The Murksweats
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["qg"] = 58609,	-- Anduin Wrynn
						["coord"] = { 41.6, 30.5, KRASARANG_WILDS },
						["groups"] = {
							i(79199),	-- Murkscale Head (QI!)
							i(81517),	-- Murksweat Ward
							i(81518),	-- Lory Feather Band
							i(81519),	-- Snakejaw Band
							i(81520),	-- Snakeswarm Ring
							i(81521),	-- Murkscale Band
						},
					}),
					q(30347, {	-- The Pools of Youth (A)
						["sourceQuests"] = { 30346 },	-- Where are the Pools
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 70.6, 28.4, KRASARANG_WILDS },	-- automatically offered, but this is where it's picked up if you abandon it
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81537),	-- Drape of the Lagoon
							i(81538),	-- Waterfall Drape
							i(81539),	-- Canopy Drape
							i(81540),	-- Greenback Cape
							i(81541),	-- Balmy Drape
						},
					}),
					q(30128, {	-- The Pools of Youth (H)
						["sourceQuests"] = { 30129 },	-- The Mogu Agenda
						["qg"] = 58206,	-- Kang Bramblestaff
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(210229, {	-- Water of Youth
								i(78934),	-- The Water of Youth (QI!)
							}),
							i(81537),	-- Drape of the Lagoon
							i(81538),	-- Waterfall Drape
							i(81539),	-- Canopy Drape
							i(81540),	-- Greenback Cape
							i(81541),	-- Balmy Drape
						},
					}),
					q(30357, {	-- The Stoneplow Convoy (A)
						["sourceQuests"] = {
							30354,	-- No Sister Left Behind
							30355,	-- Re-Reclaim
							30356,	-- Sever Their Supply Line
						},
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 14.3, 35.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(84291),	-- Imperial Lotus Shawl
							i(84292),	-- Imperial Lotus Drape
							i(84293),	-- Imperial Lotus Cape
							i(84294),	-- Imperial Lotus Manteau
							i(84295),	-- Imperial Lotus Cloak
						},
					}),
					q(30164, {	-- The Stoneplow Convoy (H)
						["sourceQuests"] = {
							30163,	-- For the Tribe
							30230,	-- Re-Reclaim
							30229,	-- The Greater Danger
						},
						["qg"] = 58607,	-- Sunwalker Dezco
						["coord"] = { 15.2, 36.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(79163),	-- Imperial Lotus Poultice (QI!)
						},
					}),
					q(30445, {	-- The Waters of Youth
						["sourceQuests"] = { 30359 },	-- The Lord Reclaimer
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 24.8, 29.8, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81449),	-- Nayeli Mantle
							i(81450),	-- Mortbreath Spaulder
							i(81451),	-- Deepwild Pauldrons
							i(81452),	-- Narsong Spaulders
							i(81453),	-- Angkhal Amice
							i(81454),	-- Riverblade Spaulder
							i(81455),	-- Sarjun Spaulders
							i(81456),	-- Korjan Shoulders
							i(81457),	-- Dojani Shoulders
						},
					}),
					q(30168, {	-- Thieving Raiders
						["qg"] = 58278,	-- Tired Shushen
						["coord"] = { 29.7, 39.0, KRASARANG_WILDS },
						["groups"] = {
							i(78958),	-- Pillaged Jinyu Loot (QI!)
							i(81532),	-- Silkspawn Carving
							i(81534),	-- Carp Hunter Feather
							i(81535),	-- Glade Pincher Feather
							i(81536),	-- Jungle Huntress Idol
						},
					}),
					q(30349, {	-- Threat from Dojan (A)
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["qg"] = 58735,	-- Lyalia
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(84281),	-- Bramble Locket
							i(84282),	-- Bramble Choker
							i(84283),	-- Bramble Necklace
							i(84284),	-- Bramble Pendant
							i(84285),	-- Bramble Amulet
						},
					}),
					q(30127, {	-- Threat from Dojan (H)
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["qg"] = 58114,	-- Kor Bloodtusk
						["coord"] = { 62.6, 20.0, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30694, {	-- Tread Lightly
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["qg"] = 59138,	-- Koro Mistwalker
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
						["groups"] = {
							i(80828),	-- "Scrutiny" (QI!)
							i(84272),	-- Mistwalker Satin Leggings
							i(84273),	-- Mistwalker Hide leggaurds
							i(84274),	-- Deepwild Leg Armor
							i(84275),	-- Mistwalker Burnished Legplates
							i(84276),	-- Mistwalker Silk Trousers
							i(84277),	-- Mistwalker Leather Legguards
							i(84278),	-- Sarjun Legguards
							i(84279),	-- Mistwalker Heavy Legguards
							i(84280),	-- Mistwalker Armored Legguards
						},
					}),
					q(30269, {	-- Unsafe Passage
						["sourceQuests"] = {
							-- unclear what the difference is in these. the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't. possibly there are different versions if you abandon/re-pick up?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
							30178,	-- Into the Wilds (A)
							30462,	-- Into the Wilds (A)
							30461,	-- Into the Wilds (H)
							30133,	-- Into the Wilds (H)
						},
						["qg"] = 58547,	-- Koro Mistwalker
						["coord"] = { 45.6, 39.5, KRASARANG_WILDS },
					}),
					warchiefscommand(q(49540, {	-- Warchief's Command: Krasarang Wilds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(30360, {	-- Warn Stoneplow (A)
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							30445,	-- The Waters of Youth
							29990,	-- Training and Discipline
							-- TODO: may also require the following quests:
							-- 29581,	-- The Golden Dream
							-- 29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["qg"] = 58821,	-- Lyalia
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30241, {	-- Warn Stoneplow (H)
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							29990,	-- Training and Discipline
							-- TODO: may also require the following quests:
							-- 29581,	-- The Golden Dream
							-- 29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["qg"] = 58607,	-- Sunwalker Dezco
						["coord"] = { 29.1, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30079, {	-- What's Eating Zhu's Watch?
						["sourceQuests"] = {
							29873,	-- Ken-Ken
							-- #if AFTER 7.3.5
							49540,	-- Warchief's Command: Krasarang Wilds!
							49558,	-- Hero's Call: Krasarang Wilds!
							-- #endif
						},
						["qg"] = 56115,	-- Ken-Ken
						["coord"] = { 80.2, 1.02, KRASARANG_WILDS },
					}),
					q(30346, {	-- Where are the Pools
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30088, {	-- Why So Serious?
						["sourceQuests"] = { 30081 },	-- Materia Medica
						["qg"] = 56115,	-- Ken-Ken
						["coord"] = { 80.2, 0.94, KRASARANG_WILDS },
						["groups"] = {
							i(78941),	-- Huge Panther Fang (QI!)
							o(210228, {	-- Jar of Pigment
								i(78942),	-- Jar of Pigment (QI!)
							}),
							i(88061),	-- Nayeli Handwraps
							i(88060),	-- Mortbreath Handwraps
							i(88059),	-- Deepwild Handguards
							i(88058),	-- Narsong Handwraps
							i(88057),	-- Angkhal Handwraps
							i(88056),	-- Riverblade Handwraps
							i(88055),	-- Sarjun Handwraps
							i(88054),	-- Korjan Handwraps
							i(88053),	-- Dojani Handwraps
						},
					}),
					q(30671, {	-- Wisdom Has A Price
						["sourceQuests"] = { 30669 },	-- The Lorewalker on the Lake
						["qg"] = 60139,	-- Wise Ana Wu
						["coord"] = { 47.6, 78.1, KRASARANG_WILDS },
						["groups"] = {
							i(80810),	-- Shark Fillet (QI!)
							i(88043),	-- Nayeli Shoes
							i(88042),	-- Mortbreath Shoes
							i(88041),	-- Deepwild Greaves
							i(88040),	-- Narsong Shoes
							i(88039),	-- Angkhal Shoes
							i(88038),	-- Riverblade Shoes
							i(88037),	-- Sarjun Boots
							i(88036),	-- Korjan Shoes
							i(88035),	-- Dojani Shoes
						},
					}),
					q(30090, {	-- Zhu's Despair
						["sourceQuests"] = { 30089 },	-- Apply Directly to the Forehead
						["qg"] = 56115,	-- Ken-Ken
						["coord"] = { 80.2, 1.00, KRASARANG_WILDS },
						["groups"] = {
							i(79057),	-- Ken'Ken's Mask (QI!)
							i(88580),	-- Ken-Ken's Mask (TOY!)
						},
					}),
					q(36882, {	-- The Great Angler Returns
						["sourceQuests"] = { 36608 },	-- Finding Nat Pagle
						["qg"] = 63721,	-- Nat Pagle
						["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
						["timeline"] = { ADDED_6_0_3_LAUNCH },
						["requireSkill"] = FISHING,
						["races"] = ALLIANCE_ONLY,
					}),
					q(36609, {	-- The Great Angler Returns
						["sourceQuests"] = { 36608 },	-- Finding Nat Pagle
						["qg"] = 63721,	-- Nat Pagle
						["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
						["timeline"] = { ADDED_6_0_3_LAUNCH },
						["requireSkill"] = FISHING,
						["races"] = HORDE_ONLY,
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50787,	-- Arness the Scale
							50768,	-- Cournith Waterstrider
							50331,	-- Go-Kan
							50340,	-- Gaarn the Toxic
							50352,	-- Qu'nas
							50816,	-- Ruun Ghostpaw
							50830,	-- Spriggin
							50388,	-- Torik-Ethis
						},
						["groups"] = {
							i(87612),	-- Ancient Krasari Helm
							i(87604),	-- Beachcomber's Hat
							i(87609),	-- Brushstalker Helm
							i(87610),	-- Deepwild Hunting Helm
							i(87608),	-- Korjan Mystic's Hood
							i(87606),	-- Tidehunter Helm
							i(87607),	-- Unearthed Dojani Headcover
							i(87605),	-- Crest of the Red Crane
							i(87611),	-- Shen-zin Shell Headguard
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50787, {	-- Arness the Scale
						["coord"] = { 58.7, 43.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
						["groups"] = {
							i(90723),	-- Arnness's Scaled Leggings
						},
					}),
					n(66936, {	-- Clawlord Kril'mandar <The Pinch King>
						["provider"] = { "i", 90172 },	-- Clamshell Band
						["description"] = "Summoned with Clamshell Band, which is created by items dropping from makrura along the coast of Pandaria. Akkalou and Akkalar can be found in The Jade Forest, Damlak in Krasarang Wilds, Kishak in Kun-Lai Summit, Odd'nirok in Townlong Steppes and Clamstok in the Dread Wastes.",
						["coord"] = { 12.6, 82.0, KRASARANG_WILDS },
						["cost"] = {
							{ "i", 90170, 1 },	-- Clamstok's Clamshell [Dread Wastes]
							{ "i", 90169, 1 },	-- Damlak's Clamshell [Krasarang Wilds]
							{ "i", 90168, 1 },	-- Kishak's Clamshell [Kun-Lai Summit]
							{ "i", 90167, 1 },	-- Akkalar's Clamshell [The Jade Forest]
							{ "i", 90166, 1 },	-- Akkalou's Clamshell [The Jade Forest]
							{ "i", 90171, 1 },	-- Odd'nirok's Clamshell [Townlong Steppes]
						},
						["groups"] = {
							i(90087, {	-- Lobstmourne
								["description"] = "Everyone in the group that tags Clawlord will receive their own copy of this item. Bring friends to spread the fun.",
							}),
						},
					}),
					n(50768, {	-- Cournith Waterstrider
						["coord"] = { 30.6, 38.2, KRASARANG_WILDS },
						["groups"] = {
							i(90721),	-- Cournith Waterstrider's Silken Finery
						},
					}),
					n(66934, {	-- Damlak <Servant of Kril'mandar>
						["coords"] = {
							{ 40.0, 88.6, KRASARANG_WILDS },
							{ 38.8, 87.4, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90169),	-- Damlak's Clamshell
						},
					}),
					n(50331, {	-- Go-Kan
						["coord"] = { 39.4, 28.8, KRASARANG_WILDS },
						["groups"] = {
							i(90719),	-- Go-Kan's Golden Trousers
						},
					}),
					n(50340, {	-- Gaarn the Toxic
						["coords"] = {
							{ 56.2, 28.0, KRASARANG_WILDS },
							{ 58.6, 31.4, KRASARANG_WILDS },
							{ 58.6, 34.4, KRASARANG_WILDS },
							{ 54.0, 32.2, KRASARANG_WILDS },
							{ 56.2, 35.2, KRASARANG_WILDS },
							{ 56.2, 38.2, KRASARANG_WILDS },
							{ 53.6, 38.8, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90725),	-- Gaarn's Leggings of Infestation
						},
					}),
					n(50352, {	-- Qu'nas
						["coord"] = { 67.2, 23.0, KRASARANG_WILDS },
						["groups"] = {
							i(90717),	-- Qu'nas' Apocryphal Legplates
						},
					}),
					n(50816, {	-- Ruun Ghostpaw
						["coords"] = {
							{ 39.4, 55.2, KRASARANG_WILDS },
							{ 41.6, 55.2, KRASARANG_WILDS },
							{ 40.4, 52.8, KRASARANG_WILDS },
							{ 42.8, 52.8, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90720),	-- Silent Leggings of the Ghostpaw
						},
					}),
					n(50830, {	-- Spriggin
						["coord"] = { 52.2, 88.8, KRASARANG_WILDS },
						["groups"] = {
							i(90724),	-- Spriggin's Sproggin' Leggin'
						},
					}),
					n(50388, {	-- Torik-Ethis
						["coords"] = {
							{ 14.6, 31.0, KRASARANG_WILDS },
							{ 14.4, 35.6, KRASARANG_WILDS },
							{ 15.6, 35.6, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90718),	-- Torik-Ethis' Bloodied Legguards
						},
					}),
				}),
				n(TREASURES, {
					o(214439, {	-- Barrel of Banana Infused Rum
						["questID"] = 31411,	-- Barrel of Banana Infused Rum Quest Tracker
						["coords"] = {
							-- coords vary due to zone phasing
							{ 52.3, 88.7, KRASARANG_WILDS },
							{ 54.0, 88.0, KRASARANG_WILDS },
						},
						["groups"] = {
							i(87266),	-- Recipe: Banana-Infused Rum (RECIPE!)
						},
					}),
					o(213651, {	-- Equipment Locker
						["coord"] = { 42.3, 91.9, KRASARANG_WILDS },
						["icon"] = 644388,
						["questID"] = 31410,
						["description"] = "On the bottom level of the ship. You will have to go down two sets of stairs.\nThis chest may follow the personal loot rule and be based on your current spec, NOT your Loot Spec.",
						["groups"] = {
							i(86122, {	-- Plankwalking Greaves
								["description"] = "Recommended to be in a Strength DPS Spec to guarantee this item.",
							}),
							i(86115, {	-- Swashbuckling Boots
								["description"] = "Recommended to be in a Leather Agility Spec (Rogue/Feral/Guardian/Brewmaster/Windwalker) to guarantee this item.",
							}),
							i(86117, {	-- Seafarer's Treads of Precision
								["description"] = "Recommended to be in a Cloth DPS Spec (Mage/Warlock) to guarantee this item.",
							}),
							i(86116, {	-- Agile Seafarer's Jackboots
								["description"] = "Recommended to be in a Mail Agility Spec (Hunter/Enhancement) to guarantee this item.",
							}),
							i(86123, {	-- Seafarer's Sturdy Boots
								["description"] = "Recommended to be in a Strength Tank Spec to guarantee this item.",
							}),
							i(86118, {	-- Seafaring Advisor's Slippers
								["description"] = "Recommended to be a Priest (ingame class) to guarantee this item.",
							}),
							i(86119, {	-- Seafarer's Boots of Meditation
								["description"] = "Recommended to be in a Leather Intellect Spec (Mistweaver/Balance/Restoration) to guarantee this item.",
							}),
							i(86120, {	-- Seafaring Sabatons of Meditation
								["description"] = "Recommended to be in a Mail Intellect Spec (Elemental/Restoration) to guarantee this item.",
							}),
							i(86121, {	-- Radiant Seafarer's Boots
								["description"] = "Recommended to be a Paladin in Holy Spec to guarantee this item.",
							}),
						},
					}),
					o(211993, {	-- Hozen Maturity
						["coord"] = { 52.4, 87.6, KRASARANG_WILDS },
					}),
					o(215782, {	-- Origins
						["coord"] = { 30.6, 38.5, KRASARANG_WILDS },
					}),
					o(213653, {	-- Pandaren Fishing Spear
						["coord"] = { 50.8, 49.3, KRASARANG_WILDS },
						["questID"] = 31409,
						["groups"] = {
							i(86124),	-- Pandaren Fishing Spear
						},
					}),
					o(213407, {	-- Quan Tou Kuo the Two Fisted
						["coord"] = { 81.4, 11.4, KRASARANG_WILDS },
					}),
					o(213750, {	-- Saurok Stone Tablet
						["questID"] = 31408,
						["coord"] = { 71.0, 9.0, KRASARANG_WILDS },
						["description"] = "Located at the back of the cave, to the right of the junk pile.",
						["groups"] = {
							i(86220),	-- Saurok Stone Tablet
						},
					}),
					o(214403, {	-- Stack of Papers
						["provider"] = { "i", 87798 },	-- Stack of Papers
						["coord"] = { 52.16, 73.42, KRASARANG_WILDS },
						["questID"] = 31863,
					}),
					o(213422, {	-- The Emperor's Burden - Part 4
						["coord"] = { 40.4, 56.6, KRASARANG_WILDS },
					}),
					o(213330, {	-- The Last Stand
						["coord"] = { 33.3, 25.0, KRASARANG_WILDS },
					}),
					o(213332, {	-- The Lost Dynasty
						["coords"] = {
							-- not sure correctness of these based on phasing maybe?
							{ 50.90, 31.67, KRASARANG_WILDS },
							{ 52.96, 27.42, KRASARANG_WILDS },
						},
					}),
					o(215765, {	-- Waiting for the Turtle
						["coord"] = { 72.2, 31.1, KRASARANG_WILDS },
					}),
				}),
				n(ZONE_DROPS, {
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(KRASARANG_WILDS, {
		n(QUESTS, {
			q(30087),	-- FLAG - Kung Fu Intro — triggers either when flying close to the magical barrier or after accepting The "Arcanic Oubliette" (questID 30274)
			q(32477, { ["timeline"] = { ADDED_5_1_0 } }),	-- Tracking Event: Player is Back in Time - going back and forth in time via Taradormi
		}),
	}),
})));
