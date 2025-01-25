-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
CLAN_AYLAAG = createHeader({
	readable = "Clan Aylaag",
	icon = 3193420,
	text = {
		en = "Clan Aylaag",
		de = "Klan Aylaag",
		es = "Clan Aylaag",
		fr = "Clan des Aylaags",
		it = "Clan Aylaag",
		ko = "아일라그 부족",
		pt = "Clã Aylaag",
		ru = "Клан Айлааг",
		cn = "艾拉格氏族",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(MARUUK_CENTAUR, {
		n(CLAN_AYLAAG, bubbleDownSelf({ ["minReputation"] = { FACTION_MARUUK_CENTAUR, 4 } }, {
			n(ACHIEVEMENTS, {
				ach(16462, {	-- The Ohn'ahran Trail
					crit(55480, {	-- Aylaag Outpost to river camp
						["coords"] = {
							{ 71.4, 31.8, OHNAHRAN_PLAINS },	-- Begins Here
							{ 70.6, 63.0, OHNAHRAN_PLAINS },	-- Ends Here
						}}),
					crit(55481, {	-- River camp to Eaglewatch Outpost
						["coords"] = {
							{ 70.6, 63.0, OHNAHRAN_PLAINS },	-- Begins Here
							{ 55.4, 52.4, OHNAHRAN_PLAINS },	-- Ends Here
					}}),
					crit(55482, {	-- Eaglewatch Outpost to Aylaag Outpost
						["coords"] = {
							{ 55.4, 52.4, OHNAHRAN_PLAINS },	-- Begins Here
							{ 71.4, 31.8, OHNAHRAN_PLAINS },	-- Ends Here
					}}),
				}),
			}),
			n(QUESTS, sharedData({
				["maxReputation"] = { FACTION_MARUUK_CENTAUR, 25 },
				["isDaily"] = true
			}, {
				------ River Camp ------
				q(67039, {	-- An Amazing Journey
					["provider"] = { "n", 185881 },	-- Toluiqi
					["coord"] = { 70.7, 62.9, OHNAHRAN_PLAINS },
				}),
				q(70279, {	-- Blood of Dragons
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 70.7, 63.6, OHNAHRAN_PLAINS },
				}),
				q(67222, {	-- Darkened Clouds
					["provider"] = { "n", 185853 },	-- Hadari Khan
					["coord"] = { 70.9, 62.6, OHNAHRAN_PLAINS },
				}),
				q(70990, {	-- If There's Wool There's a Way
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 70.7, 63.6, OHNAHRAN_PLAINS },
					["g"] = {
						i(200153),	-- Aylaag Skinning Shear (QI!)
						i(200149),	-- Wild Argali Wool (QI!)
					},
				}),
				q(67034, {	-- Of Wind and Water
					["provider"] = { "n", 185867 },	-- Barnak of the Reeds
					["coord"] = { 70.9, 62.6, OHNAHRAN_PLAINS },
					["g"] = {
						i(194509),	-- Springborn Core (QI!)
						i(194452),	-- Windtossed Feather (QI!)
					},
				}),
				q(70352, {	-- Scaling Ever Higher
					["provider"] = { "n", 185881 },	-- Toluiqi
					["coord"] = { 70.5, 62.8, OHNAHRAN_PLAINS },
				}),
				------ Eaglewatch Outpost ------
				q(65798, {	-- An Opportunistic Approach
					["provider"] = { "n", 185853 },	-- Hadari Khan
					["coord"] = { 55.8, 51.8, OHNAHRAN_PLAINS },
					["g"] = {
						i(199477),	-- Nokhud Armament (QI!)
					},
				}),
				q(70701, {	-- Bakar Dream of Lost Argali
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 55.6, 52.5, OHNAHRAN_PLAINS },
				}),
				q(70299, {	-- Draconic Defensive
					["provider"] = { "n", 185867 },	-- Barnak of the Reeds
					["coord"] = { 55.9, 51.9, OHNAHRAN_PLAINS },
					["g"] = {
						i(198691),	-- Howling Heart
					},
				}),
				q(71241, {	-- Duck, Duck, Trap
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 55.6, 52.5, OHNAHRAN_PLAINS },
					["g"] = {
						i(200674),	-- Bluebill Meat (QI!)
					},
				}),
				q(70210, {	-- Tradition Not Forgotten
					["provider"] = { "n", 185867 },	-- Barnak of the Reeds
					["coord"] = { 55.8, 51.8, OHNAHRAN_PLAINS },
				}),
				q(67605, {	-- Thundering Plains
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 55.6, 52.5, OHNAHRAN_PLAINS },
					["g"] = {
						i(195386),	-- Ayanga's Horn (QI!)
					},
				}),
				------ Aylaag Outpost ------
				q(66711, {	-- Delicay in the Dark
					["provider"] = { "n", 185853 },	-- Hadari Khan
					["coord"] = { 71.4, 31.0, OHNAHRAN_PLAINS },
					["g"] = {
						i(192603),	-- River Whelk (QI!)
					},
				}),
				q(66698, {	-- Counting Argali
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 71.2, 31.5, OHNAHRAN_PLAINS },
				}),
				q(65792, {	-- Teeth for a Tooth
					["provider"] = { "n", 185880 },	-- Toluijin
					["coord"] = { 71.1, 31.3, OHNAHRAN_PLAINS },
				}),
				q(65796, {	-- The Best Defense...
					["provider"] = { "n", 185853 },	-- Hadari Khan
					["coord"] = { 71.4, 31.0, OHNAHRAN_PLAINS },
				}),
				q(65784, {	-- The Otter Side
					["provider"] = { "n", 185870 },	-- Huntmaster Malkik
					["coord"] = { 71.2, 31.5, OHNAHRAN_PLAINS },
				}),
				q(65789, {	-- Where Rivers Sleep
					["provider"] = { "n", 185867 },	-- Barnak of the Reeds
					["coord"] = { 71.4, 31.0, OHNAHRAN_PLAINS },
					["g"] = {
						i(191839),	-- Fragrant Bloom (QI!)
						i(191840),	-- Mudfin Pouch (QI!)
					},
				}),
			})),
			n(EVENT_COMPLETION, {
				i(200094),	-- Caravan Strongbox
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(MARUUK_CENTAUR, {
		n(CLAN_AYLAAG, {
			q(70922),	-- A > B Reward Test (Mini Boss Steps)
			q(66578),	-- A > B Reward Test (Low Health)
			q(70921),	-- A > B Reward Test (High Health)
			q(70920),	-- A > B Reward Test (Med Health)
		}),
	}),
})));