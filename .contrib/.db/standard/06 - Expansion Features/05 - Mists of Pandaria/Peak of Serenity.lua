-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

PEAK_OF_SERENITY = createHeader({
	readable = "Peak of Serenity",
	icon = 606547,
	text = {
		en = [[~C_Map.GetAreaInfo(6081)]],
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, {
	n(PEAK_OF_SERENITY, {
		["lore"] = "The Peak of Serenity is a hidden monastery and sanctuary located high in the north-central reaches of Pandaria's Kun-Lai Summit. It served primarily as a training ground and place of refuge for monks, and was easily accessible to them through Zen Pilgrimage. In this way, it served a very similar function for monks as Moonglade did for druids and Acherus: The Ebon Hold did for death knights.",
		-- #if AFTER LEGION
		["description"] = "This area phases once you have begun the Monk Class Hall Campaign and may not be accessible again until you complete it.",
		-- #endif
		["timeline"] = { ADDED_5_0_4 },
		["maps"] = { KUN_LAI_SUMMIT },
		["classes"] = { MONK },
		["lvl"] = lvlsquish(20, 20, 10),
		["groups"] = {
			n(QUESTS, {
				q(31834, {	-- Begin Your Training: Master Cheng
					["sourceQuest"] = 31856,	-- The Peak of Serenity - Begin Your Training
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(20, 20, 10),
					["groups"] = {
						objective(1, {	-- Master Cheng's Training Completed
							["provider"] = { "n", 66138 },	-- Master Cheng
							["coord"] = { 47.06, 40.15, KUN_LAI_SUMMIT },
						}),
						i(89551),	-- Aspirant's Staff of Harmony
						i(89553),	-- Aspirant's Staff of Grace
					},
				}),
				q(31837, {	-- Continue Your Training: Master Cheng
					["sourceQuests"] = {
						31836,	-- Continue Your Training: Master Yoon
						31859,	-- The Peak of Serenity - Continue Your Training
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(60, 60, 20),
					["groups"] = {
						objective(1, {	-- Master Cheng's Training Completed
							["provider"] = { "n", 66180 },	-- Master Cheng
							["coord"] = { 48.54, 41.49, KUN_LAI_SUMMIT },
						}),
						i(89564),	-- Red Belt of Gentle Persuasion
						i(89565),	-- Red Belt of Unspoken Warning
					},
				}),
				q(31839, {	-- Continue Your Training: Master Hsu
					["sourceQuests"] = {
						31838,	-- Continue Your Training: Master Tsang
						31861,	-- The Peak of Serenity - Continue Your Training
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(80, 80, 30),
					["groups"] = {
						objective(1, {	-- Master Hsu's Training Completed
							["provider"] = { "n", 66207 },	-- Master Hsu
							["coord"] = { 47.49, 40.93, KUN_LAI_SUMMIT },
						}),
						i(89606),	-- Bladed Staff of the Echoing Gong
						i(89576),	-- Bladed Staff of the Frozen Mountain
						i(89577),	-- Bladed Staff of the Summit's Breeze
					},
				}),
				q(31835, {	-- Continue Your Training: Master Kistane
					["sourceQuests"] = {
						-- #if BEFORE 7.3.5
						31833,	-- Continue Your Training: Master Woo
						31857,	-- The Peak of Serenity - Continue Your Training
						-- #else
						31834,	-- Begin Your Training: Master Cheng
						31857,	-- The Peak of Serenity - Continue Your Training
						-- #endif
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(40, 40, 10),
					["groups"] = {
						objective(1, {	-- Master Kistane's Training Completed
							["provider"] = { "n", 65899 },	-- Master Kistane
							["coord"] = { 48.04, 39.02, KUN_LAI_SUMMIT },
						}),
						i(89562),	-- Green Belt of Hushed Wisdom
						i(89561),	-- Green Belt of Quiet Understanding
					},
				}),
				q(31838, {	-- Continue Your Training: Master Tsang
					["sourceQuests"] = {
						31837,	-- Continue Your Training: Master Cheng
						31860,	-- The Peak of Serenity - Continue Your Training
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						objective(1, {	-- Master Tsang's Training Completed
							["provider"] = { "n", 66257 },	-- Master Tsang
							["coord"] = { 48.06, 41.37, KUN_LAI_SUMMIT },
						}),
						i(89569),	-- Brown Belt of Humbling Gravity
						i(89567),	-- Brown Belt of Precarious Balance
					},
				}),
				q(31833, bubbleDownSelf({	-- Continue Your Training: Master Woo
					["timeline"] = { ADDED_5_0_4, REMOVED_7_3_5 },
				},{
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["sourceQuests"] = {
						31834,	-- Begin Your Training: Master Cheng
						31855,	-- The Peak of Serenity - Continue Your Training
					},
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						objective(1, {	-- Master Woo's Training Completed
							["provider"] = { "n", 65960 },	-- Master Woo
							["coord"] = { 48.59, 39.53, KUN_LAI_SUMMIT },
						}),
						i(89555),	-- Biting Yellow Belt
						i(89556),	-- Formidable Yellow Belt
						i(89558),	-- Serene Yellow Belt
					},
				})),
				q(31836, {	-- Continue Your Training: Master Yoon
					["sourceQuests"] = {
						31835,	-- Continue Your Training: Master Kistane
						31858,	-- The Peak of Serenity - Continue Your Training
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(50, 50, 15),
					["groups"] = {
						objective(1, {	-- Master Yoon's Training Completed
							["provider"] = { "n", 66255 },	-- Master Yoon
							["coord"] = { 48.87, 40.33, KUN_LAI_SUMMIT },
						}),
						i(89550),	-- Headband of the Coiled Serpent
						i(89548),	-- Headband of the Pouncing Tiger
						i(89549),	-- Headband of the Stampedeing Ox
					},
				}),
				q(31944, {	-- Complete Your Training: The Final Test
					["sourceQuests"] = {
						31839,	-- Continue Your Training: Master Hsu
						31989,	-- The Peak of Serenity - Complete Your Training
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["lvl"] = lvlsquish(90, 90, 35),
					["groups"] = {
						i(90010),	-- Cranedancer's Staff
						i(90012),	-- Staff of Ox-Hoof Thunder
						i(90011),	-- Staff of the White Tigerlord
					},
				}),
				q(31840, {	-- Practice Makes Perfect: Master Cheng /lvl 10
					["sourceQuest"] = 31834,	-- Continue Your Training: Master Cheng
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(20, 20, 10),
					["groups"] = {
						objective(1, {	-- Master Cheng's Training Completed
							["provider"] = { "n", 66138 },	-- Master Cheng
							["coord"] = { 47.06, 40.15, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31844, {	-- Practice Makes Perfect: Master Cheng /lvl 20
					["sourceQuest"] = 31837,	-- Continue Your Training: Master Cheng
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(60, 60, 20),
					["groups"] = {
						objective(1, {	-- Master Cheng's Training Completed
							["provider"] = { "n", 66138 },	-- Master Cheng
							["coord"] = { 47.06, 40.15, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31846, {	-- Practice Makes Perfect: Master Hsu /lvl 30
					["sourceQuest"] = 31839,	-- Continue Your Training: Master Hsu
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
					["groups"] = {
						objective(1, {	-- Master Hsu's Training Completed
							["provider"] = { "n", 66207 },	-- Master Hsu
							["coord"] = { 47.49, 40.93, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31842, {	-- Practice Makes Perfect: Master Kistane /lvl 10
					["sourceQuest"] = 31835,	-- Continue Your Training: Master Kistane
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(40, 40, 10),
					["groups"] = {
						objective(1, {	-- Master Kistane's Training Completed
							["provider"] = { "n", 65899 },	-- Master Kistane
							["coord"] = { 48.04, 39.02, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31845, {	-- Practice Makes Perfect: Master Tsang /lvl 25
					["sourceQuest"] = 31838,	-- Continue Your Training: Master Tsang
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						objective(1, {	-- Master Tsang's Training Completed
							["provider"] = { "n", 66257 },	-- Master Tsang
							["coord"] = { 48.06, 41.37, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31841, {	-- Practice Makes Perfect: Master Woo /lvl 10
					["sourceQuest"] = 31833,	-- Continue Your Training: Master Woo
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_7_3_5 },
					["isDaily"] = true,
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						objective(1, {	-- Master Woo's Training Completed
							["provider"] = { "n", 65960 },	-- Master Woo
							["coord"] = { 48.59, 39.53, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31843, {	-- Practice Makes Perfect: Master Yoon /lvl 15
					["sourceQuest"] = 31836,	-- Continue Your Training: Master Yoon
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(50, 50, 15),
					["groups"] = {
						objective(1, {	-- Master Yoon's Training Completed
							["provider"] = { "n", 66255 },	-- Master Yoon
							["coord"] = { 48.87, 40.33, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31856, {	-- The Peak of Serenity - Begin Your Training
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(31855, {	-- The Peak of Serenity - Continue Your Training /lvl 10
					["sourceQuest"] = 31834,	-- Begin Your Training: Master Cheng
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_7_3_5 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				q(31857, {	-- The Peak of Serenity - Continue Your Training /lvl 10
					["sourceQuests"] = {
						-- #if BEFORE 7.3.5
						31833,	-- Continue Your Training: Master Woo
						-- #else
						31834,	-- Begin Your Training: Master Cheng
						-- #endif
					},
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(40, 40, 10),
				}),
				q(31858, {	-- The Peak of Serenity - Continue Your Training /lvl 15
					["sourceQuest"] = 31835,	-- Continue Your Training: Master Kistane
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(50, 50, 15),
				}),
				q(31859, {	-- The Peak of Serenity - Continue Your Training /lvl 20
					["sourceQuest"] = 31836,	-- Continue Your Training: Master Yoon
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(60, 60, 20),
				}),
				q(31860, {	-- The Peak of Serenity - Continue Your Training /lvl 25
					["sourceQuest"] = 31837,	-- Continue Your Training: Master Cheng
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(70, 70, 25),
				}),
				q(31861, {	-- The Peak of Serenity - Continue Your Training /lvl 30
					["sourceQuest"] = 31838,	-- Continue Your Training: Master Tsang
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
				}),
				q(31989, {	-- The Peak of Serenity - Complete Your Training /lvl 35
					["sourceQuest"] = 31839,	-- Continue Your Training: Master Hsu
					["qg"] = 66260,	-- Master Hight <Grand Master>
					["coord"] = { 48.6, 42.8, KUN_LAI_SUMMIT },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 35),
					-- Wouter NOTE: can't find a way to trigger this in MoP Classic,
					-- and if it does somehow end up being in the game I'm going to be very upsetti
					-- #if ANYCLASSIC
					["timeline"] = { CREATED_5_5_0 },
					-- #else
					["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
					-- #endif
				}),
			}),
			n(VENDORS, {
				n(66354, {	-- Master Cannon <Tanner>
					["description"] = "All items on this vendor are quest rewards. You must have completed the respective quests to purchase the rewards.",
					["sym"] = {	-- Select the quests directly to view on the vendor that way they filter properly based on visibility of the quest
						{"select","questID",
							31837,	-- Continue Your Training: Master Cheng
							31835,	-- Continue Your Training: Master Kistane
							31838,	-- Continue Your Training: Master Tsang
							31833,	-- Continue Your Training: Master Woo
							31836,	-- Continue Your Training: Master Yoon
						},
					},
				}),
				n(66356, {	-- Master Hwang <Staff Vendor>
					["description"] = "The blue-quality staves on this vendor are quest rewards. You must have completed the respective quests to purchase the rewards.",
					["coord"] = { 50.44, 42.61, KUN_LAI_SUMMIT },
					["sym"] = {	-- Select the quests directly to view on the vendor that way they filter properly based on visibility of the quest
						{"select","questID",
							31834,	-- Begin Your Training: Master Cheng
							31839,	-- Continue Your Training: Master Hsu
							31944,	-- Complete Your Training: The Final Test
						},
					},
					["groups"] = {
						i(89580),	-- Novice's Staff
						i(89581),	-- Initiate's Staff
						i(89582),	-- Sparring Staff
						i(89584),	-- Staff of Meditation
						i(89583),	-- Staff of Pilgrimage
						i(89585),	-- Staff of Fallen Blossoms
						i(89586),	-- Staff of Serenity
						i(136800, {	-- Meditation Manual: Zen Flight (CI!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(66359, {	-- Master Tan <Fist Weapon Vendor>
					["description"] = "The blue-quality fist weapons on this vendor require that you have completed the level 30 Monk quest 'Continue Your Training: Master Hsu' (31839)",
					["coord"] = { 50.02, 38.53, KUN_LAI_SUMMIT },
					["groups"] = {
						i(89579),	-- Tiger Lord's Bladed Claws
						i(89578),	-- Tiger Lord's Razor Claws
						i(89566),	-- Novice's Handwraps
						i(89570),	-- Initiate's Handwraps
						i(89571),	-- Grappling Handwraps
						i(89572),	-- Handwraps of Pilgrimage
						i(89573),	-- Handwraps of Meditation
						i(89574),	-- Handwraps of Fallen Blossoms
						i(89575),	-- Handwraps of Serenity
					},
				}),
				n(64978, {	-- Number Nine Jia <Monk Trainer - Master Crane>
					["coord"] = { 45.2, 43.2, KUN_LAI_SUMMIT },
					["groups"] = {
						i(232491, { ["timeline"] = { ADDED_11_0_5 } }),	-- Glyph of Jab
					},
				}),
			}),
		},
	}),
}));
