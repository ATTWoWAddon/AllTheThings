--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
FREE_T_SHIRT_DAY_HEADER = createHeader({
	readable = "Free T-Shirt Day",
	constant = "FREE_T_SHIRT_DAY_HEADER",
	icon = [[~_.asset("Holiday_Tshirt")]],
	eventID = EVENTS.FREE_T_SHIRT_DAY,
	text = {
		en = "Free T-Shirt Day",
		es = "Día de las Camisetas Gratis",
		mx = "Día de camisetas gratis",
		ru = "День бесплатных футболок",
		cn = "免费T恤日",
		tw = "免費T恤日",
	},
});
root(ROOTS.Holidays, applyevent(EVENTS.FREE_T_SHIRT_DAY, n(FREE_T_SHIRT_DAY_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
	n(RARES, {
		n(145826, {	-- Orgrimmar Entertainer
			["description"] = "This NPC wanders around in Ogrimmar and shoots T-Shirts on the ground where you can pick them up.",
			["races"] = HORDE_ONLY,
			["maps"] = { ORGRIMMAR },
			["groups"] = {
				i(167183),	-- Amber Filigreed Doublet
				i(167187),	-- Amber Filigreed Shirt
				i(167197),	-- Antiseptic-Soaked Dressing
				i(167190),	-- Blue Martial Shirt
				i(167081),	-- Bold Yellow Shirt
				i(167182),	-- Cerulean Filigreed Doublet
				i(167186),	-- Cerulean Filigreed Shirt
				i(167178),	-- Common Brown Shirt
				i(167177),	-- Common Gray Shirt
				i(167179),	-- Common White Shirt
				i(167180),	-- Ebon Filigreed Doublet
				i(167185),	-- Ebon Filigreed Shirt
				i(167192),	-- Embroidered Shirt
				i(165657, {	-- Free T-Shirt
					title(399, {	-- the T-Shirt Enthusiast
						["collectible"] = false,
					}),
				}),
				i(167181),	-- Golden Filigreed Doublet
				i(167189),	-- Golden Filigreed Shirt
				i(167191),	-- Green Martial Shirt
				i(167194),	-- Purple Martial Shirt
				i(167195),	-- Red Martial Shirt
				i(167184),	-- Scarlet Filigreed Doublet
				i(167188),	-- Scarlet Filigreed Shirt
				i(167082),	-- Stylish Black Shirt
				i(167196),	-- Wound Dressing
				i(167193),	-- Yellow Martial Shirt
			},
		}),
		n(150942, {	-- Stormwind Entertainer
			["description"] = "This NPC wanders around in Stormwind and shoots T-Shirts on the ground where you can pick them up.",
			["races"] = ALLIANCE_ONLY,
			["maps"] = { STORMWIND_CITY },
			["groups"] = {
				i(167183),	-- Amber Filigreed Doublet
				i(167187),	-- Amber Filigreed Shirt
				i(167197),	-- Antiseptic-Soaked Dressing
				i(167190),	-- Blue Martial Shirt
				i(167081),	-- Bold Yellow Shirt
				i(167182),	-- Cerulean Filigreed Doublet
				i(167186),	-- Cerulean Filigreed Shirt
				i(167178),	-- Common Brown Shirt
				i(167177),	-- Common Gray Shirt
				i(167179),	-- Common White Shirt
				i(167180),	-- Ebon Filigreed Doublet
				i(167185),	-- Ebon Filigreed Shirt
				i(167192),	-- Embroidered Shirt
				i(165657, {	-- Free T-Shirt
					title(399, {	-- the T-Shirt Enthusiast
						["collectible"] = false,
					}),
				}),
				i(167181),	-- Golden Filigreed Doublet
				i(167189),	-- Golden Filigreed Shirt
				i(167191),	-- Green Martial Shirt
				i(167194),	-- Purple Martial Shirt
				i(167195),	-- Red Martial Shirt
				i(167184),	-- Scarlet Filigreed Doublet
				i(167188),	-- Scarlet Filigreed Shirt
				i(167082),	-- Stylish Black Shirt
				i(167196),	-- Wound Dressing
				i(167193),	-- Yellow Martial Shirt
			},
		}),
	}),
	n(VENDORS, {
		n(150948, {	-- Gild Crewneck
			["coord"] = { 60.3, 52.5, STORMHEIM },
			["groups"] = {
				i(167226),	-- Gild's Crewneck
			},
		}),
		n(146961, {	-- Jade Lovelyshirts
			["coord"] = { 61.9, 58.8, VALLEY_OF_THE_FOUR_WINDS },
			["groups"] = {
				i(167207),	-- Jade's Lovely Shirt
			},
		}),
		n(150904, {	-- Melvin Shirtson
			["coord"] = { 74.3, 53.0, EASTERN_PLAGUELANDS },
			["groups"] = {
				i(167220),	-- Threads of Tirion
			},
		}),
		n(150945, {	-- Selis Silksong
			["coord"] = { 67.7, 27.7, SHATTRATH_CITY },
			["groups"] = {
				i(167222),	-- Selis' Silk Shirt
			},
		}),
		n(150905, {	-- Shirtsi Clothpatch
			["coord"] = { 59.6, 50.3, WINTERSPRING },
			["groups"] = {
				i(167229),	-- Shirtsi's Cloth Shirt
			},
		}),
		n(150946, {	-- Shuurt the Clothripper
			["coord"] = { 49.8, 51.5, GRIZZLY_HILLS },
			["groups"] = {
				i(167212),	-- Shuurt's Precious
			},
		}),
		n(150950, {	-- Tia Shortsleeve
			["coord"] = { 84.4, 30.9, TALADOR },
			["groups"] = {
				i(167215),	-- Tia Shortsleeve's Short Sleeve Shirt
			},
		}),
	}),
}))));
