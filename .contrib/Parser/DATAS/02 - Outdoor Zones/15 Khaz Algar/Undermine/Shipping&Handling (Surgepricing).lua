---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local SHIPPING_AND_HANDLING = createHeader({
	readable = "Shipping & Handling",
	constant = "SHIPPING_AND_HANDLING",
	icon = 6383558,
	text = {
		en = "Shipping & Handling",
		cn = "货运与接收",
	},
});

root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(SHIPPING_AND_HANDLING, {
			["description"] = "Complete 10 jobs in a row without canceling your streak to earn a reward. Additionally, every hour at the half-hour mark (or xx:30), a Surge Pricing event will start.\nFor 10 minutes, completing Shipping and Handling tasks will count towards an objective bar that will show up on top of your screen.\nThis will count Shipping and Handling tasks completed by everyone in Undermine.\nDuring Surge Pricing, Shipping and Handling completions give you double rewards.",
			["groups"] = {
				filter(MISC, {
					i(225415, {	-- Caddy Caller
						["provider"] = { "n", 227210 },		-- Nanny Talullah <Shipping and Handling>
					}),
				}),
				n(QUESTS, {
					q(86775, {	-- Urge to Surge
						--["sourceQuests"] = { xx },	-- ??
						["provider"] = { "n", 231409 },	-- Smaks Topskimmer
						["coord"] = { 43.8, 50.8, UNDERMINE },
						["isWeekly"] = true,
						["g"] = {
							i(238208, {	-- Nanny's Surge Dividends
								["sym"] = {{"select","itemID",235639},{"pop"}},	-- Seasoned Adventurer's Cache [Undermine Zone Rewards content]
							}),
						},
					}),
				}),
				n(QUESTS, sharedData({["repeatable"]=true,}, {
					q(85888),	-- Artistic License
					q(87588),	-- Bash that Trash
					q(86317),	-- Black Blood by Sea
					q(86320),	-- Bully For You!
					q(86315),	-- Chaos in the Streets
					q(86370),	-- Clean Sweep
					q(85759),	-- Crystal Alignment
					q(85733),	-- Daquiri Disaster
					q(86313),	-- Darkfuse Cleanup
					q(86321),	-- Door to Door
					q(85732),	-- Express Extermination
					q(86319),	-- Eyes of the Sky
					q(86412),	-- Fancy Pants
					q(85854),	-- For Want of a Name
					q(86418),	-- Fresh Towel?
					q(85874, {i(232619),}),	-- Goldfish Rescue (+ Gary the Goldfish (QI!))
					q(85826),	-- Granny Crossing
					q(86311),	-- Heaps of Trouble
					q(84791),	-- Hotrocket Burgers
					q(84788),	-- Hotrocket Hot Dogs
					q(85797),	-- Knife Fight
					q(87569),	-- Legally Mandated Break
					q(85715),	-- Muse Wanted
					q(86314),	-- Ooze on Aisle 3
					q(85771),	-- Paper Delivery
					q(85717),	-- Precarious Pet
					q(85861),	-- Rug Monster!!!
					q(83055),	-- Signed, Sealed
					q(86410),	-- Slime Wranglin'
					q(85758),	-- Sweeping Up
					q(86318),	-- Tailgater Troubles
					q(85946),	-- The Great Crab Breakout
					q(85769),	-- The Party Must Go On
				})),
				n(EVENT_COMPLETION, {	-- Job Streak give reward after first 10 delivery job in row per character
					i(236756),	-- Socially Expected Tip Chest	(Green Quality)
					i(236757),	-- Generous Tip Chest			(Blue Quality)
					i(236758),	-- Extravagant Tip Chest		(Purple Quality)
					filter(MOUNTS, {
						i(229947),	-- Violet Goblin Shredder (MOUNT!)
					}),
					filter(BATTLE_PETS, {
						i(232852),	-- Mutt (PET!)
						i(232847),	-- Personal-Use Sapper (PET!)
					}),
					filter(COSMETIC, {
						i(231556),	-- Breakneck Cabbie's Coat
					}),
					n(ARMOR, {
						["g"] = {
							filter(BACK_F, {
								i(237123),	-- Descaled Capelet
								i(237126),	-- Laundered Cape
								i(237124),	-- Power-Washed Drape
								i(237125),	-- Upcycled Cloak
							}),
							filter(CLOTH, {
								i(233266),	-- Laundered Cord
								i(233262),	-- Laundered Handwraps
								i(233264),	-- Laundered Leggings
								i(233265),	-- Laundered Shoulderpads
							}),
							filter(LEATHER, {
								i(233339),	-- Upcycled Breeches
								i(233340),	-- Upcycled Epaulets
								i(233337),	-- Upcycled Gloves
								i(233341),	-- Upcycled Sash
							}),
							filter(MAIL, {
								i(233349),	-- Power-Washed Belt
								i(233347),	-- Power-Washed Greaves
								i(233345),	-- Power-Washed Grips
								i(233348),	-- Power-Washed Shoulderguards
							}),
							filter(PLATE, {
								i(233546),	-- Descaled Gauntlets
								i(233550),	-- Descaled Girdle
								i(233548),	-- Descaled Legguards
								i(233549),	-- Descaled Mantle
							}),
						},
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(SHIPPING_AND_HANDLING, {
			n(EVENT_COMPLETION, {
				q(86299, { ["name"] = "Looted Breakneck Cabbie's Coat" }),	-- Looted Breakneck Cabbie's Coat
				q(86300, { ["name"] = "Looted Violet Goblin Shredder" }),	-- Looted Violet Goblin Shredder
				q(86302, { ["name"] = "Looted Mutt" }),	-- Looted Mutt
				q(86303, { ["name"] = "Looted Personal-Use Sapper" }),	-- Looted Personal-Use Sapper
			}),
		}),
	}),
})));