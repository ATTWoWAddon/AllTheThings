-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1270, {	-- The Dawnbreaker
		["coord"] = { 54.8, 62.9, HALLOWFALL },
		["maps"] = { 2359 },	-- The Dawnbreaker
		["groups"] = {
			n(QUESTS, {
				q(83322, {	-- The Dawnbreaker: The Christening
					-- ["sourceQuests"] = { xx },	-- TODO: figure out when they become available
					["provider"] = { "n", 215335 },	-- General Steelstrike
					["coord"] = { 40.5, 50.8, HALLOWFALL },
					["groups"] = {
						i(226141),	-- Airship Captain's Lost Pendant
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2580, {	-- Speaker Shadowcrown
					["crs"] = { 211087 },	-- Speaker Shadowcrown
					["groups"] = {
						i(221136),	-- Devout Zealot's Ring
						i(221135),	-- Fanatic's Blackened Shoulderwraps
						i(221133),	-- Girdle of Somber Ploys
						i(221132),	-- Overflowing Umbral Pail
						i(221134),	-- Shadow Congregant's Belt
						i(219311),	-- Void Pactstone
					},
				}),
				e(2581, {	-- Anub'ikkaj
					["crs"] = { 211089 },	-- Anub'ikkaj
					["groups"] = {
						i(221137),	-- Black Shepherd's Guisarme
						i(221139),	-- Dark Priest's Carapace
						i(221202),	-- Defiance Crusher's Sabatons
						i(219312),	-- Empowering Crystal of Anub'ikkaj
						i(221141),	-- High Nerubian Signet
						i(221138),	-- Parson's Ornamented Blade
						i(221142),	-- Scheming Assailer's Bands
						i(221140),	-- Shadowblight Mantle
					},
				}),
				e(2593, {	-- Rasha'nan
					["crs"] = { 213937 },	-- Rasha'nan
					["groups"] = {
						ach(40599),	-- The Dawnbreaker
						i(223115),	-- Formula: Enchant Ring - Radiant Critical Strike (RECIPE!)
						i(223116),	-- Formula: Enchant Ring - Radiant Haste (RECIPE!)
						i(223117),	-- Formula: Enchant Ring - Radiant Mastery (RECIPE!)
						i(223118),	-- Formula: Enchant Ring - Radiant Versatility (RECIPE!)
						i(223119),	-- Formula: Enchant Weapon - Authority of Air (RECIPE!)
						i(226643),	-- Plans: Beledar's Bulwark (RECIPE!)
						i(221148),	-- Epaulets of the Clipped Wings
						i(221147),	-- Goliath's Chitinous Chainmail
						i(221149),	-- Membranous Slippers
						i(219313),	-- Mereldar's Toll
						i(221143),	-- Recurved Hull Impaler
						i(221145),	-- Shipwrecker's Bludgeon
						i(221146),	-- Soaring Behemoth's Greathelm
						i(221144),	-- Zephyrous Sail Carver
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2593, {	-- Rasha'nan
					["crs"] = { 213937 },	-- Rasha'nan
					["groups"] = {
						ach(40601),	-- Heroic: The Dawnbreaker
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2593, {	-- Rasha'nan
					["crs"] = { 213937 },	-- Rasha'nan
					["groups"] = {
						ach(40604),	-- Mythic: The Dawnbreaker
					},
				}),
			}),
		},
	})
})));
