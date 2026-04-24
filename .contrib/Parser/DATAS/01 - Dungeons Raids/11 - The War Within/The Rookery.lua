-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1268, {	-- The Rookery
		["coord"] = { 32.2, 34.6, DORNOGAL },
		["maps"] = {
			2315,	-- The Rookery Landing
			2316,	-- Storm's Roost
			2317,	-- Storm Rookery
			2318,	-- Stormrider Barracks
			2319,	-- Crashing Storm Hall
			2320,	-- Abandoned Mines
		},
		["groups"] = {
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2566, {	-- Kyrioss
					["crs"] = { 209230 },	-- Kyrioss
					["groups"] = {
						i(221037),	-- Charged Rookfeather Wraps
						i(219294),	-- Charged Stormrook Plume
						i(221033),	-- Hyperactive Stormclaw
						i(221036),	-- Tempestwind Handlers
						i(221034),	-- Thunder-Clad Legguards
						i(221035),	-- Treads of the Galvanic Skysoarer
						i(221032),	-- Voltaic Stormcaller
					},
				}),
				e(2567, {	-- Stormguard Gorren
					["crs"] = { 207205 },	-- Stormguard Gorren
					["groups"] = {
						i(221041),	-- Boltbreaker Armor
						i(221043),	-- Cloudstrider Soles
						i(221038),	-- Crashing Thunderhammer
						i(221045),	-- Galebreaker Bulwark
						i(221039),	-- Ireborne Stormbow
						i(221040),	-- Lightning-Conductor's Bands
						i(219295),	-- Sigil of Algari Concordance
						i(221042),	-- Squallrider's Kilt
					},
				}),
				e(2568, {	-- Voidstone Monstrosity
					["crs"] = { 207207 },	-- Voidstone Monstrosity
					["groups"] = {
						ach(40621),	-- The Rookery
						i(223096),	-- Pattern: Roiling Thunderstrike Talons (RECIPE!)
						i(221048),	-- Amice of Oblivion
						i(221050),	-- Ancient Hardened Legwraps
						i(221046),	-- Behemoth Kneebender
						i(219296),	-- Entropic Skardyn Core
						i(221197),	-- Hoop of the Blighted
						i(221049),	-- Jerkin of Awakened Stone
						i(221047),	-- Monstrosity's Gaze
						i(221044),	-- Shadowskean of the Colossus
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2568, {	-- Voidstone Monstrosity
					["crs"] = { 207207 },	-- Voidstone Monstrosity
					["groups"] = {
						ach(40637),	-- Heroic: The Rookery
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2, ADDED_11_1_0 } }, {
				e(2568, {	-- Voidstone Monstrosity
					["crs"] = { 207207 },	-- Voidstone Monstrosity
					["groups"] = {
						ach(40642),	-- Mythic: The Rookery
						ach(61601, {["timeline"] = { ADDED_12_0_0 }}),	-- Mythic: The Rookery Guild Run
					},
				}),
			})),
		},
	})
})));
