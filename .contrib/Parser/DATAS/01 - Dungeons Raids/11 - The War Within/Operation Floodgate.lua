-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	inst(1298, {	-- Operation: Floodgate
		["coord"] = { 42.2, 39.6, THE_RINGING_DEEPS },
		["maps"] = {
			2387,	-- The Waterworks
			2388,	-- The G.R.I.D
		},
		["groups"] = {
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2648, {	-- Big M.O.M.M.A.
					["crs"] = { 226398 },	-- Big M.O.M.M.A.
					["groups"] = {
						i(232542),	-- Darkfuse Medichopper
						i(234500),	-- Mechanized Junkpads
						i(234497),	-- Nonconductive Kill-o-Socks
						i(234503),	-- Skystreak's Hidden Missiles
						i(234491),	-- Sonic Ka-BOOM!-erang
					},
				}),
				e(2649, {	-- Demolition Duo
					["crs"] = {
						226402,	-- Bront
						226403,	-- Keeza Quickfuse
					},
					["groups"] = {
						i(234502),	-- Bront's Singed Blastcoat
						i(232541),	-- Improvised Seaforium Pacemaker
						i(234492),	-- Keeza's 'B.' B.B.B.F.G
						i(234505),	-- Venture Contractor's Floodlight
						i(234498),	-- Waterworks Filtration Mask
					},
				}),
				e(2650, {	-- Swampface
					["crs"] = { 226396 },	-- Swampface
					["groups"] = {
						i(236768),	-- Craboom (PET!)
						i(234499),	-- Disturbed Kelp Wraps
						i(234494),	-- Gallytech Turbo-Tiller
						i(234506),	-- Muckdiver's Wading Plate
						i(234495),	-- Razorchoke Slacks
						i(232543),	-- Ringing Ritual Mud
					},
				}),
				e(2651, {	-- Geezle Gigazap
					["crs"] = { 236950 },	-- Geezle Gigazap
					["groups"] = {
						ach(41339),	-- Operation: Floodgate
						i(234490),	-- Circuit Breaker
						-- #if BEFORE 11.2.0
						i(234507),	-- Electrician's Siphoning Filter
						-- #endif
						i(234493),	-- Geezle's Coercive Volt-ohmmeter
						i(232545),	-- Gigazap's Zap-Cap
						i(234504),	-- Jumpstarter's Scaffold-Scrapers
						i(234501),	-- Portable Power Generator
						i(234496),	-- Saboteur's Rubber Jacket
					},
				}),
			}),
			-- #if AFTER 11.2.0
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2651, {	-- Geezle Gigazap
					["crs"] = { 236950 },	-- Geezle Gigazap
					["groups"] = {
						i(234507),	-- Electrician's Siphoning Filter
					},
				}),
			}),
			-- #endif
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				-- #if AFTER 11.2.0
				e(2648, {	-- Big M.O.M.M.A.
					["crs"] = { 226398 },	-- Big M.O.M.M.A.
					["groups"] = {
						i(251880, {	-- Momma's Mega Medallion
							["timeline"] = { ADDED_11_2_0 },
						}),
						i(246278, {	-- Overpressure Platelegs
							["timeline"] = { ADDED_11_2_0 },
						}),
					},
				}),
				e(2649, {	-- Demolition Duo
					["crs"] = {
						226402,	-- Bront
						226403,	-- Keeza Quickfuse
					},
					["groups"] = {
						i(246279, {	-- Fizzlefuse Cuffs
							["timeline"] = { ADDED_11_2_0 },
						}),
					},
				}),
				e(2650, {	-- Swampface
					["crs"] = { 226396 },	-- Swampface
					["groups"] = {
						i(246277, {	-- Swampface's Oozewalkers
							["timeline"] = { ADDED_11_2_0 },
						}),
					},
				}),
				-- #endif
				e(2651, {	-- Geezle Gigazap
					["crs"] = { 236950 },	-- Geezle Gigazap
					["groups"] = {
						ach(41340),	-- Heroic: Operation: Floodgate
						i(246274, {	-- Geezle's Zapstep
							["timeline"] = { ADDED_11_2_0 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2651, {	-- Geezle Gigazap
					["crs"] = { 236950 },	-- Geezle Gigazap
					["groups"] = {
						ach(41341),	-- Mythic: Operation: Floodgate
					},
				}),
			}),
		},
	})
})));
