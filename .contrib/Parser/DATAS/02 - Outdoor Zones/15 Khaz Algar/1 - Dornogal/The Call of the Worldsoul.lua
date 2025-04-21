---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(DORNOGAL, {
		header(HEADERS.Quest, 82449, {	-- The Call of the Worldsoul
			n(QUESTS, sharedData({
				["sourceQuestNumRequired"] = 1,
				["sourceQuests"] = {
					79197,	-- Surface Bound
					TWW_ACCOUNT_CAMPAIGN_QUEST,
				},
				["provider"] = { "n", 223875 },	-- Faerin Lothar
				["coord"] = { 46.1, 49.6, DORNOGAL },
				["isWeekly"] = true,
				["_drop"] = { "g" },
				["g"] = {
					i(211297),	-- Fractured Spark of Omens
				},
			},{
				q(89492, {	-- Dastardly Duos in the Dome!
					["timeline"] = { ADDED_11_1_5 },
				}),
				q(82449),	-- The Call of the Worldsoul
				q(82491),	-- Worldsoul: Ara-Kara, City of Echoes [N]
				q(82494),	-- Worldsoul: Ara-Kara, City of Echoes [H]
				q(82502),	-- Worldsoul: Ara-Kara, City of Echoes [M]
				q(82511),	-- Worldsoul: Awakening Machine
				q(82485),	-- Worldsoul: Cinderbrew Meadery [N]
				q(82495),	-- Worldsoul: Cinderbrew Meadery [H]
				q(82503),	-- Worldsoul: Cinderbrew Meadery [M]
				q(82492),	-- Worldsoul: City of Threads [N]
				q(82496),	-- Worldsoul: City of Threads [H]
				q(82504),	-- Worldsoul: City of Threads [M]
				q(82488),	-- Worldsoul: Darkflame Cleft [N]
				q(82498),	-- Worldsoul: Darkflame Cleft [H]
				q(82506),	-- Worldsoul: Darkflame Cleft [M]
				q(87419, {	-- Worldsoul: Delves
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(87417, {	-- Worldsoul: Dungeons
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(82453),	-- Worldsoul: Encore!
				q(89514, {	-- Worldsoul: Horrific Visions Revisited
					["timeline"] = { ADDED_11_1_5 },
				}),
				q(82509),	-- Worldsoul: Nerub-ar Palace [LFR]
				q(82659),	-- Worldsoul: Nerub-ar Palace [N]
				q(82510),	-- Worldsoul: Nerub-ar Palace [H]
				q(89502, {	-- Worldsoul: Nightfall
					["timeline"] = { ADDED_11_1_5 },
				}),
				q(82490),	-- Worldsoul: Priory of the Sacred Flame [N]
				q(82499),	-- Worldsoul: Priory of the Sacred Flame [H]
				q(82507),	-- Worldsoul: Priory of the Sacred Flame [M]
				q(82458),	-- Worldsoul: Renown
				q(82516),	-- Worldsoul: Severed Threads Pact
				q(82482),	-- Worldsoul: Snuffling
				q(82483),	-- Worldsoul: Spreading the Light
				q(82489),	-- Worldsoul: The Dawnbreaker [N]
				q(82493),	-- Worldsoul: The Dawnbreaker [H]
				q(82501),	-- Worldsoul: The Dawnbreaker [M]
				q(82486),	-- Worldsoul: The Rookery [N]
				q(82500),	-- Worldsoul: The Rookery [H]
				q(82508),	-- Worldsoul: The Rookery [M]
				q(82487),	-- Worldsoul: The Stonevault [N]
				q(82497),	-- Worldsoul: The Stonevault [H]
				q(82505),	-- Worldsoul: The Stonevault [M]
				q(87423, {	-- Worldsoul: Undermine Explorer
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(87422, {	-- Worldsoul: Undermine World Quests
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(82512),	-- Worldsoul: World Boss
				q(87424, {	-- Worldsoul: World Bosses
					["timeline"] = { ADDED_11_1_0 },
				}),
				q(82452),	-- Worldsoul: World Quests
				-- Also Fired / Alex: can confirm 82484, 82513, 82514, 82515 too;
				q(82484),	--
				q(82513),	--
				q(82514),	--
				q(82515),	--
				-- only for low level alts
				q(84668),	-- when pick up any Worldsoul quest on <80s character // I got this on level 80 Char
			})),
		}),
	}),
})));