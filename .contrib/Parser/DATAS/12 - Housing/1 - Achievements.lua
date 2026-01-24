---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, n(ACHIEVEMENTS, {
	["timeline"] = { ADDED_11_2_7 },
	["groups"] = {
		-- Collecting
		ach(61308),	-- Score A Decor					(1)
		ach(61309),	-- Amateur Antiquarian				(50)
		ach(61310),	-- Casual Collector					(100)
		ach(61311),	-- Ready To Remodel					(150)
		ach(61312),	-- Center Stager					(200)
		ach(61313),	-- Well-Travelled Collection		(250)
		ach(61314),	-- Furniture Historian				(300)
		ach(61315),	-- Array of Antiquities				(350)
		ach(61316),	-- Custom Cabinets					(400)
		ach(61317),	-- Domicile Designer				(450)
		ach(61318, {	-- Fully Furnished				(500)
			title(657),	-- <Name> the Furnished
		}),
		-- Couponing
		ach(62371, {	-- Couponing for Beginners
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62373, {	-- Coupon Collector
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62374, {	-- You Get The Best Deals Anywhere
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62375, {	-- Buying in Bulk
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62376, {	-- Extreme Couponing
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62377, {	-- A Fist Full of Coupons
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62378, {	-- A Few Coupons More
			["timeline"] = { ADDED_12_0_1 },
		}),
		-- Harvesting
		ach(62357, {	-- Classically Trained Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62358, {	-- Outlandish Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62359, {	-- Wrathful Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62360, {	-- Cataclysmic Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62361, {	-- Mist-Shrouded Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62362, {	-- Lumberjack Warlord
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62363, {	-- Legion Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62364, {	-- Azeroth's Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62365, {	-- Shadowy Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62366, {	-- Draconic Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62369, {	-- The Lumberjack Within
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(62370, {	-- Midnight Lumberjack
			["timeline"] = { ADDED_12_0_1 },
		}),
		ach(40887, {	-- Fox Friends
			["timeline"] = { ADDED_12_0_0 },	-- TODO: probably hotfixed in earlier
			-- i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Coffee Press (DECOR!)
		}),
		ach(61211, {	-- Welcome Home
			["description"] = "Build your own home through Housing",
			["sourceQuests"] = { 91863 },	-- My First House
		}),
	},
}));
