-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1272, {	-- Cinderbrew Meadery
		["coord"] = { 76.6, 43.8, ISLE_OF_DORN },
		["maps"] = { 2335 },	-- Cinderbrew Meadery
		["groups"] = {
			n(QUESTS, {
				q(83099, {	-- Mergers and Acquisitions
					["qgs"] = {
						216088,	-- Wenbrandt
						226409,	-- Wenbrandt
					},
					["coords"] = {
						{ 50.0, 50.0, 2335 },	-- Cinderbrew Meadery
						{ 75.6, 43.5, ISLE_OF_DORN },
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2586, {	-- Brew Master Aldryr
					["crs"] = { 210271 },	-- Brew Master Aldryr
					["groups"] = {
						i(221053),	-- Battle-Scarred Fisticuffs
						i(221054),	-- Chef Chewie's Towel
						i(219297),	-- Cinderbrew Stein
						i(221051),	-- Crusher of the Unsettled
						i(221052),	-- Foam-Ridden Pauldrons
					},
				}),
				e(2588, {	-- Benk Buzzbee
					["crs"] = { 218002 },	-- Benk Buzzbee <Beekeeper>
					["groups"] = {
						i(221201),	-- Fireproof Cinderbee Perch
						i(221064),	-- Fuzzy Cindercuffs
						i(221063),	-- Hivebreaker's Dipper
						i(221065),	-- Pollen-Lugger Treads
						i(221067),	-- Punctured Apiary Gloves
						i(219298),	-- Ravenous Honey Buzzer
						i(221062),	-- Scalding Queenmaker's Shiv
					},
				}),
				e(2587, {	-- I'pa
					["crs"] = { 210267 },	-- I'pa
					["groups"] = {
						i(221058),	-- Brewery Toiler's Waistband
						i(221055),	-- Cinderbrew-Soaked Cowl
						i(221061),	-- Hops-Laden Greatboots
						i(221059),	-- I'pa's Pale Aleguards
						i(221057),	-- Sticky Stirring Stick
						i(221060),	-- Strapped Rescue-Keg
						i(221056),	-- Vessel of the Beverage
					},
				}),
				e(2589, {	-- Goldie Baronbottom
					["crs"] = { 214661 },	-- Goldie Baronbottom <BEE.E.O.>
					["groups"] = {
						ach(40361),	-- Cinderbrew Meadery
						i(223155),	-- Bop (PET!)
						i(223102),	-- Pattern: Busy Bee's Buckle (RECIPE!)
						i(224424),	-- Pattern: Artisan Chef's Hat (RECIPE!)
						i(221070),	-- "Azeroth's Greatest BEE.E.O." Cap
						i(221198),	-- 85-Year Tenure Ring
						i(221071),	-- Backbreaking Bootstrappers
						i(245560, {	-- Meadery Ochre Window (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
						i(221072),	-- Moneymaking Businessmantle
						i(221068),	-- Profit Divider
						i(221069),	-- Slashproof Business Plate
						i(219299),	-- Synergistic Brewterializer
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2589, {	-- Goldie Baronbottom
					["crs"] = { 218523 },	-- Goldie Baronbottom <BEE.E.O.>
					["groups"] = {
						ach(40363),	-- Heroic: Cinderbrew Meadery
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2, ADDED_11_1_0 } }, {
				e(2589, {	-- Goldie Baronbottom
					["crs"] = { 218523 },	-- Goldie Baronbottom <BEE.E.O.>
					["groups"] = {
						ach(40366),	-- Mythic: Cinderbrew Meadery
						ach(61596, {["timeline"] = { ADDED_12_0_0 }}),	-- Mythic: Cinderbew Meadery Guild Run
					},
				}),
			})),
		},
	})
})));
