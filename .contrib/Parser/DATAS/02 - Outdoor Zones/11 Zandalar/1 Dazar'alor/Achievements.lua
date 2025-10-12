---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(ACHIEVEMENTS, {
			ach(12758, {	-- Baiting the Enemy
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12957, {	-- Champion of the Honorbound
				["races"] = HORDE_ONLY,
			}),
			--	NEEDS CONFIRMATION: for boon of gonk and boon of pa'ku"loa expectations," do you need to do any other quests in the zuldazar storyline, or can you get both buffs right after you choose gonk or pa'ku?  i didn't do the achievement until after i had completely finished zuldazar/nazmir, so i'm not sure.
			ach(12614, {	-- Loa Expectations
			--	NEEDS CONFIRMATION: for gonk/pa'ku, do you need to do any other quests in the zuldazar storyline, or can you get both buffs right after you choose?  i didn't do the achievement until after i had completely finished zuldazar/nazmir, so i'm not sure.
				["description"] = "The best place to get this is in the \"Council Chambers\", where all six shrines are in one room. Head to the coordinates provided and enter the building. Turn left and go upstairs. There are shrines around the perimeter of the room for each loa.",
				["coord"] = { 40.8, 11.4, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					crit(40619, {	-- Boon of Gonk
						["sourceQuests"] = {
							47439,	-- Gonk, Lord of the Pack
							47440,	-- Pa'ku, Master of Winds
						},
					}),
					crit(40620, {	-- Boon of Pa'ku
						["sourceQuests"] = {
							47439,	-- Gonk, Lord of the Pack
							47440,	-- Pa'ku, Master of Winds
						},
					}),
					crit(40621, {	-- Boon of Akunda
						["sourceQuests"] = { 50913 },	-- Akunda's Blessing
					}),
					crit(40622, {	-- Boon of Bwonsanmdi
						["sourceQuests"] = { 47249 },	-- Soulbound
					}),
					crit(40623, {	-- Boon of Kimbul
						["sourceQuests"] = { 47578 },	-- Mark of the Loa
					}),
					crit(40624, {	-- Boon of Krag'wa
						["sourceQuests"] = { 47696 },	-- Krag'wa the Terrible
					}),
					i(245497, {["timeline"] = { ADDED_12_0_0 }}),	-- Golden Loa's Altar (DECOR!)
				},
			}),
			ach(13039, {	-- Paku'ai
				["description"] = "Travel to the coordinates provided and click the totems for the easiest method to get the achievement.\n\nRequires alignment with Pa'ku. You can switch loa by speaking to Chronicler Ash'tari in Dazar'alor (50.7, 35.2).\n",
				["coords"] = {
					{ 45.1, 5.28, DAZARALOR },
					{ 46.5, 19.9, DAZARALOR },
					{ 49.5, 32.8, DAZARALOR },
					{ 51.3, 40.9, DAZARALOR },
					{ 58.3, 32.6, DAZARALOR },
					{ 53.2, 18.9, DAZARALOR },
					{ 42.8, 22.9, DAZARALOR },
					{ 40.7, 11.0, DAZARALOR },
					{ 41.3, 37.8, DAZARALOR },
					{ 46.8, 85.5, DAZARALOR },
					{ 44.6, 5.90, DAZARALOR },
					{ 52.8, 12.4, DAZARALOR },
					{ 52.9, 11.3, DAZARALOR },
					{ 59.1, 10.6, DAZARALOR },
					{ 41.3, 39.0, DAZARALOR },
					{ 40.6, 84.3, DAZARALOR },
					{ 65.3, 33.9, ZULDAZAR },
				},
				["races"] = HORDE_ONLY,
				["groups"] = { i(245494, {["timeline"] = { ADDED_12_0_0 }}),},	-- Idol of Pa'ku, Master of Winds (DECOR!)
			}),
			ach(13038, {	-- Raptari Rider
				["description"] = "You can get this achievement easily by running between the two totems at the coordinates provided.\n\nRequires alignment with Gonk. You can switch loa by speaking to Chronicler Ash'tari in Dazar'alor (50.7, 35.2).\n",
				["coord"] = { 49.9, 33.3, DAZARALOR },
				["races"] = HORDE_ONLY,
				["groups"] = { i(245487, {["timeline"] = { ADDED_12_0_0 }}),},	-- Bookcase of Gonk (DECOR!)
			}),
			ach(12555, {	-- Welcome to Zandalar
				["sourceQuests"] = { 52131 },	-- We Need Each Other
				["races"] = HORDE_ONLY,
			}),
			ach(12950, {	-- Zandalari Empire
				["races"] = HORDE_ONLY,
			}),
		}),
	}),
})));
