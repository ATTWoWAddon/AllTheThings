-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
LOREWALKING = createHeader({
	readable = "Lorewalking",
	icon = 441147,--[[~_.asset("Feature_Lorewalking")]]--, -- TODO Not a real asset file
	text = {
		en = "Lorewalking",
		de = "Lehrensuche",
		es = "Paseo por la historia",
		fr = "Chroniques",
		it = "Cammino della Storia",
		mx = "Cronoleyenda",
		pt = "Trilha das Lendas",
		ru = "Историческая кампания",
		ko = "전승",
		cn = "游学探奇",
		tw = "故事漫遊",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, {
	n(LOREWALKING, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7 } }, {
		["cr"] = 230246,	-- Lorewalker Cho
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(42188),	-- Lorewalking: Blade's Bane
				ach(42187),	-- Lorewalking: Ethereal Wisdom
				ach(42189),	-- Lorewalking: The Lich King
			}),
			n(REWARDS, {
				i(242386,{	-- Lorewalker's Crate of Memorabilia
					["sym"] = {{"select","itemID",171305},{"pop"}},	-- Salvaged Cache of Goods [Party Sync Loot]
				}),
			}),
			n(QUESTS, {
				q(90705, {	-- Lorewalking
					["isBreadcrumb"] = true,	-- speculation
					-- auto-pop at login on ptr build 60520 @ 80s character
				}),
				-- Only quests that throw reports and not repeated (already sorted) quest in chain
				header(HEADERS.Achievement, 42188, {	-- Lorewalking: Blade's Bane
					q(84371, {	-- Lorewalking: The Blade and the High Priest
						["provider"] = { "n", 232441 },	-- Lorewalker Cho
						--["sourceQuests"] = { 90705 },	-- Lorewalking
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["isRepeatable"] = true,
						-- Alex: when I picked up this quest - it flag 40706 & 42074 as completed
						["groups"] = {
							o(247690, {	-- Xal'atath
								["coord"] = { 58.8, 76.6, 20 }, -- Keeper's Rest
								-- Alex: this is also looted during q:40710
								["groups"] = { i(229361) },	-- Xal'atath, Blade of the Black Empire (QI!)
							}),
						},
					}),
					q(84779, {	-- Lorewalking: The Blade's Gambit
						["provider"] = { "n", 231891 },	-- Lorewalker Cho
						["sourceQuests"] = { 84371 },	-- Lorewalking: The Blade and the High Priest
						["coord"] = { 61.5, 71.0, 20 },	-- Keeper's Rest
						["isRepeatable"] = true,
					}),
					q(84782, {	-- Lorewalking: The Blade's Past
						["provider"] = { "n", 231891 },	-- Lorewalker Cho
						["sourceQuests"] = { 84779 },	-- Lorewalking: The Blade's Gambit
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["isRepeatable"] = true,
					}),
					q(85871, {	-- Lorewalking: The Blade's Forces
						["provider"] = { "n", 230321 },	-- Xithixxin
						["sourceQuests"] = { 84782 },	-- Lorewalking: The Blade's Past
						["coord"] = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						["maps"] = {
							2382,	-- Ny'alotha
							2383,	-- Twilight Landing
							2384,	-- Maw of Gor'ma
						},
						["isRepeatable"] = true,
					}),
					q(84784, {	-- Lorewalking: The Blade's Nemeses
						["provider"] = { "n", 230321 },	-- Xithixxin
						["sourceQuests"] = { 84782 },	-- Lorewalking: The Blade's Past
						["coord"] = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						["maps"] = {
							2382,	-- Ny'alotha
							2383,	-- Twilight Landing
							2384,	-- Maw of Gor'ma
						},
						["isRepeatable"] = true,
					}),
					q(84789, {	-- Lorewalking: The Blade's Downfall
						["provider"] = { "n", 230321 },	-- Xithixxin
						["sourceQuests"] = {
							85871,	-- Lorewalking: The Blade's Forces
							84784,	-- Lorewalking: The Blade's Nemeses
						},
						["coord"] = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						["maps"] = { 2379 },	-- Annex of Prophecy
						["groups"] = {
							i(244888),	-- Echo of Xal'atath, Blade of the Black Empire (TOY!)
							i(244846),	-- Lorewalker's Notes: Xal'atath, Blade of the Black Empire (lore)
						},
					}),
				}),
				header(HEADERS.Achievement, 42187, {	-- Lorewalking: Ethereal Wisdom
					q(85027, {	-- Lorewalking: The Protectorate
						["provider"] = { "n", 232441 },	-- Lorewalker Cho
						--["sourceQuests"] = { 90705 },	-- Lorewalking
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["isRepeatable"] = true,
					}),
					q(85029, {	-- Lorewalking: Locus-Walker
						["provider"] = { "n", 231702 },	-- Lorewalker Cho
						["sourceQuests"] = { 85027 },	-- Lorewalking: The Protectorate
						["coord"] = { 60.1, 31.7, NETHERSTORM },
						["isRepeatable"] = true,
					}),
					q(85028, {	-- Lorewalking: The Brokers
						["provider"] = { "n", 231702 },	-- Lorewalker Cho
						["sourceQuests"] = { 85029 },	-- Lorewalking: Locus-Walker
						["coord"] = { 28.4, 47.2, EREDATH },
						["isRepeatable"] = true,
					}),
					q(85035, {	-- Locus-Walker, Telogrus Ranger
						["provider"] = { "n", 234111 },	-- Om'rajula
						["sourceQuests"] = { 85028 },	-- Lorewalking: The Brokers
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["isRepeatable"] = true,
						["groups"] = { i(231831) },	-- Ve'nari's Parcel (QI!)
					}),
					q(85036, {	-- Veni Vidi Ve'nari
						["provider"] = { "n", 231706 },	-- Locus-Walker
						["sourceQuests"] = { 85035 },	-- Locus-Walker, Telogrus Ranger
						["coord"] = { 27.5, 28.3, TELOGRUS_RIFT },
						["groups"] = {
							i(245567),	-- K'aresh Memory Crystal (TOY!)
							i(244843),	-- Lorewalker's Notes: The Ethereals (lore)
						},
					}),
				}),
				header(HEADERS.Achievement, 42189, {	-- Lorewalking: The Lich King
					q(85884, {	-- Lorewalking: The Prince Who Would Be King
						["provider"] = { "n", 230246 },	-- Lorewalker Cho
						--["sourceQuests"] = { 90705 },	-- Lorewalking
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["isRepeatable"] = true,
					}),
					q(85862, {	-- A Prince's Duty
						["provider"] = { "n", 233752 },	-- Uther Lightbringer
						["sourceQuests"] = { 85884 },	-- Lorewalking: The Prince Who Would Be King
						["coord"] = { 34.1, 84.1, 2418 },	-- Scarlet Halls
						["isRepeatable"] = true,
					}),
					q(85885, {	-- Lorewalking: No King Rules Forever
						["provider"] = { "n", 236114 },	-- Lorewalker Cho
						["sourceQuests"] = { 85884 },	-- Lorewalking: The Prince Who Would Be King
						["coords"] = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						["groups"] = {
							i(245631),	-- Royal Visage (TOY!)
							i(244858),	-- Lorewalker's Notes: The Lich King (lore)
						},
					}),
					q(85875, {	-- Ascent of the Lich King
						--["provider"] = { "n", ?? },	-- auto accepted during 85885
						["sourceQuests"] = { 85885 },	-- Lorewalking: No King Rules Forever
						["coord"] = { 51.4, 79.4, ICECROWN },
						["isRepeatable"] = true,
					}),
					q(85878, {	-- O' Thanagor
						--["provider"] = { "n", ?? },	-- auto accepted during 85885, but after 85875
						--["coord"] = { X, Y, ICECROWN_CITADEL },
						["sourceQuests"] = { 85875 },	-- Ascent of the Lich King
						["isRepeatable"] = true,
					}),
				}),
			}),
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7 } }, {
	n(LOREWALKING, {
		q(91025),	-- After completing Lorewalking: Blade's Bane
		q(91027),	-- After completing Lorewalking: The Lich King
		q(91028),	-- After completing Lorewalking: Ethereal Wisdom
	}),
})));