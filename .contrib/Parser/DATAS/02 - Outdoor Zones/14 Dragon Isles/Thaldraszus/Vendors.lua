---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(VENDORS, {
			n(188895, {	-- Assistant Innkeeper Durang <Food & Drink>
				["coord"] = { 52.44, 69.88, THALDRASZUS },
				["groups"] = {
					i(201090),	-- Bivigosa's Blood Sausages
				},
			}),
			n(197872, {	-- Bromithus <Caffeinomancer>
				["coord"] = { 50.06, 42.68, THALDRASZUS },
				["groups"] = {
					i(201698),	-- Black Dragon Red Eye
					i(201697),	-- Coldarra Coldbrew
					i(201046),	-- Dreamwarding Dripbrew
					i(201725),	-- Flappuccino
					i(201721),	-- Life Fire Latte
				},
			}),
			n(187300, {	-- Gryrmpech <Head Gardener>
				["coord"] = { 37.8, 75.4, THALDRASZUS },
				["groups"] = {
					i(114980, {	-- Farmer's Broom
						["cost"] = 67,	-- 67c
					}),
					i(114979, {	-- Farmer's Hoe
						["cost"] = 67,	-- 67c
					}),
					i(114978, {	-- Farmer's Shovel
						["cost"] = 67,	-- 67c
					}),
				},
			}),
			n(198470, {	-- Usodormu
				["sourceQuest"] = 66040,	-- Back to the Future (confirm)
				["coord"] = { 60.4, 79.8, THALDRASZUS },
				["groups"] = {
					i(201435),	-- Shuffling Sands (TOY!)
				},
			}),
			n(197586, {	-- Xemah
				["coord"] = { 38.95, 46.31, THALDRASZUS },
				["groups"] = {
					i(200871),	-- Steamed Scarab Steak
				},
			}),
			n(203769, {	-- Bartender Bob
				["coord"] = { 52.2, 81.6, THALDRASZUS },
				["groups"] = {
					i(206521),	-- Single Black Coffee (QI!)
				},
			}),
		}),
	}),
})));
