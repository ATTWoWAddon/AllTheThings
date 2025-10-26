---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------
root(ROOTS.Housing, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
	n(ACHIEVEMENTS, {
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
			title(657),	-- %s the Furnished
		}),
		ach(40887, {	-- Fox Friends
			--i(XXXXXX, {["timeline"] = { ADDED_11_2_7 }}),	-- Coffee Press (DECOR!)
		}),
		ach(61211, {	-- Welcome Home
			["description"] = "Build your own home through Housing",
		}),
	}),
})));
