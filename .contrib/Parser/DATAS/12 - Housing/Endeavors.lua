---------------------------------------------
--      H O U S I N G    M O D U L E       --
---------------------------------------------

ENDEAVORS = createHeader({
	readable = "Endeavors",
	icon = 134495,
	text = {
		en = "Endeavors",
	},
});

root(ROOTS.Housing, n(ENDEAVORS, {
	["timeline"] = { ADDED_12_0_0 },
	["groups"] = {
		filter(MISC, {
			-- Grummle Endeavor
			i(81054),	-- Kafa'Kota Berry
			i(242693),	-- Kafaccino
			i(253750),	-- Luckydo
		}),
		n(REWARDS, {
			currency(COMMUNITY_COUPONS),
		}),
		n(QUESTS, {
			q(92429, {	-- Alternative Skinning
				["qg"] = 254255,	-- Hera Fer
				-- ["isWeekly"] = true, ?
				["coords"] = {
					{ 52.9, 37.6, FOUNDERS_POINT },
					{ 54.2, 56.1, RAZORWIND_SHORES },
				},
				["groups"] = { i(251632) },	-- Biological Vacuum (QI!)
			}),
			q(92417, {	-- Farm to Table

			}),
			q(92402, {	-- Magical Touch
				["groups"] = {
					i(251273),	-- Slightly Magical Crystal (QI!)
					i(251492),	-- Slightly Magical Crystal Locator (QI!)
				},
			}),
			q(92443, {	-- Reverse Herb Farming
				["qg"] = 254255,	-- Hera Fer
				--["isWeekly"] = true, ?
				["coords"] = {
					{ 52.9, 37.6, FOUNDERS_POINT },
					{ 54.2, 56.1, RAZORWIND_SHORES },
				},
			}),
			q(92445, {	-- Smelting for Two
				["qg"] = 251185,	-- Jaren Holdart
				--["isWeekly"] = true, ?
				["coord"] = { 54.1, 57.0, RAZORWIND_SHORES },
			}),
		}),
		n(TREASURES, {

		}),
		n(VENDORS, {
			n(252605, {	-- Aeeshna <Endeavor Trader>
				["coords"] = {
					{ 53.0, 38.2, FOUNDERS_POINT },
					{ 54.4, 56.1, RAZORWIND_SHORES },
				},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(262664, {	-- Complete Guide to K'areshi Wrappings, Vol. 11 (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(263048, {	-- Consortium Energy Banner (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(263043, {	-- Consortium Energy Barrel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(263045, {	-- Consortium Energy Collector (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 20 }},
					}),
					i(263046, {	-- Consortium Energy Crate (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262884, {	-- Consortium Glowpost (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(263044, {	-- Empty Consortium Energy Barrel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(263047, {	-- Empty Consortium Energy Crate (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262665, {	-- K'areshi Holo-Crystal Projector (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262666, {	-- K'areshi Incense Burner (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 2 }},
					}),
					i(262667, {	-- Oath Scale (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(262907, {	-- Tazaveshi Hookah (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
				},
			}),
			n(249684, {	-- Brother Dovetail <Endeavor Trader>
				["coord"] = { 53.0, 38.1, FOUNDERS_POINT },
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(251474, {	-- Ceramic Kafa Mug (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(251473, {	-- Commander's Kafa Mug (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(252041, {	-- Dalaran Espresso Machine (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(251475, {	-- Dalaran Kafa Grinder (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(248407, {	-- Dalaran Kafa Table (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(246741, {	-- Grummle Bedroll (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(248402, {	-- Grummle Kafa Refinery (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(246686, {	-- Grummle Sleeping Bag (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(248403, {	-- Grummle Tent (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(248405, {	-- Kafa Creamer (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(246838, {	-- Kafa Press (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(248406, {	-- Legerdemain Lounge Sign Board (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(252039, {	-- Open Sack of Roasted Kafa (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(251472, {	-- Pandaren Wooden Cart (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(252040, {	-- Sealed Sack of Roasted Kafa (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
				},
			}),
			n(252917, {	-- Hesta Forlath <Endeavor Trader>
				["coords"] = {
					{ 53.1, 38.3, FOUNDERS_POINT },
					{ 54.4, 56.0, RAZORWIND_SHORES },
				},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(253601, {	-- 590 Quel'Lithien Red (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253523, {	-- Astalor's Hookah (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253600, {	-- Eversong Crystal Glass (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(253522, {	-- Thalassian Chest (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					-- Exo Note: For these, there probably be a sourceQuests or we will need a new system that tracks milestones of the endeavors as these items are locked behind them
					-- Reach the first milestone of the endeavor
					i(253524, {	-- 590 Quel'Lithien Red Display Bottle (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(254235, {	-- Sin'dori Artisan's Easel (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					-- Reach the second milestone of the endeavor
					i(253525, {	-- Thalassian Academy Dictation Device (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					-- Reach the third milestone of the endeavor
					i(253526, {	-- Sin'dorei Wine Display (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(253599, {	-- Artisanal Display Tent (DECOR!)
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					-- Reach the fourth milestone of the endeavor
					-- Exo Note: This will probably have some HQT hidden behind it. Used to buy paintings in Silvermoon Bazaar but tooltip states "you don't need to keep the deed on you".
					i(253802, {	-- Deed of Patronage
						["cost"] = {{ "c", COMMUNITY_COUPONS, 30 }},
					}),
				},
			}),
			n(250820, {	-- Hordranin <Endeavor Trader>
				["coord"] = { 54.2, 56.0, RAZORWIND_SHORES },
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = {
					i(250704, {	-- Ancient Weyrn Device
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(250702, {	-- Artisan's Measuring Scales
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(250699, {	-- Dark Talon Pennant
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(250697, {	-- Draconic Auctioneer's Lectern
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(250694, {	-- Draconic Metalshaper's Anvil
						["cost"] = {{ "c", COMMUNITY_COUPONS, 15 }},
					}),
					i(250701, {	-- Draconic Trader's Cart
						["cost"] = {{ "c", COMMUNITY_COUPONS, 20 }},
					}),
					i(250627, {	-- Forbidden Fork
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(250696, {	-- Green Thumb's Watering Can
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(250698, {	-- Obsidian Warder Pennant
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(250695, {	-- Replica Grathardormu's Hammer
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
					i(250700, {	-- Roasted Ram Leg
						["cost"] = {{ "c", COMMUNITY_COUPONS, 5 }},
					}),
					i(250703, {	-- War Creche Teaching Crystal
						["cost"] = {{ "c", COMMUNITY_COUPONS, 10 }},
					}),
				},
			}),
		}),
	},
}));
