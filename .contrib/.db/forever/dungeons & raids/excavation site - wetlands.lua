-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(2998, {	-- Excavation Site: Wetlands
		lore = "Rogue Titan constructs, mist and flashing lights at a dig in the Wetlands. The Explorers' League is taking an interest.",
		icon = [[~_.asset("excavationsite")]],
		["zone-text-areaID"] = 17732,	-- Excavation Site: Wetlands
		coord = { 48.1, 56.4, MAP.WETLANDS },
		timeline = { TIMELINE.ADDED_1_60_1 },
		lvl = 23,
		groups = {
			n(QUESTS, {
				q(95697, {	-- Changing Tastes
					qg = 3368,	-- Borstan <Meat Vendor>
					coord = { 57.4, 53.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/4 Thicket Raptor Meat
							provider = { "i", 271100 },	-- Thicket Raptor Meat
							crs = {
								260800,	-- Thicket Lurker
								260801,	-- Thicket Hunter
								271732,	-- Thicket Stalker
								260325,	-- Shadetooth
							},
						}),
						i(280766),	-- Satchel of Potions
						i(280805),	-- Serrated Raptor Claw
						i(250185),	-- Recipe: Twice-Spiced Raptor Slice (RECIPE!)
						i(250077),	-- Twice-Spiced Raptor Slice
					},
				}),
				q(95663, {	-- Dragonmaw Rumors
					qg = 2787,	-- Zaruk
					coord = { 74.4, 35.6, MAP.ARATHI_HIGHLANDS },
					maps = { MAP.WETLANDS },
					races = HORDE_ONLY,
					lvl = 24,
				}),
				q(98823, {	-- Earthen Echo
					sourceQuest = 95664,	-- Elder Knowledge
					qg = 9087,	-- Bashana Runetotem
					qi = 270866,	-- Titan Relic (H) (QS!)
					coord = { 70.8, 33.8, MAP.THUNDER_BLUFF },
					maps = { MAP.MULGORE },
					races = HORDE_ONLY,
					lvl = 24,
					groups = {
						i(271766),	-- Heavehammer
						i(271767),	-- Healer's Staff
						i(271719),	-- Furs of the Earthen Ring
					},
				}),
				q(95664, {	-- Elder Knowledge
					qs = 270866,	-- Titan Relic (H) (QS!)
					maps = { MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					lvl = 24,
				}),
				q(95795, {	-- Fallen in the Fen
					sourceQuest = 95772,	-- Songblade Search
					--provider = { "o",  },	-- Body of the brother, if an object	-- TODO: Get the objectID/name.
					qg = 262465,	-- Daewyn Songblade
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						i(271769),	-- Daewyn's Girdle
						i(271768),	-- Songblade Stabilizer
					},
				}),
				q(95809, {	-- Heartwoven
					sourceQuest = 95647,	-- Lost in the Thicket Things
					qg = 262681,	-- Ardin Grassman
					qi = 270901,	-- Reed-woven Heart
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						i(280766),	-- Satchel of Potions
						i(2459),	-- Swiftness Potion
						i(1710),	-- Greater Healing Potion
						i(3827),	-- Mana Potion
					},
				}),
				q(98815, {	-- Highland Hides
					qg = 2094,	-- James Halloran
					coord = { 8.6, 55.6, MAP.WETLANDS },
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/4 Thicket Raptor Hide
							provider = { "i", 284845 },	-- Thicket Raptor Hide
							crs = {
								260800,	-- Thicket Lurker
								260801,	-- Thicket Hunter
								271732,	-- Thicket Stalker
								260325,	-- Shadetooth
							},
						}),
					},
				}),
				q(95646, {	-- Horrors in the Highland
					qg = 1244,	-- Rethiel the Greenwarden
					coord = { 56.2, 40.5, MAP.WETLANDS },
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/1 Horrible Rootcore
							provider = { "i", 270180 },	-- Horrible Rootcore
						}),
						i(271667),	-- Ironwood Destroyer
						i(271664),	-- Hornbeam Heft
						i(271670),	-- Curl of Life
					},
				}),
				q(95647, {	-- Lost in the Thicket Things
					qg = 1480,	-- Caitlin Grassman
					coord = { 11.8, 58.6, MAP.WETLANDS },
					races = ALLIANCE_ONLY,
					lvl = 24,
				}),
				q(95810, {	-- Lost Relic Carry
					qs = 270865,	-- Titan Relic (A) (QS!)
					maps = { MAP.WETLANDS },
					races = ALLIANCE_ONLY,
					lvl = 24,
				}),
				q(95682, {	-- Open the Maw
					sourceQuest = 95663,	-- Dragonmaw Rumors
					qg = 13155,	-- Deathstalker Agent
					coord = { 51.4, 59.2, MAP.WETLANDS },
					races = HORDE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/2 Dragonmaw Saboteur slain
							provider = { "n", 275045 },	-- Dragonmaw Saboteur
						}),
						objective(2, {	-- 0/4 Dragonmaw Warder slain
							provider = { "n", 275044 },	-- Dragonmaw Warder
						}),
						objective(3, {	-- 0/1 Dragonmaw Dispatch
							provider = { "i", 284844 },	-- Dragonmaw Dispatch
							cr = 275046,	-- Dragonmaw Thaumaturgist
						}),
						i(271740),	-- Knife-Polishing Rag
						i(271732),	-- Dirt-Heavy Bracers
						i(271745),	-- Bloody Map
					},
				}),
				q(98824, {	-- Prehistoric Prism
					sourceQuest = 95810,	-- Lost Relic Carry
					qg = 1077,	-- Prospector Whelgar <Explorers' League>
					qi = 270865,	-- Titan Relic (A) (PQI!)
					coord = { 38.8, 52.2, MAP.WETLANDS },
					maps = { MAP.IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						i(271766),	-- Heavehammer
						i(271767),	-- Healer's Staff
						i(271716),	-- Explorer's League Dustcover
					},
				}),
				q(95772, {	-- Songblade Search
					qg = 956,	-- Dorin Songblade <Armorer>
					coord = { 25.8, 46.5, MAP.REDRIDGE_MOUNTAINS },
					races = ALLIANCE_ONLY,
					lvl = 24,
				}),
			}),
			e(3480, {	-- Saltspine
				creatureID = 260322,	-- Saltspine
				groups = {
					i(273023),	-- Saltscale Girdle
					i(273022),	-- Supple Bellyskin Leggings
					i(273024),	-- Glinteye Slippers
				},
			}),
			e(3481, {	-- Shadetooth
				creatureID = 260325,	-- Shadetooth
				groups = {
					i(273025),	-- Raptorclaw Greaves
					i(273026),	-- Garb of Florid Feathers
					i(273027),	-- Raptor's Gaze
					i(273106),	-- Blueprint: Greenhouse (RECIPE!)
				},
			}),
			e(3644, {	-- Highland Horror
				creatureID = 260808,	-- Highland Horror
				groups = {
					i(270180),	-- Horrible Rootcore
				},
			}),
			e(3482, {	-- Relic Guardian
				creatureID = 260326,	-- Relic Guardian
				groups = {
					i(273029),	-- Golemsight Long Gun
					i(273028),	-- Reliquary Mantle
					i(273030),	-- Ring of Power Regulation
					i(273097),	-- Blueprint: Rock Garden (RECIPE!)
					i(270865),	-- Titan Relic (A) (QS!)
					i(270866),	-- Titan Relic (H) (QS!)
				},
			}),
		},
	}),
});
