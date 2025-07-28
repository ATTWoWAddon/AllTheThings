-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	inst(1303, {	-- Eco-Dome Al'dani
		["coord"] = { 43.8, 4.1, KARESH },
		["lore"] = "The eco-domes represent the best hope of restoring life to K'aresh. Eco-Dome Al'dani was built on the bones of one of the most sacred sites on K'aresh. A Wastelander invasion has ripped open the dome, exposing it to destruction. Ve'nari has called for help to keep all those resources from being wasted, and K'aresh's greatest hope from being destroyed.",
		["maps"] = {
			2449,	-- Eco-Dome Al'dani
		},
		["groups"] = {
			n(QUESTS, {
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(3107, {	-- Azhiccar
					["crs"] = { 234893 },	-- Azhiccar
					["groups"] = {
						i(242468),	-- Al'dani Attendant's Gauze
						i(242497),	-- Azhiccaran Parapodia
						i(242472),	-- Consumed Wastelander's Epaulets
						i(242475),	-- Eco-Dome Access Bands
						i(242470),	-- Mandibular Bonewhacker
						i(242473),	-- Spittle-Stained Trousers
						i(242464),	-- Swarmite's Frenzied Pedicel
					},
				}),
				e(3108, {	-- Taah'bat and A'wazj
					["crs"] = {
						234933,	-- Taah'bat <The Relentless>
						237514,	-- A'wazj
					},
					["groups"] = {
						i(242479),	-- Girdle of Absolute Faith
						i(242483),	-- Greaves of the Wild Pair
						i(242495),	-- Incorporeal Warpclaw
						i(242482),	-- Reinforced Stalkerhide Vest
						i(242481),	-- Spellstrike Warplance
						i(242476),	-- Taahbat's Desert Carbine
						i(242477),	-- Wastland Devotee's Wrappings
					},
				}),
				e(3109, {	-- Soul-Scribe
					["crs"] = { 234935 },	-- Soul-Scribe
					["groups"] = {
						ach(42780),	-- Eco-Dome Al'dani
						i(242490),	-- Ancient Oracle's Caress
						i(242487),	-- Fatebound Crusader
						i(242494),	-- Lily of the Eternal Weave
						i(242486),	-- Mantle of Wounded Fate
						i(242484),	-- Soul-Scribe's Tabiqa Dagger
						i(242493),	-- Starlit Safeguard
						i(242488),	-- Tunic of Sworn Revenge
						i(242491),	-- Whispers of K'aresh
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(3109, {	-- Soul-Scribe
					["crs"] = { 247283 },	-- Soul-Scribe
					["groups"] = {
						ach(42781),	-- Heroic: Eco-Dome Al'dani
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(3109, {	-- Soul-Scribe
					["crs"] = { 247283 },	-- Soul-Scribe
					["groups"] = {
						ach(42782),	-- Mythic: Eco-Dome Al'dani
					},
				}),
			}),
		},
	})
})));