---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				79197,	-- Surface Bound
				TWW_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
				petbattle(q(82294, {	-- Miniature Army
					["provider"] = { "n", 223442 },	-- Kyrie
					["coord"] = { 57.4, 62.8, HALLOWFALL },
				})),
				petbattle(q(82298, {	-- The Thing from the Swamp
					["provider"] = { "n", 223409 },	-- Guttergunk
					["coord"] = { 61.1, 69.0, HALLOWFALL },
				})),
				pvp(q(81622, {	-- Bells of the Light
					["coord"] = { 38.2, 36.4, HALLOWFALL },
				})),
				pvp(q(80412, {	-- Fending off Darkness
					["coord"] = { 57.9, 48.9, HALLOWFALL },
				})),
				q(82254, {	-- Aquacalypse
					["coord"] = { 45.3, 23.9, HALLOWFALL },
				}),
				q(82041, {	-- Beledar's Blessing
					["coord"] = { 24.3, 60.9, HALLOWFALL },
				}),
				q(82257, {	-- Burrow Burial
					["coord"] = { 71.3, 56.4, HALLOWFALL },
				}),
				q(82133, {	-- Documenting: Field Manual Edition
					["coord"] = { 39.9, 74.7, HALLOWFALL },
				}),
				q(81862, {	-- Feline Frenzy
					["coord"] = { 41.9, 58.1, HALLOWFALL },
				}),
				q(82259, {	-- Honoring Our Fallen
					["coord"] = { 71.8, 61.0, HALLOWFALL },
					["groups"] = {
						i(213191),	-- Arathi Tinderbox (QI!)
					},
				}),
				q(82583, {	-- Igniting the Fire Within
					["coord"] = { 55.2, 32.7, HALLOWFALL },
				}),
				q(82206, {	-- Into Shadows
					["coord"] = { 67.7, 44.4, HALLOWFALL },
				}),
				q(82088, {	-- Kobyss Kibosh
					["coord"] = { 35.4, 54.7, HALLOWFALL },
				}),
				q(82584, {	-- Light's Gambit
					["coord"] = { 48.6, 39.4, HALLOWFALL },
					["groups"] = {
						ach(40729),		-- Light's Gambit Champion
					},
				}),
				q(82582, {	-- Mired in Shadow
					["coord"] = { 74.8, 50.3, HALLOWFALL },
				}),
				q(82120, {	-- Pool Cleaner
					["coord"] = { 51.1, 50.9, HALLOWFALL },
					["sym"] = {{"select","achievementID",40082}},	-- Never Enough
				}),
				q(81620, {	-- Recovery Job
					["coord"] = { 56.0, 67.1, HALLOWFALL },
					["groups"] = {
						i(219357),	-- Shipyard Tools (QI!)
					},
				}),
				q(82197, {	-- Reserve Rumpus
					["coord"] = { 42.0, 52.2, HALLOWFALL },
				}),
				q(82258, {	-- Sieging Siege Weapons
					["coord"] = { 56.8, 66.2, HALLOWFALL },
					["groups"] = {
						i(213630),	-- Keg of Black Powder (QI!)
					},
				}),
				q(81815, {	-- Skyrider Racing - Dunelle's Detour
					["coord"] = { 72.8, 38.4, HALLOWFALL },
				}),
				q(81818, {	-- Skyrider Racing - Light's Redoubt Descent
					["coord"] = { 41.4, 67.3, HALLOWFALL },
				}),
				q(81822, {	-- Skyrider Racing - Mereldar Meander
					["coord"] = { 39.0, 61.4, HALLOWFALL },
				}),
				q(81819, {	-- Skyrider Racing - Stillstone Slalom
					["coord"] = { 60.4, 26.0, HALLOWFALL },
				}),
				q(81816, {	-- Skyrider Racing - Tenir's Traversal
					["coord"] = { 59.2, 68.9, HALLOWFALL },
				}),
				q(81823, {	-- Skyrider Racing - Velhan's Venture
					["coord"] = { 54.1, 17.6, HALLOWFALL },
				}),
				q(82586, {	-- Spore Ender (previous questID 82588?)
					["coord"] = { 60.2, 62.2, HALLOWFALL },
					["groups"] = {
						i(225655),	-- Fragrant Mirespores (QI!)
					},
				}),
				q(82585, {	-- With Great Pyre
					["coord"] = { 68.2, 35.0, HALLOWFALL },
					["groups"] = {
						i(225555),	-- Periapt of Pure Flame (QI!)
					},
				}),
				q(82288, {	-- Work Hard, Play Hard
					["coord"] = { 41.8, 55.3, HALLOWFALL },
					["groups"] = {
						ach(40150),		-- Children's Entertainer
					},
				}),
				n(SPECIAL, {
					q(82852, {	-- Special Assignment: Lynx Rescue
						-- ["coord"] = { x, y, HALLOWFALL },
					}),
					q(82158, {	-- Special Assignment: Lynx Rescue
						-- ["coord"] = { x, y, HALLOWFALL },
					}),
					q(82157),	-- Special Assignment: Rise of the Colossals [Trigger]
					q(82787, {	-- Special Assignment: Rise of the Colossals
						-- ["coord"] = { x, y, HALLOWFALL },
						["groups"] = {
							i(224183),	-- Bleak Chum (QI!)
						},
					}),
				}),
			}),
		}),
	}),
}));
