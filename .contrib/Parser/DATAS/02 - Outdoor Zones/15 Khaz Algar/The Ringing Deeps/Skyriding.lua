---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		skyriding(n(SKYRIDING, {
			n(ACHIEVEMENTS, {
				ach(40325, {	-- The Ringing Deeps: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20336,	-- Cataract River Cruise: Bronze
						20327,	-- Chittering Concourse: Bronze
						20309,	-- Earthenworks Weave: Bronze
						20354,	-- Opportunity Point Amble: Bronze
						20318,	-- Ringing Deeps Ramble: Bronze
						20345,	-- Taelloch Twist: Bronze
					}},
				}),
				ach(40326, {	-- The Ringing Deeps: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20337,	-- Cataract River Cruise: Silver
						20328,	-- Chittering Concourse: Silver
						20310,	-- Earthenworks Weave: Silver
						20355,	-- Opportunity Point Amble: Silver
						20319,	-- Ringing Deeps Ramble: Silver
						20346,	-- Taelloch Twist: Silver
					}},
				}),
				ach(40327, {	-- The Ringing Deeps: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20338,	-- Cataract River Cruise: Gold
						20329,	-- Chittering Concourse: Gold
						20311,	-- Earthenworks Weave: Gold
						20356,	-- Opportunity Point Amble: Gold
						20320,	-- Ringing Deeps Ramble: Gold
						20347,	-- Taelloch Twist: Gold
					}},
				}),
				ach(40328, {	-- The Ringing Deeps Advanced: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20339,	-- Cataract River Cruise Advanced: Bronze
						20330,	-- Chittering Concourse Advanced: Bronze
						20312,	-- Earthenworks Weave Advanced: Bronze
						20357,	-- Opportunity Point Amble Advanced: Bronze
						20321,	-- Ringing Deeps Ramble Advanced: Bronze
						20348,	-- Taelloch Twist Advanced: Bronze
					}},
				}),
				ach(40329, {	-- The Ringing Deeps Advanced: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20340,	-- Cataract River Cruise Advanced: Silver
						20331,	-- Chittering Concourse Advanced: Silver
						20313,	-- Earthenworks Weave Advanced: Silver
						20358,	-- Opportunity Point Amble Advanced: Silver
						20322,	-- Ringing Deeps Ramble Advanced: Silver
						20349,	-- Taelloch Twist Advanced: Silver
					}},
				}),
				ach(40330, {	-- The Ringing Deeps Advanced: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20341,	-- Cataract River Cruise Advanced: Gold
						20332,	-- Chittering Concourse Advanced: Gold
						20314,	-- Earthenworks Weave Advanced: Gold
						20359,	-- Opportunity Point Amble Advanced: Gold
						20323,	-- Ringing Deeps Ramble Advanced: Gold
						20350,	-- Taelloch Twist Advanced: Gold
					}},
				}),
				ach(40331, {	-- The Ringing Deeps Reverse: Bronze
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20342,	-- Cataract River Cruise Reverse: Bronze
						20333,	-- Chittering Concourse Reverse: Bronze
						20315,	-- Earthenworks Weave Reverse: Bronze
						20360,	-- Opportunity Point Amble Reverse: Bronze
						20324,	-- Ringing Deeps Ramble Reverse: Bronze
						20351,	-- Taelloch Twist Reverse: Bronze
					}},
				}),
				ach(40332, {	-- The Ringing Deeps Reverse: Silver
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20343,	-- Cataract River Cruise Reverse: Silver
						20334,	-- Chittering Concourse Reverse: Silver
						20316,	-- Earthenworks Weave Reverse: Silver
						20361,	-- Opportunity Point Amble Reverse: Silver
						20325,	-- Ringing Deeps Ramble Reverse: Silver
						20352,	-- Taelloch Twist Reverse: Silver
					}},
				}),
				ach(40333, {	-- The Ringing Deeps Reverse: Gold
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20344,	-- Cataract River Cruise Reverse: Gold
						20335,	-- Chittering Concourse Reverse: Gold
						20317,	-- Earthenworks Weave Reverse: Gold
						20362,	-- Opportunity Point Amble Reverse: Gold
						20326,	-- Ringing Deeps Ramble Reverse: Gold
						20353,	-- Taelloch Twist Reverse: Gold
					}},
				}),
			}),
			n(QUESTS, {
				skyridingrace(80240, {	-- Cataract River Cruise
					["provider"] = { "n", 219554 },	-- Bronze Timekeeper
					["coord"] = { 52.5, 46.9, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20336),	-- Cataract River Cruise: Bronze
						ach(20337),	-- Cataract River Cruise: Silver
						ach(20338),	-- Cataract River Cruise: Gold
					},
				}),
				skyridingrace(80247, {	-- Cataract River Cruise - Advanced
					["provider"] = { "n", 219554 },	-- Bronze Timekeeper
					["coord"] = { 52.5, 46.9, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20339),	-- Cataract River Cruise Advanced: Bronze
						ach(20340),	-- Cataract River Cruise Advanced: Silver
						ach(20341),	-- Cataract River Cruise Advanced: Gold
					},
				}),
				skyridingrace(80253, {	-- Cataract River Cruise - Reverse
					["provider"] = { "n", 219554 },	-- Bronze Timekeeper
					["coord"] = { 52.5, 46.9, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20342),	-- Cataract River Cruise Reverse: Bronze
						ach(20343),	-- Cataract River Cruise Reverse: Silver
						ach(20344),	-- Cataract River Cruise Reverse: Gold
					},
				}),
				skyridingrace(80239, {	-- Chittering Concourse
					["provider"] = { "n", 219553 },	-- Bronze Timekeeper
					["coord"] = { 67.8, 34.8, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20327),	-- Chittering Concourse: Bronze
						ach(20328),	-- Chittering Concourse: Silver
						ach(20329),	-- Chittering Concourse: Gold
					},
				}),
				skyridingrace(80246, {	-- Chittering Concourse - Advanced
					["provider"] = { "n", 219553 },	-- Bronze Timekeeper
					["coord"] = { 67.8, 34.8, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20330),	-- Chittering Concourse Advanced: Bronze
						ach(20331),	-- Chittering Concourse Advanced: Silver
						ach(20332),	-- Chittering Concourse Advanced: Gold
					},
				}),
				skyridingrace(80252, {	-- Chittering Concourse - Reverse
					["provider"] = { "n", 219553 },	-- Bronze Timekeeper
					["coord"] = { 67.8, 34.8, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20333),	-- Chittering Concourse Reverse: Bronze
						ach(20334),	-- Chittering Concourse Reverse: Silver
						ach(20335),	-- Chittering Concourse Reverse: Gold
					},
				}),
				skyridingrace(80237, {	-- Earthenworks Weave
					["provider"] = { "n", 219551 },	-- Bronze Timekeeper
					["coord"] = { 40.9, 11.3, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20309),	-- Earthenworks Weave: Bronze
						ach(20310),	-- Earthenworks Weave: Silver
						ach(20311),	-- Earthenworks Weave: Gold
					},
				}),
				skyridingrace(80244, {	-- Earthenworks Weave - Advanced
					["provider"] = { "n", 219551 },	-- Bronze Timekeeper
					["coord"] = { 40.9, 11.3, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20312),	-- Earthenworks Weave Advanced: Bronze
						ach(20313),	-- Earthenworks Weave Advanced: Silver
						ach(20314),	-- Earthenworks Weave Advanced: Gold
					},
				}),
				skyridingrace(80250, {	-- Earthenworks Weave - Reverse
					["provider"] = { "n", 219551 },	-- Bronze Timekeeper
					["coord"] = { 40.9, 11.3, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20315),	-- Earthenworks Weave Reverse: Bronze
						ach(20316),	-- Earthenworks Weave Reverse: Silver
						ach(20317),	-- Earthenworks Weave Reverse: Gold
					},
				}),
				skyridingrace(80243, {	-- Opportunity Point Amble
					["provider"] = { "n", 219556 },	-- Bronze Timekeeper
					["coord"] = { 63.5, 75.1, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20354),	-- Opportunity Point Amble: Bronze
						ach(20355),	-- Opportunity Point Amble: Silver
						ach(20356),	-- Opportunity Point Amble: Gold
					},
				}),
				skyridingrace(80249, {	-- Opportunity Point Amble - Advanced
					["provider"] = { "n", 219556 },	-- Bronze Timekeeper
					["coord"] = { 63.5, 75.1, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20357),	-- Opportunity Point Amble Advanced: Bronze
						ach(20358),	-- Opportunity Point Amble Advanced: Silver
						ach(20359),	-- Opportunity Point Amble Advanced: Gold
					},
				}),
				skyridingrace(80255, {	-- Opportunity Point Amble - Reverse
					["provider"] = { "n", 219556 },	-- Bronze Timekeeper
					["coord"] = { 63.5, 75.1, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20360),	-- Opportunity Point Amble Reverse: Bronze
						ach(20361),	-- Opportunity Point Amble Reverse: Silver
						ach(20362),	-- Opportunity Point Amble Reverse: Gold
					},
				}),
				skyridingrace(80238, {	-- Ringing Deeps Ramble
					["provider"] = { "n", 219552 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 27.4, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20318),	-- Ringing Deeps Ramble: Bronze
						ach(20319),	-- Ringing Deeps Ramble: Silver
						ach(20320),	-- Ringing Deeps Ramble: Gold
					},
				}),
				skyridingrace(80245, {	-- Ringing Deeps Ramble - Advanced
					["provider"] = { "n", 219552 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 27.4, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20321),	-- Ringing Deeps Ramble Advanced: Bronze
						ach(20322),	-- Ringing Deeps Ramble Advanced: Silver
						ach(20323),	-- Ringing Deeps Ramble Advanced: Gold
					},
				}),
				skyridingrace(80251, {	-- Ringing Deeps Ramble - Reverse
					["provider"] = { "n", 219552 },	-- Bronze Timekeeper
					["coord"] = { 42.2, 27.4, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20324),	-- Ringing Deeps Ramble Reverse: Bronze
						ach(20325),	-- Ringing Deeps Ramble Reverse: Silver
						ach(20326),	-- Ringing Deeps Ramble Reverse: Gold
					},
				}),
				skyridingrace(80242, {	-- Taelloch Twist
					["provider"] = { "n", 219555 },	-- Bronze Timekeeper
					["coord"] = { 66.6, 68.7, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20345),	-- Taelloch Twist: Bronze
						ach(20346),	-- Taelloch Twist: Silver
						ach(20347),	-- Taelloch Twist: Gold
					},
				}),
				skyridingrace(80248, {	-- Taelloch Twist - Advanced
					["provider"] = { "n", 219555 },	-- Bronze Timekeeper
					["coord"] = { 66.6, 68.7, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20348),	-- Taelloch Twist Advanced: Bronze
						ach(20349),	-- Taelloch Twist Advanced: Silver
						ach(20350),	-- Taelloch Twist Advanced: Gold
					},
				}),
				skyridingrace(80254, {	-- Taelloch Twist - Reverse
					["provider"] = { "n", 219555 },	-- Bronze Timekeeper
					["coord"] = { 66.6, 68.7, THE_RINGING_DEEPS },
					["groups"] = {
						ach(20351),	-- Taelloch Twist Reverse: Bronze
						ach(20352),	-- Taelloch Twist Reverse: Silver
						ach(20353),	-- Taelloch Twist Reverse: Gold
					},
				}),
			}),
		})),
	}),
}));
