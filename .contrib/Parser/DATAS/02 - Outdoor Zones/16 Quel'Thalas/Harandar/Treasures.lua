---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

MOTH_RENOWN2 = createHeader({
	readable = "Renown 2: Moth Watching I",
	icon = 5015301,
	text = {
		en = [[~COVENANT_SANCTUM_TAB_RENOWN.." 2"]],
	},
});
MOTH_RENOWN4 = createHeader({
	readable = "Renown 4: Big Moth Hunter I",
	icon = 5015301,
	text = {
		en = [[~COVENANT_SANCTUM_TAB_RENOWN.." 4"]],
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(TREASURES, {
			i(259362),	-- Pattern: Haranir Canopy Bed (RECIPE!)
			header(HEADERS.Achievement, 61052, {	-- Dust 'Em Off
				n(REWARDS, {
					currency(3385),	-- Luminous Dust
				}),
				-- Alex: there should be 120 in total, whoever do this in Blizz - was it fun to implement this?
				n(MOTH_RENOWN2, {	-- Exo: Verified Renown 2
					o(571099, {	-- Glowing Moth (R2)
						["coord"] = { 36.4, 48.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92196,
					}),
					o(571121, {	-- Glowing Moth (R2)
						["coord"] = { 36.1, 26.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92197,
					}),
					o(571122, {	-- Glowing Moth (R2)
						["coord"] = { 49.9, 25.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92198,
					}),
					o(571123, {	-- Glowing Moth (R2)
						["coord"] = { 55.0, 27.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92199,
					}),
					o(571124, {	-- Glowing Moth (R2)
						["coord"] = { 66.3, 62.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92200,
					}),
					o(571125, {	-- Glowing Moth (R2)
						["coord"] = { 33.4, 63.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92201,
					}),
					o(571126, {	-- Glowing Moth (R2)
						["coord"] = { 33.4, 75.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92202,
					}),
					o(571127, {	-- Glowing Moth (R2)
						["coord"] = { 31.8, 81.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92203,
					}),
					o(571128, {	-- Glowing Moth (R2)
						["coord"] = { 42.2, 66.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92204,
					}),
					o(571129, {	-- Glowing Moth (R2)
						["coord"] = { 52.4, 80.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92205,
					}),
					o(571130, {	-- Glowing Moth (R2)
						["coord"] = { 48.5, 55.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92307,
					}),
					o(571131, {	-- Glowing Moth (R2)	- No vignette on the minimap
						["coord"] = { 67.7, 68.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92306,
					}),
					o(571132, {	-- Glowing Moth (R2)	- No vignette on the minimap
						["coord"] = { 60.0, 43.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92305,
					}),
					o(571133, {	-- Glowing Moth (R2)
						["coord"] = { 69.0, 31.2, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92304,
					}),
					o(571134, {	-- Glowing Moth (R2)
						["coord"] = { 65.4, 27.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92303,
					}),
					o(571135, {	-- Glowing Moth (R2)	- No vignette on the minimap
						["coord"] = { 50.6, 40.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92302,
					}),
					o(571136, {	-- Glowing Moth (R2)	- No vignette on the minimap
						["coord"] = { 41.6, 27.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92301,
					}),
					o(571137, {	-- Glowing Moth (R2)
						["coord"] = { 40.4, 34.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92300,
					}),
					o(571138, {	-- Glowing Moth (R2)
						["coord"] = { 56.6, 47.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92299,
					}),
					o(571139, {	-- Glowing Moth (R2)
						["coord"] = { 59.5, 54.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92206,
					}),
					o(571140, {	-- Glowing Moth (R2)
						["coord"] = { 71.4, 58.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92215,
					}),
					o(571141, {	-- Glowing Moth (R2)
						["coords"] = {
							{ 52.9, 50.7, MAP.MIDNIGHT.HARANDAR },
							{ 61.2, 32.3, 2576 },	-- The Den
						},
						["questID"] = 92214,
					}),
					o(571142, {	-- Glowing Moth (R2)
						["coord"] = { 32.1, 67.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92213,
					}),
					o(571143, {	-- Glowing Moth (R2)
						["coord"] = { 32.6, 84.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92212,
					}),
					o(571144, {	-- Glowing Moth (R2)
						["coord"] = { 30.3, 73.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92211,
					}),
					o(571145, {	-- Glowing Moth (R2)
						["coord"] = { 43.2, 53.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92210,
					}),
					o(571146, {	-- Glowing Moth (R2)
						["coord"] = { 60.4, 48.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92209,
					}),
					o(571147, {	-- Glowing Moth (R2)
						["coord"] = { 34.0, 44.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92208,
					}),
					o(571148, {	-- Glowing Moth (R2)
						["coord"] = { 38.4, 47.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92207,
					}),
					o(571149, {	-- Glowing Moth (R2)
						["coord"] = { 62.3, 37.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92226,
					}),
					o(571150, {	-- Glowing Moth (R2)
						["coord"] = { 49.3, 75.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92235,
					}),
					o(571151, {	-- Glowing Moth (R2)
						["coord"] = { 50.3, 69.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92234,
					}),
					o(571152, {	-- Glowing Moth (R2)
						["coord"] = { 68.7, 36.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92233,
					}),
					o(571153, {	-- Glowing Moth (R2)
						["coord"] = { 50.3, 33.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92232,
					}),
					o(571154, {	-- Glowing Moth (R2)
						["coord"] = { 47.6, 47.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92231,
					}),
					o(571155, {	-- Glowing Moth (R2)
						["coord"] = { 41.6, 40.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92230,
					}),
					o(571156, {	-- Glowing Moth (R2)
						["coord"] = { 53.8, 59.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92229,
					}),
					o(571157, {	-- Glowing Moth (R2)
						["coord"] = { 67.0, 56.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92228,
					}),
					o(571158, {	-- Glowing Moth (R2)
						["coord"] = { 55.1, 32.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92227,
					}),
					o(571159, {	-- Glowing Moth (R2)
						["coord"] = { 46.4, 24.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92225,
					}),
				}),
				n(MOTH_RENOWN4, {	-- Exo: Verified Renown 4, Mini-map Vignettes are unlocked at Renown 6
					o(571162, {	-- Glowing Moth (R4)
						["coord"] = { 43.1, 39.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92224,
					}),
					o(571163, {	-- Glowing Moth (R4)
						["coord"] = { 44.0, 38.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92223,
					}),
					o(571164, {	-- Glowing Moth (R4)
						["coord"] = { 60.3, 17.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92222,
					}),
					o(571165, {	-- Glowing Moth (R4)
						["coord"] = { 71.7, 58.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92221,
					}),
					o(571166, {	-- Glowing Moth (R4)
						["coord"] = {
							{ 72.7, 57.7, MAP.MIDNIGHT.HARANDAR },	-- Cave Entrance
							{ 74.0, 57.2, MAP.MIDNIGHT.HARANDAR },	-- Glowing Moth
						},
						["questID"] = 92220,
					}),
					o(571167, {	-- Glowing Moth (R4)
						["coord"] = { 55.6, 64.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92219,
					}),
					o(571168, {	-- Glowing Moth (R4)
						["coord"] = { 55.8, 66.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92218,
					}),
					o(571169, {	-- Glowing Moth (R4)
						["coords"] = {
							{ 61.5, 38.5, MAP.MIDNIGHT.HARANDAR },	-- Cave Entrance
							{ 61.3, 35.2, MAP.MIDNIGHT.HARANDAR },	-- Glowing Moth
						},
						["questID"] = 92217,
					}),
					o(571170, {	-- Glowing Moth (R4)
						["coord"] = { 63.7, 41.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92216,
					}),
					o(571171, {	-- Glowing Moth (R4)
						["coord"] = { 62.4, 40.8, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92245,
					}),
					o(571172, {	-- Glowing Moth (R4)
						["coords"] = {
							{ 61.5, 38.5, MAP.MIDNIGHT.HARANDAR },	-- Cave Entrance
							{ 61.4, 37.1, MAP.MIDNIGHT.HARANDAR },	-- Glowing Moth
						},
						["questID"] = 92244,
					}),
					o(571173, {	-- Glowing Moth (R4)
						["coord"] = { 46.9, 48.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92243,
					}),
					o(571174, {	-- Glowing Moth (R4)
						["coord"] = { 43.3, 40.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92242,
					}),
					o(571175, {	-- Glowing Moth (R4)
						["coord"] = { 42.0, 37.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92241,
					}),
					o(571176, {	-- Glowing Moth (R4)
						["coord"] = { 73.7, 61.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92240,
					}),
					o(571177, {	-- Glowing Moth (R4)
						["coord"] = { 73.7, 68.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92239,
					}),
					o(571178, {	-- Glowing Moth (R4)
						["coord"] = { 58.6, 30.2, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92238,
					}),
					o(571179, {	-- Glowing Moth (R4)
						["coord"] = { 51.4, 20.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92237,
					}),
					o(571180, {	-- Glowing Moth (R4)
						["coord"] = { 44.8, 35.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92236,
					}),
					o(571181, {	-- Glowing Moth (R4)
						["coord"] = { 54.5, 38.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92255,
					}),
					o(571264, {	-- Glowing Moth (R4)
						["coord"] = { 62.5, 44.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92254,
					}),
					o(571265, {	-- Glowing Moth (R4)
						["coords"] = {
							{ 60.3, 46.1, MAP.MIDNIGHT.HARANDAR },	-- Cave Entrance
							{ 60.7, 45.4, MAP.MIDNIGHT.HARANDAR },	-- Glowing Moth
						},
						["questID"] = 92253,
					}),
					o(571266, {	-- Glowing Moth (R4)
						["coord"] = { 61.2, 50.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92252,
					}),
					o(571267, {	-- Glowing Moth (R4)
						["coord"] = { 48.3, 50.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92251,
					}),
					o(571268, {	-- Glowing Moth (R4)
						["coord"] = { 51.9, 76.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92250,
					}),
					o(571269, {	-- Glowing Moth (R4)
						["coord"] = { 36.1, 81.4, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92249,
					}),
					o(571270, {	-- Glowing Moth (R4)
						["coord"] = { 30.8, 63.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92248,
					}),
					o(571271, {	-- Glowing Moth (R4)
						["coord"] = { 35.9, 74.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92247,
					}),
					o(571272, {	-- Glowing Moth (R4)
						["coord"] = { 41.3, 66.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92246,
					}),
					o(571273, {	-- Glowing Moth (R4)
						["coord"] = { 41.3, 68.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92265,
					}),
					o(571274, {	-- Glowing Moth (R4)
						["coord"] = {
							{ 63.1, 58.0, MAP.MIDNIGHT.HARANDAR },	-- Cave Entrance
							{ 65.3, 57.7, MAP.MIDNIGHT.HARANDAR },	-- Glowing Moth
						},
						["questID"] = 92264,
					}),
					o(571275, {	-- Glowing Moth (R4)
						["coord"] = { 62.5, 58.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92263,
					}),
					o(571276, {	-- Glowing Moth (R4)
						["coord"] = { 64.0, 48.6, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92262,
					}),
					o(571277, {	-- Glowing Moth (R4)
						["coord"] = { 65.9, 44.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92261,
					}),
					o(571278, {	-- Glowing Moth (R4)
						["coord"] = { 72.9, 37.2, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92260,
					}),
					o(571279, {	-- Glowing Moth (R4)
						["coord"] = { 42.2, 22.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92259,
					}),
					o(571280, {	-- Glowing Moth (R4)
						["coord"] = { 54.5, 52.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92258,
					}),
					o(571281, {	-- Glowing Moth (R4)
						["coord"] = { 68.0, 20.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92257,
					}),
					o(571282, {	-- Glowing Moth (R4)
						["coord"] = { 37.0, 48.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92256,
					}),
					o(571283, {	-- Glowing Moth (R4)
						["coord"] = { 39.1, 55.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 92266,
					}),
				}),
				-- Renown 9
				o(571296, {	-- Glowing Moth
					["coord"] = { 74.1, 53.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92310,
				}),
				o(571323, {	-- Glowing Moth
					["coord"] = { 69.3, 63.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92292,
				}),
				o(571324, {	-- Glowing Moth
					["coord"] = { 71.7, 67.5, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92291,
				}),
				o(571290, {	-- Glowing Moth
					["coord"] = { 75.8, 50.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92316,
				}),
				o(571314, {	-- Glowing Moth
					["coord"] = { 67.0, 48.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92272,
				}),
				o(571326, {	-- Glowing Moth
					["coord"] = { 65.2, 50.8, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92289,
				}),
				o(571315, {	-- Glowing Moth
					["coord"] = { 71.2, 39.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92271,
				}),
				o(571305, {	-- Glowing Moth
					["coord"] = { 72.0, 33.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92280,
				}),
				o(571304, {	-- Glowing Moth
					["coord"] = { 68.2, 27.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92281,
				}),
				o(571303, {	-- Glowing Moth
					["coord"] = { 56.0, 24.5, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92282,
				}),
				o(571316, {	-- Glowing Moth
					["coord"] = { 54.6, 31.8, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92270,
				}),
				o(571306, {	-- Glowing Moth
					["coord"] = { 66.5, 33.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92279,
				}),
				o(571325, {	-- Glowing Moth
					["coord"] = { 62.6, 64.6, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92290,
				}),
				o(571311, {	-- Glowing Moth
					["coord"] = { 50.1, 80.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92275,
				}),
				o(571321, {	-- Glowing Moth
					["coord"] = { 49.0, 70.7, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92294,
				}),
				o(571312, {	-- Glowing Moth
					["coord"] = { 54.0, 73.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92274,
				}),
				o(571328, {	-- Glowing Moth
					["coord"] = { 27.4, 70.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92287,
				}),
				o(571327, {	-- Glowing Moth
					["coord"] = { 29.8, 87.6, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92288,
				}),
				o(571294, {	-- Glowing Moth
					["coord"] = { 28.8, 66.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92312,
				}),
				o(571319, {	-- Glowing Moth
					["coord"] = { 34.5, 69.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92296,
				}),
				o(571292, {	-- Glowing Moth
					["coord"] = { 41.0, 67.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92314,
				}),
				o(571308, {	-- Glowing Moth
					["coord"] = { 47.3, 66.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92267,
				}),
				o(571289, {	-- Glowing Moth
					["coord"] = { 39.4, 61.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92308,
				}),
				o(571320, {	-- Glowing Moth
					["coord"] = { 34.6, 48.5, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92295,
				}),
				o(571293, {	-- Glowing Moth
					["coord"] = { 40.9, 51.5, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92313,
				}),
				o(571299, {	-- Glowing Moth
					["coord"] = { 44.4, 45.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92286,
				}),
				o(571300, {	-- Glowing Moth
					["coord"] = { 34.6, 24.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92285,
				}),
				o(571329, {	-- Glowing Moth
					["coord"] = { 39.2, 18.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92297,
				}),
				o(571301, {	-- Glowing Moth
					["coord"] = { 47.8, 23.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92284,
				}),
				o(571322, {	-- Glowing Moth
					["coord"] = { 48.5, 26.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92293,
				}),
				o(571302, {	-- Glowing Moth
					["coord"] = { 48.5, 28.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92283,
				}),
				o(571297, {	-- Glowing Moth
					["coord"] = { 56.5, 57.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92309,
				}),
				o(571317, {	-- Glowing Moth
					["coord"] = { 52.5, 29.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92269,
				}),
				o(571313, {	-- Glowing Moth
					["coord"] = { 45.0, 58.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92273,
				}),
				o(571310, {	-- Glowing Moth
					["coord"] = { 46.1, 71.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92276,
				}),
				o(571298, {	-- Glowing Moth
					["coord"] = { 61.7, 75.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92277,
				}),
				o(571318, {	-- Glowing Moth
					["coord"] = { 47.7, 32.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92268,
				}),
				o(571307, {	-- Glowing Moth
					["coord"] = { 43.2, 27.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92278,
				}),
				o(571291, {	-- Glowing Moth
					["coord"] = { 69.4, 49.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92315,
				}),
				o(571295, {	-- Glowing Moth
					["coord"] = { 62.5, 53.7, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92311,
				}),
				--IDK what renown these come from
				--Alex: there is more than 120 or something odd.
				--Exo: Since Luminous Dust is the only currency Mothkeeper accepts, everything after 120 is probably repeatable
				o(571306, {	-- Glowing Moth
					["coord"] = { 66.5, 33.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92279,
				}),
				o(571315, {	-- Glowing Moth
					["coord"] = { 71.2, 39.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92271,
				}),
				o(571305, {	-- Glowing Moth
					["coord"] = { 72.0, 33.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92280,
				}),
				o(571303, {	-- Glowing Moth
					["coord"] = { 55.8, 25.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92282,
				}),
				o(571316, {	-- Glowing Moth
					["coord"] = { 54.5, 31.8, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92270,
				}),
				o(571317, {	-- Glowing Moth
					["coord"] = { 52.5, 29.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92269,
				}),
				o(571318, {	-- Glowing Moth
					["coord"] = { 47.8, 32.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92268,
				}),
				o(571322, {	-- Glowing Moth
					["coord"] = { 48.5, 26.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92293,
				}),
				o(571307, {	-- Glowing Moth
					["coord"] = { 43.2, 27.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92278,
				}),
				o(571329, {	-- Glowing Moth
					["coord"] = { 39.2, 18.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92297,
				}),
				o(571300, {	-- Glowing Moth
					["coord"] = { 34.7, 24.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92285,
				}),
				o(571299, {	-- Glowing Moth
					["coord"] = { 44.4, 45.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92286,
				}),
				o(571293, {	-- Glowing Moth
					["coord"] = { 40.8, 51.6, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92313,
				}),
				o(571308, {	-- Glowing Moth
					["coord"] = { 47.2, 66.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92267,
				}),
				o(571319, {	-- Glowing Moth
					["coord"] = { 34.5, 68.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92296,
				}),
				o(571328, {	-- Glowing Moth
					["coord"] = { 27.3, 70.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92287,
				}),
				o(571294, {	-- Glowing Moth
					["coord"] = { 28.9, 66.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92312,
				}),
				o(571327, {	-- Glowing Moth
					["coord"] = { 29.9, 87.7, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92288,
				}),
				o(571312, {	-- Glowing Moth
					["coord"] = { 54.0, 73.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92274,
				}),
				o(571314, {	-- Glowing Moth
					["coord"] = { 67.0, 48.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92272,
				}),
				o(571290, {	-- Glowing Moth
					["coord"] = { 75.8, 50.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92316,
				}),
				o(571323, {	-- Glowing Moth
					["coord"] = { 69.4, 63.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92292,
				}),
				o(571324, {	-- Glowing Moth
					["coord"] = { 71.7, 67.5, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92291,
				}),
			}),
			header(HEADERS.Achievement, 62290, {	-- Harandar: The Highest Peaks
				o(619656, {	-- Vista Point Flag
					["coord"] = { 69.2, 46.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 94546,
				}),
				o(619657, {	-- Vista Point Flag
					["coord"] = { 68.2, 26.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 94547,
				}),
				o(619658, {	-- Vista Point Flag
					["coord"] = { 49.4, 75.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 94548,
				}),
				o(619659, {	-- Vista Point Flag
					["coord"] = { 69.4, 63.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 94549,
				}),
				o(619660, {	-- Vista Point Flag
					["coord"] = { 53.5, 58.6, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 94550,
				}),
			}),
			header(HEADERS.Achievement, 62104, {	-- Midnight Lore Hunter
				o(613823, {	-- Ancient Runestone
					["coord"] = { 33.3, 60.9, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93556,
				}),
				o(613827, {	-- Derelict Mural
					["coord"] = { 72.4, 38.1, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93557,
				}),
				o(613828, {	-- Forgotten Mural
					["coord"] = { 68.2, 23.8, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93558,
				}),
				o(613818, {	-- Tarnished Mural
					["coord"] = { 55.7, 54.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93554,
				}),
			}),
			header(HEADERS.Achievement, 61263, {	-- Treasures of Harandar
				o(572998, {	-- Burning Branch of the World Tree
					["coord"] = { 47.1, 50.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92426,
					["groups"] = {
						i(258900),	-- Charred World Tree Branch (gray item)
					},
				}),
				o(572958, {	-- Failed Shroom Jumper's Satchel
					["coord"] = { 71.7, 31.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92424,
					["groups"] = {
						i(258963),	-- Shroom Jumper's Parachute (TOY!)
					},
				}),
				o(591054, {	-- Gift of the Cycle
					["coord"] = { 47.3, 50.5, 2576 },	-- The Den
					["questID"] = 93144,
					["groups"] = {
						n(254030, {	-- Child-like Spirit
							["coord"] = { 51.4, 47.5, MAP.MIDNIGHT.HARANDAR },
							["cost"] = { { "i", 256882, 1 } },	-- A Tattered Ball
							["questID"] = 93130,
							["groups"] = {
								o(588966, {	-- A Tattered Ball
									["coord"] = { 51.1, 50.5, MAP.MIDNIGHT.HARANDAR },
									["groups"] = {
										i(256882),	-- A Tattered Ball
									},
								}),
							},
						}),
						n(254116, {	-- Elder Spirit
							["coord"] = { 51.2, 58.6, MAP.MIDNIGHT.HARANDAR },
							["cost"] = { { "i", 257054, 1 } },	-- A Rolled-Up Pillow
							["questID"] = 93146,
							["groups"] = {
								o(590801, {	-- A Rolled-Up Pillow
									["coord"] = { 51.4, 56.0, MAP.MIDNIGHT.HARANDAR },
									["groups"] = {
										i(257054),	-- A Rolled-Up Pillow
									},
								}),
							},
						}),
						n(254104, {	-- Huntress Spirit
							["coord"] = { 47.2, 53.2, MAP.MIDNIGHT.HARANDAR },
							["cost"] = { { "i", 257024, 1 } },	-- A Lost Hunting Knife
							["questID"] = 93145,
							["groups"] = {
								o(589205, {	-- A Lost Hunting Knife
									["coord"] = { 45.1, 54.0, MAP.MIDNIGHT.HARANDAR },
									["groups"] = {
										i(257024),	-- A Lost Hunting Knife
									},
								}),
							},
						}),
						i(259084),	-- Gift of the Cycle (TOY!)
					},
				}),
				o(613392, {	-- Impenatrably Sealed Groud
					["description"] = "Obtain mysterious fluids from other objects in same cave, then mix red and purple for Fizzing Fluid.",
					["coord"] = { 26.7, 67.6, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93508,
					["cost"] = { { "i", 260266, 1 } },	-- 1x Fizzing Fluid
					["groups"] = {
						i(260730),	-- Perturbed Sporebat (PET!)
						--
						o(615936, {	-- Dangling Jub
							["coord"] = { 27.1, 67.7, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(260251) },	-- Mysterious Red Fluid
						}),
						o(615930, {	-- Hanging Flask
							["coord"] = { 26.7, 68.0, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(260250) },	-- Mysterious Purple Fluid
						}),
						o(615939, {	-- Discarded Bottle
							["coord"] = { 26.6, 67.6, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(260248) },	-- Mysterious Green Fluid
						}),
						o(614560, {	-- Durable Vase
							["coord"] = { 26.5, 67.9, MAP.MIDNIGHT.HARANDAR },
							["groups"] = { i(260266) },	-- Fizzing Fluid
						}),
					},
				}),
				o(573307, {	-- Kemet's Simmering Cauldron
					["coord"] = { 55.6, 39.4, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92436,
					["groups"] = {
						i(258903),	-- Percival (PET!)
					},
				}),
				o(614483, {	-- Peculiar Cauldron
					["coord"] = { 40.6, 28.0, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 93587,
					["cost"] = { { "i", 260531, 150 } },	-- 150x Crystalized Resin Fragment
					["groups"] = {
						i(252017),	-- Ruddy Sporeglider (MOUNT!)
					},
				}),
				o(573095, {	-- Reliquary's Lost Paintbrush
					["coord"] = { 62.9, 51.2, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92431,
					["groups"] = {
						i(263287),	-- Reliquary-Keeper's Lost Shortbow (COSMETIC!)
						i(246416),	-- Waterlogged Haranir Pigment Bowl (DECOR!)
					},
				}),
				o(573050, {	-- Sporelord's Fight Prize
					["coord"] = { 73.6, 65.3, MAP.MIDNIGHT.HARANDAR },
					["questID"] = 92427,
					["groups"] = {
						i(263289),	-- Sporelord's Authority (COSMETIC!)
					},
				}),
				o(615963, {	-- Sporespawned Cache
					["description"] = "Interact with Fungal Mallet in Fungara Village then hit the gong",
					["coords"] = {
						{ 41.3, 67.9, MAP.MIDNIGHT.HARANDAR },
						{ 46.7, 67.8, MAP.MIDNIGHT.HARANDAR },
					},
					["groups"] = {
						i(256423),	-- Untainted Grove Crawler (MOUNT!)
					},
				}),
			}),
			o(616052, {	-- Flame-Hardened Sap of Teldrassil
				["description"] = "Scattered underwater across the river, up from the charred roots of Teldrassil, down to The Den.",
				["coords"] = {
					{ 40.1, 23.8, MAP.MIDNIGHT.HARANDAR },
					{ 40.6, 28.0, MAP.MIDNIGHT.HARANDAR },
					{ 41.3, 28.9, MAP.MIDNIGHT.HARANDAR },
					{ 41.7, 34.5, MAP.MIDNIGHT.HARANDAR },
					{ 41.8, 30.6, MAP.MIDNIGHT.HARANDAR },
					{ 41.9, 37.6, MAP.MIDNIGHT.HARANDAR },
					{ 42.7, 40.4, MAP.MIDNIGHT.HARANDAR },
					{ 44.2, 44.0, MAP.MIDNIGHT.HARANDAR },
					{ 46.2, 47.8, MAP.MIDNIGHT.HARANDAR },
				},
				["groups"] = { i(260531) },	-- Crystalized Resin Fragment
			}),
			--o(613829, {	-- A Frayed Scroll
			--	["coord"] = { 47.6, 47.3, MAP.MIDNIGHT.HARANDAR },
			--	["questID"] = XXXXX,
			--}),
			-- Random Repeatables, Unlock at Renown 3
			o(573991, {	-- Budding Barrel
				["description"] = "Spawns randomly throughout the zone.",
			}),
			o(573841, {	-- Fungalcap Crock
				["description"] = "Spawns randomly throughout the zone.",
			}),
			o(574126, {	-- Leaf-wrapped Package
				["description"] = "Spawns randomly throughout the zone.",
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(TREASURES, {
				q(93652),	-- Hit the Gong for Sporespawned Cache
			}),
		}),
	}),
}));
