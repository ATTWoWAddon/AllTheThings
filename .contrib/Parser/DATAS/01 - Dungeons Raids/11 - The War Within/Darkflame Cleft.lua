-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1210, {	-- Darkflame Cleft
		["coord"] = { 59.6, 21.6, THE_RINGING_DEEPS },
		["maps"] = { 2303 },	-- Darkflame Cleft
		["groups"] = {
			n(QUESTS, {
				q(83154, {	-- Knicknack's Knickknacks
					--["sourceQuests"] = { x },	-- ?
					["provider"] = { "n", 225555 },	-- Knicknack
					["coord"] = { 46.5, 30.3, THE_RINGING_DEEPS },
					["groups"] = {
						i(224775),	-- Knicknack's Definitely Rubies (QI!)
						i(224778),	-- Knicknack's Enbiggener (QI!)
						i(224774),	-- Knicknack's Potion Bottle (QI!)
						i(224773),	-- Knicknack's Red Candle (QI!)
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2569, {	-- Ol' Waxbeard
					["crs"] = { 210153 },	-- Ol' Waxbeard
					["groups"] = {
						i(221097),	-- Arcane Scuttle
						i(219304),	-- Conductor's Wax Whistle
						i(221098),	-- Mole Knight's Grimemail
						i(221096),	-- Rail Rider's Bisector
						i(221099),	-- Wick's Golden Loop
					},
				}),
				e(2559, {	-- Blazikon
					["crs"] = { 208743 },	-- Blazikon
					["groups"] = {
						i(219305),	-- Carved Blazikon Wax
						i(221103),	-- Flickering Glowtorc
						i(221104),	-- Gleamwax Shackles
						i(221101),	-- Scent-Strong Candlecord
						i(221102),	-- Shimmering Glimclaws
						i(221100),	-- Waxsteel Greathelm
					},
				}),
				e(2560, {	-- The Candle King
					["crs"] = { 208745 },	-- The Candle King
					["groups"] = {
						i(219306),	-- Burin of the Candle King
						i(221109),	-- Candlebearer's Shroud
						i(221105),	-- Dark Zone Headtaker
						i(221107),	-- Gleamkeeper's Buckle
						i(221106),	-- Gloomstomper's Sabatons
						i(221108),	-- King's Malicious Clutches
					},
				}),
				e(2561, {	-- The Darkness
					["crs"] = { 208747 },	-- The Darkness
					["groups"] = {
						ach(40427),	-- Darkflame Cleft
						i(223061),	-- Technique: Inscribed Rolling Pin (RECIPE!)
						i(221112),	-- Caliginous Claspers
						i(221110),	-- Crepuscular Carver
						i(221113),	-- Gloaming Visage
						i(221115),	-- Photophobic Amice
						i(221111),	-- Poleaxe of Somber Fate
						i(219307),	-- Remnant of Darkness
						i(221114),	-- Shadowspawn Leggings
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2561, {	-- The Darkness
					["crs"] = { 208747 },	-- The Darkness
					["groups"] = {
						ach(40428),	-- Heroic: Darkflame Cleft
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, bubbleDownSelf({ ["timeline"] = { CREATED_11_0_2, ADDED_11_1_0 } }, {
				e(2561, {	-- The Darkness
					["crs"] = { 208747 },	-- The Darkness
					["groups"] = {
						ach(40429),	-- Mythic: Darkflame Cleft
						i(225548),	-- Wick's Lead (MOUNT!)
					},
				}),
			})),
		},
	})
})));
