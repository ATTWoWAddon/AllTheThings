---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(BASTION, {
		n(SPECIAL, {
			n(175563, {	-- Courage
				["description"] = "Requires a group of 5 people to simultaneously pet Larion Cubs near Nemea (|cFFFFFFFF57.3, 39.2|r).",
				["questID"] = 60093,	-- think this is one-time per character and not repeatable
				["coord"] = { 57.3, 39.2, BASTION },
				["crs"] = {
					175776,	-- Courage
					175760,	-- Larion Cub
				},
				["groups"] = {
					i(184400),	-- Courage (PET!)
				},
			}),
			n(171524, {	-- Honor Steward
				["description"] = "Purchase |cFFFFFFFFMemorial Wine|r from Kobri, a steward at Hero's Rest. Place the wine in the Drink Tray at |cFFFFFFFF56.8, 19.0|r to get the key from Honor Steward to the Memorial Offerings chest.",
				["coord"] = { 56.8, 19.0, BASTION },
				["groups"] = {
					i(180797),	-- Memorial Offering Key
				},
			}),
			n(181682, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Lost Soul (Otter)
				["description"] = "Use /hug on the Lost Soul. It has roughly a 60 minute respawn.",
				["coord"] = { 49.85, 46.85, BASTION },
				["groups"] = {
					i(187818),	-- Otter Soul
				},
			})),
			i(180285, {	-- Steward's Golden Key
				["coords"] = {
					{ 53.5, 85.5, BASTION },	-- Alexandros
					{ 43.0, 27.3, BASTION },	-- Angeliki
					{ 44.8, 59.3, BASTION },	-- Burnsios
					{ 57.0, 77.4, BASTION },	-- Chaddius
					{ 53.6, 9.6, BASTION },		-- Covinkles
					{ 70.9, 37.5, BASTION },	-- Giannakis
					{ 25.9, 33.6, BASTION },	-- Ioanna
					{ 45.6, 64.6, BASTION },	-- Pagius
					{ 60.6, 61.8, BASTION },	-- Platnos
					{ 33.9, 66.9, BASTION },	-- Wylia
				},
				["cost"] = { { "i", 178915, 1 } },	-- 1x Ripe Purian
				["crs"] = {
					170508,	-- Alexandros
					171113,	-- Angeliki
					170462,	-- Burnsios
					170509,	-- Chaddius
					171132,	-- Covinkles
					171330,	-- Giannakis
					171329,	-- Ioanna
					170491,	-- Pagius
					170471,	-- Platnos
					170292,	-- Wylia
				},
			}),
			i(180049, {	-- Steward's Silver Key
				["cost"] = { { "i", 178915, 1 } },	-- 1x Ripe Purian
			}),
		}),
	}),
})));
