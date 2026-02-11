-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2 } }, {
	inst(1197, {	-- Uldaman: Legacy of Tyr
		["coord"] = {41.2, 10.3, BADLANDS },
		["maps"] = {
			2071,	-- Hall of the Keepers
			2072,	-- The Vault of Tyr
		},
		["groups"] = {
			n(QUESTS, {
				q(71093, {	-- Legacy of Tyr: Secrets of the Past
					["description"] = "Given on zoning into the instance on a character that did not do the pre-patch version of this quest.",
					["altQuests"] = {
						66458,	-- Legacy of Tyr: Secrets of the Past [A]
						66586,	-- Legacy of Tyr: Secrets of the Past [H]
					},
					["timeline"] = { ADDED_10_0_2_LAUNCH },
					["_drop"] = { "r" },	-- bad API data
				}),
			}),
			n(ZONE_DROPS, {
				i(194256),	-- Pattern: Hood of Surging Time (RECIPE!)
			}),
			n(TREASURES, {
				o(384653, {	-- Ancient Volume
					["description"] = "After second boss room, to the right of the broken bench.",
					["groups"] = {
						i(201920),	-- Obeservational Report: Earthen
					},
				}),
				o(384313, {	-- Ancient Volume
					["description"] = "Third boss room to the right of the exit door on the shelf.",
					["groups"] = {
						i(201727),	-- To My Staunchest Allies
					},
				}),
				o(384311, {	-- Ancient Volume
					["description"] = "Before entering the Fourth boss room on top of some chests.",
					["groups"] = {
						i(201722),	-- Edicts of the Prime Designate, Volume 742
					},
				}),
				o(384654, {	-- Ancient Volume
					["description"] = "To the right on shelf in the circle room before final boss.",
					["groups"] = {
						i(201833),	-- Wreckage Analysis Report
					},
				}),
				o(384312, {	-- Ancient Volume
					["description"] = "In the room before final boss, left side under the middle bench.",
					["groups"] = {
						i(201726),	-- Progress Report: Uldorus
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2475, {	-- The Lost Dwarves
					["crs"] = {
						184581,	-- Baelog
						184582,	-- Eric "The Swift"
						184580,	-- Olaf
					},
					["groups"] = {
						i(193812),	-- Fierce Boreal Armguards
						i(193815),	-- Homeland Raid Horn
						i(193816),	-- Lost Hero's Waist Wrap
						i(193819),	-- Old Seafarer's Headpiece
						i(193820),	-- Stout Shield
						i(193817),	-- Treads of the Swift
					},
				}),
				e(2487, {	-- Bromach
					["crs"] = { 184018 },	-- Bromach
					["groups"] = {
						i(193809),	-- Bromach's Disentombed Locket
						i(193813),	-- Excavated Earthen Wristslabs
						i(193810),	-- Miner's Sturdy Trousers
						i(193818),	-- Rock Shovelers
						i(193668),	-- Troggskin Waistband
						i(193814),	-- Unearthed Trogglodicer
					},
				}),
				e(2484, {	-- Sentinel Talondras
					["crs"] = { 184124 },	-- Sentinel Talondras
					["groups"] = {
						i(193806),	-- Ancient Crosswrapped Sandals
						i(193804),	-- Eternal Sentry's Ring
						i(193805, {	-- Inexorable Resonator
							["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_6 },
						}),
						i(212756, {	-- Inexorable Resonator
							["timeline"] = { ADDED_10_2_6 },
						}),
						i(193808),	-- Sentinel's Battle Lance
						i(193807),	-- Shoulders of Animated Stone
					},
				}),
				e(2476, {	-- Emberon
					["crs"] = { 184422 },
					["groups"] = {
						i(193792),	-- Animated Shackles
						i(193811),	-- Annora's Punctured Leggings
						i(193797),	-- Bouldersplitter
						i(193794),	-- Gatekeeper's Girdle
						i(193795),	-- Keeper's Iron Grips
						i(193796),	-- Vault Piercer
					},
				}),
				e(2479, {	-- Chrono-Lord Deios
					["crs"] = { 184125 },	-- Chrono-Lord Deios
					["groups"] = {
						ach(16278),	-- Uldaman: Legacy of Tyr
						i(193799),	-- Crazed Traveler's Legwraps
						i(193801),	-- Fatebound Chainmail
						i(193803),	-- Infinite Dragonspire
						i(193802),	-- Pauldrons of Immutable Truth
						i(193791),	-- Time-Breaching Talon
						i(193800),	-- Vision of Foreshadowed Ends
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2479, {	-- Chrono-Lord Deios
					["crs"] = { 184125 },	-- Chrono-Lord Deios
					["groups"] = {
						ach(16279),	-- Heroic: Uldaman: Legacy of Tyr
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2487, {	-- Bromach
					["crs"] = { 184018 },	-- Bromach
					["groups"] = {
						ach(16337),	-- It's a Trogg Eat Trogg World
					},
				}),
				e(2484, {	-- Sentinel Talondras
					["crs"] = { 184124 },	-- Sentinel Talondras
					["groups"] = {
						ach(16282),	-- No, You're Stunning!
					},
				}),
				e(2479, {	-- Chrono-Lord Deios
					["crs"] = { 184125 },	-- Chrono-Lord Deios
					["groups"] = {
						ach(16280),	-- Mythic: Uldaman: Legacy of Tyr
						ach(17103),	-- Mythic: Uldaman: Legacy of Tyr Guild Run
						ach(16281),	-- Like Sands Through the Hourglass
					},
				}),
			}),
		},
	})
})));
