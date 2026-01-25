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

i_DecorCoupons = function(itemID, couponCost)
	return
	i(itemID, {
		["cost"] = {{ "c", COMMUNITY_COUPONS, couponCost }},
	})
end

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
				["groups"] = {
					i_DecorCoupons(262664, 5),	-- Complete Guide to K'areshi Wrappings, Vol. 11 (DECOR!)
					i_DecorCoupons(263048, 15),	-- Consortium Energy Banner (DECOR!)
					i_DecorCoupons(263043, 10),	-- Consortium Energy Barrel (DECOR!)
					i_DecorCoupons(263045, 20),	-- Consortium Energy Collector (DECOR!)
					i_DecorCoupons(263046, 5),	-- Consortium Energy Crate (DECOR!)
					i_DecorCoupons(262884, 10),	-- Consortium Glowpost (DECOR!)
					i_DecorCoupons(263044, 5),	-- Empty Consortium Energy Barrel (DECOR!)
					i_DecorCoupons(263047, 5),	-- Empty Consortium Energy Crate (DECOR!)
					i_DecorCoupons(262665, 5),	-- K'areshi Holo-Crystal Projector (DECOR!)
					i_DecorCoupons(262666, 2),	-- K'areshi Incense Burner (DECOR!)
					i_DecorCoupons(262667, 5),	-- Oath Scale (DECOR!)
					i_DecorCoupons(262907, 10),	-- Tazaveshi Hookah (DECOR!)
				},
			}),
			n(249684, {	-- Brother Dovetail <Endeavor Trader>
				["coords"] = {
					-- Razorwind Shores
					{ 53.0, 38.1, FOUNDERS_POINT },
				},
				["groups"] = {
					i_DecorCoupons(251474, 5),	-- Ceramic Kafa Mug (DECOR!)
					i_DecorCoupons(251473, 5),	-- Commander's Kafa Mug (DECOR!)
					i_DecorCoupons(252041, 15),	-- Dalaran Espresso Machine (DECOR!)
					i_DecorCoupons(251475, 10),	-- Dalaran Kafa Grinder (DECOR!)
					i_DecorCoupons(248407, 10),	-- Dalaran Kafa Table (DECOR!)
					i_DecorCoupons(246741, 10),	-- Grummle Bedroll (DECOR!)
					i_DecorCoupons(248402, 15),	-- Grummle Kafa Refinery (DECOR!)
					i_DecorCoupons(246686, 10),	-- Grummle Sleeping Bag (DECOR!)
					i_DecorCoupons(248403, 10),	-- Grummle Tent (DECOR!)
					i_DecorCoupons(248405, 5),	-- Kafa Creamer (DECOR!)
					i_DecorCoupons(246838, 10),	-- Kafa Press (DECOR!)
					i_DecorCoupons(248406, 10),	-- Legerdemain Lounge Sign Board (DECOR!)
					i_DecorCoupons(252039, 5),	-- Open Sack of Roasted Kafa (DECOR!)
					i_DecorCoupons(251472, 10),	-- Pandaren Wooden Cart (DECOR!)
					i_DecorCoupons(252040, 5),	-- Sealed Sack of Roasted Kafa (DECOR!)
				},
			}),
			n(257897, {	-- Harlowe Marl <Endeavor Trader>
				["coords"] = {
					-- Founder's Point
					{ 54.4, 56.1, RAZORWIND_SHORES },
				},
				["groups"] = {
					-- TODO:
				},
			}),
			n(252917, {	-- Hesta Forlath <Endeavor Trader>
				["coords"] = {
					{ 53.1, 38.3, FOUNDERS_POINT },
					{ 54.4, 56.0, RAZORWIND_SHORES },
				},
				["groups"] = {
					i_DecorCoupons(253601, 5),	-- 590 Quel'Lithien Red (DECOR!)
					i_DecorCoupons(253523, 5),	-- Astalor's Hookah (DECOR!)
					i_DecorCoupons(253600, 5),	-- Eversong Crystal Glass (DECOR!)
					i_DecorCoupons(253522, 5),	-- Thalassian Chest (DECOR!)
					-- Exo Note: For these, there probably be a sourceQuests or we will need a new system that tracks milestones of the endeavors as these items are locked behind them
					-- Reach the first milestone of the endeavor
					i_DecorCoupons(253524, 10),	-- 590 Quel'Lithien Red Display Bottle (DECOR!)
					i_DecorCoupons(254235, 5),	-- Sin'dori Artisan's Easel (DECOR!)
					-- Reach the second milestone of the endeavor
					i_DecorCoupons(253525, 10),	-- Thalassian Academy Dictation Device (DECOR!)
					-- Reach the third milestone of the endeavor
					i_DecorCoupons(253526, 15),	-- Sin'dorei Wine Display (DECOR!)
					i_DecorCoupons(253599, 15),	-- Artisanal Display Tent (DECOR!)
					-- Reach the fourth milestone of the endeavor
					-- Exo Note: This will probably have some HQT hidden behind it. Used to buy paintings in Silvermoon Bazaar but tooltip states "you don't need to keep the deed on you".
					i_DecorCoupons(253802, 30),	-- Deed of Patronage
				},
			}),
			n(250820, {	-- Hordranin <Endeavor Trader>
				["coords"] = {
					{ 54.2, 56.0, RAZORWIND_SHORES },
					-- Founder's Point
				},
				["groups"] = {
					i_DecorCoupons(250704, 15),	-- Ancient Weyrn Device
					i_DecorCoupons(250702, 5),	-- Artisan's Measuring Scales
					i_DecorCoupons(250699, 10),	-- Dark Talon Pennant
					i_DecorCoupons(250697, 10),	-- Draconic Auctioneer's Lectern
					i_DecorCoupons(250694, 15),	-- Draconic Metalshaper's Anvil
					i_DecorCoupons(250701, 20),	-- Draconic Trader's Cart
					i_DecorCoupons(250627, 5),	-- Forbidden Fork
					i_DecorCoupons(250696, 10),	-- Green Thumb's Watering Can
					i_DecorCoupons(250698, 10),	-- Obsidian Warder Pennant
					i_DecorCoupons(250695, 10),	-- Replica Grathardormu's Hammer
					i_DecorCoupons(250700, 5),	-- Roasted Ram Leg
					i_DecorCoupons(250703, 10),	-- War Creche Teaching Crystal
				},
			}),
		}),
	},
}));
