--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- #if AFTER 2.2.2
BREWFEST_HEADER = createHeader({
	readable = "Brewfest",
	constant = "BREWFEST_HEADER",
	icon = [[~_.asset("Holiday_brewfest")]],
	eventID = EVENTS.BREWFEST,
	-- #if BEFORE WRATH
	eventSchedule = {
		1,	-- Recurring
		9, 20, 10, 0,	-- 9/20 at 10 AM
		10, 4, 10, 0	-- 10/4 at 10 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(162),
		-- #else
		en = "Brewfest",
		-- TODO: de = "",
		es = "Fiesta de la cerveza",
		mx = "Fiesta de la cerveza",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "美酒节",
		-- TODO: tw = "",
		-- #endif
	},
});
BREWFEST_BANQUET = createHeader({
	readable = "Brewfest Banquet",
	constant = "BREWFEST_BANQUET",
	icon = [[~_.asset("Holiday_brewfest")]],
	text = {
		en = "Brewfest Banquet",
	},
});
-- Developer note: Use the BREWFEST_TOKEN constant in place of the reward.
local BREWFEST_TOKEN = {
	-- #if AFTER 2.4.3
	i(37829, {	-- Brewfest Prize Token
		["timeline"] = { ADDED_2_4_3 },
	}),
	-- #else
	i(33455, {	-- Brewfest Prize Ticket
		["timeline"] = { ADDED_2_0_1 },
	}),
	-- #endif
};
-- #if AFTER 2.4.3
local BREWFEST_TOKEN_COST = function(cost)
	return { { "i", 37829, cost } };	-- Brewfest Prize Token
end
-- #else
local BREWFEST_TOKEN_COST = function(cost)
	return { { "i", 33455, cost } };	-- Brewfest Prize Ticket
end
-- #endif
local BREWFEST_RIDING_RAMS_ONUPDATE = [[function(t)
	if not (_.IsQuestFlaggedCompleted(t.sourceQuests[1])) then
-- #if NOT ANYCLASSIC
		t.description = "You are unable to purchase the rams from the vendor because you did not complete the 'Brewfest Riding Rams' quest back in 2007. :(";
		for i,item in ipairs(t.g) do
			item.u = 2;
		end
-- #else
		t.description = "You are unable to purchase the rams from this vendor as you have not completed the 'Brewfest Riding Rams' quest. GO GET IT!";
		for i,item in ipairs(t.g) do
			item.u = ]] .. EVENTS.BREWFEST .. [[;
		end
-- #endif
	else
-- #if NOT ANYCLASSIC
		t.description = "You completed the 'Brewfest Riding Rams' quest?! BUY THE RAMS RIGHT NOW!\n\nAlso kinda jealous...\n - Crieve";
-- #else
		t.description = "You completed the 'Brewfest Riding Rams' quest and are now eligible to buy the rams!";
-- #endif
		for i,item in ipairs(t.g) do
			item.u = ]] .. EVENTS.BREWFEST .. [[;
		end
	end
end]];
local BREWFEST_VENDOR_OnTooltip = [[function(t, tooltipInfo)
	local itemID = 37829;
	local item = _.SearchForField("itemID", itemID)[1];
	local icon = "|T" .. item.icon .. ":0|t";
	local link = item.link or RETRIEVING_DATA;
	tinsert(tooltipInfo, { left = " " });
	tinsert(tooltipInfo, { left = "One-Time Quests:" });
	local coren = _.IsQuestFlaggedCompleted(12491);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 40 for Direbrew's Dire Brew",
		right = _.GetCompletionIcon(coren)
	});

	-- #if AFTER WRATH
	local pink = _.IsQuestFlaggedCompleted(_.FactionID == Enum.FlightPathFaction.Horde and 11120 or 11118);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 40 for Pink Elekks On Parade",
		right = _.GetCompletionIcon(pink)
	});
	-- #endif

	local chucked = _.IsQuestFlaggedCompleted(12022);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for Chug and Chuck",
		right = _.GetCompletionIcon(chucked)
	});

	local back = _.IsQuestFlaggedCompleted(11122);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for There And Back Again",
		right = _.GetCompletionIcon(back)
	});

	tinsert(tooltipInfo, { left = " " });
	tinsert(tooltipInfo, { left = "Daily Quests:" });
	local barked = _.IsQuestFlaggedCompleted(11293);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 15 for Brewfest Barking",
		right = _.GetCollectionIcon(barked)
	});

	local invasion = _.IsQuestFlaggedCompleted(_.FactionID == Enum.FlightPathFaction.Horde and 12192 or 12020);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for Dark Iron Invasion",
		right = _.GetCollectionIcon(invasion)
	});
	tinsert(tooltipInfo, { left = " " .. icon .. " 0-22 for Ram Racing Dialog** (every 18 hours)" });
	tinsert(tooltipInfo, { left = "** Log out in a rested location and it will be reset after 8 hours." });

	local today = date("*t");
	local start = time({day=20,month=9,year=today.year,hour=0,min=0,sec=0});
-- #if AFTER 3.0.0
	local ends = time({day=6,month=10,year=today.year,hour=0,min=0,sec=0});
-- #else
	local ends = time({day=4,month=10,year=today.year,hour=0,min=0,sec=0});
-- #endif
	local now = time({day=today.day,month=today.month,year=today.year,hour=0,min=0,sec=0});
	if now >= start and now <= ends then
		local secondsPerDay = 86400;
		local totalDays = math.floor(difftime(ends, start) / secondsPerDay);
		local m = 60 + (25 * totalDays);
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, { left = "Currently", right = ]] .. WOWAPI_GetItemCount("itemID") .. [[ .. "x " .. icon .. " " .. link });
		tinsert(tooltipInfo, { left = "Total Possible*", right = m .. " - " .. (m + (22 * totalDays)) .. "x " .. icon .. " " .. link });

		local remaining = math.floor(difftime(ends, now) / secondsPerDay);
		if remaining <= 1 then
			local baseAmount = (not barked and 15 or 0) + (not invasion and 10 or 0);
			tinsert(tooltipInfo, { left = "Total Remaining*", right = baseAmount .. " - " .. (baseAmount + 22) .. "x " .. icon .. " " .. link });
		else
			local baseAmount = (not barked and 15 or 0) + (not invasion and 10 or 0) + (25 * remaining);
			tinsert(tooltipInfo, { left = "Total Remaining*", right = baseAmount .. " - " .. (baseAmount + (22 * remaining)) .. "x " .. icon .. " " .. link });
		end
		tinsert(tooltipInfo, { left = "* Based on if you didn't miss a single day and only whole days count." });
	end
end]];

-- #if ANYCLASSIC
-- The 353 ilvl gear was added for Brewfest 2024 in Cataclysm Classic
local BREWFEST_2024_OnUpdate = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_HOUR_OF_TWILIGHT .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_ONE .. [[;
		t.rwp = 40300;
	end
end]];
-- #endif

-- Helper functions for the filled steins
local barleybrewclear = function(t)		-- Barleybrew Clear - Alliance
	t.provider = { "o", 186183 };	-- Barleybrew Festive Keg
	t.coords = {
		-- #if AFTER CATA
		{ 55.8, 38.2, DUN_MOROGH },
		-- #else
		{ 48.8, 39.8, DUN_MOROGH },
		-- #endif
	};
	return t;
end
local thunderfortyfive = function(t)	-- Thunder 45 - Alliance
	t.provider = { "o", 186184 };	-- Thunderbrew Festive Keg
	t.coord = { 56.6, 37.2, DUN_MOROGH };
	return t;
end
local gordokgrog = function(t)			-- Gordok Grog - Alliance/Horde
	t.provider = { "o", 186185 };	-- Gordok Festive Keg
	t.coords = {
		{ 55.6, 36.8, DUN_MOROGH },
		-- #if AFTER CATA
		{ 41.0, 17.0, DUROTAR },
		-- #else
		{ 44.2, 16.6, DUROTAR },
		-- #endif
	};
	return t;
end
local smallstepbrew = function(t)		-- Small Step Brew - Horde
	t.provider = { "o", 186186 };	-- Drohn's Distillery Festive Keg
	t.coords = {
		-- #if AFTER CATA
		{ 40.8, 18.0, DUROTAR },
		-- #else
		{ 44.4, 17.6, DUROTAR },
		-- #endif
	};
	return t;
end
local jungleriverwater = function(t)	-- Jungle River Water - Horde
	t.provider = { "o", 186187 };	-- T'chali's Voodoo Brew Festive Keg
	t.coords = {
		-- #if AFTER CATA
		{ 40.2, 17.4, DUROTAR },
		-- #else
		{ 43.6, 17.6, DUROTAR },
		-- #endif
	};
	return t;
end
local OnInitForStein = function(rwp)
	-- This init function unmarks the removed from game flag for folks with the stein.
	return [[function(t)
		if ]] .. WOWAPI_GetItemCount("t.itemID") .. [[ < 1 then
			local any;
			if t.g then
				for i,o in ipairs(t.g) do
					if ]] .. WOWAPI_GetItemCount("o.itemID") .. [[ > 0 then
						any = true;
						break;
					end
				end
			end
			if not any then return t; end
		end
		t.u = nil;
		t.rwp = ]] .. (rwp or "nil") .. [[;
		if t.g then
			for i,o in ipairs(t.g) do
				o.u = nil;
				o.rwp = ]] .. (rwp or "nil") .. [[;
			end
		end
		return t;
	end]];
end
local fillstein = function(t)
	-- Apply the keg data to each of the filled steins (NOTE: They must be in order!)
	local g = t.groups or t.g;
	barleybrewclear(g[1]);	-- Barleybrew Clear - Alliance
	thunderfortyfive(g[2]);	-- Thunder 45 - Alliance
	gordokgrog(g[3]);		-- Gordok Grog - Alliance/Horde
	smallstepbrew(g[4]);	-- Small Step Brew - Horde]
	jungleriverwater(g[5]);	-- Jungle River Water - Horde

	-- these Items are actually provided by an Object, not looted, so this is ok
	for _,o in ipairs(g) do
		o._allowObjectProvider = true
	end

	-- #if AFTER CATA
	t.description = "Fill up the stein with one brew, relog, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!";
	if t.timeline then bubbleDown({ ["timeline"] = t.timeline }, g); end
	-- #endif
	return t;
end

root(ROOTS.Holidays, applyevent(EVENTS.BREWFEST, n(BREWFEST_HEADER, {
	["maps"] = { DUN_MOROGH, DUROTAR },
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(18579, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- A Round on the House
				crit(60561, {	-- Ohn'ahran Plains, Maruukai
					["_quests"] = { 77152 },
				}),
				crit(61569, {	-- Ohn'ahran Plains, Rusza'Thar Reach
					["_quests"] = { 77745 },
				}),
				crit(60562, {	-- Ohn'ahran Plains, Shady Sanctuary
					["_quests"] = { 77099 },
				}),
				crit(61571, {	-- Thaldraszus, Algeth'era Court
					["_quests"] = { 77747 },
				}),
				crit(60563, {	-- Thaldraszus, Eon's Fringe
					["_quests"] = { 77155 },
				}),
				crit(60564, {	-- Thaldraszus, Valdrakken
					["_quests"] = { 77153 },
				}),
				crit(60565, {	-- The Azure Span, Camp Antonidas
					["_quests"] = { 77096 },
				}),
				crit(61570, {	-- The Azure Span, Camp Nowhere
					["_quests"] = { 77746 },
				}),
				crit(60566, {	-- The Azure Span, Iskaara
					["_quests"] = { 77097 },
				}),
				crit(61568, {	-- The Waking Shores, Dragonscale Basecamp
					["_quests"] = { 77744 },
				}),
				crit(60567, {	-- The Waking Shores, Ruby Lifeshrine
					["_quests"] = { 76531 },
				}),
				crit(60568, {	-- The Waking Shores, Wingrest Embassy
					["_quests"] = { 77095 },
				}),
			})),
			ach(41212, {	-- A Round on the House in Khaz Algar (automated)
				["timeline"] = { ADDED_11_2_0 },
			}),
			ach(1684, {	-- Brewmaster (A)
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					1186,				-- Down With The Dark Iron
					1185,				-- The Brewfest Diet
					2796,				-- Brew of the Month
					295,				-- Direbrewfest
					303,				-- Have Keg, Will Travel
					1936,				-- Does Your Wolpertinger Linger?
				}},
				["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(101),				-- Brewmaster
				},
			}),
			ach(1683, {	-- Brewmaster (H)
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					-- #if BEFORE 8.2.0
					1186,				-- Down With The Dark Iron
					-- #endif
					1185,				-- The Brewfest Diet
					2796,				-- Brew of the Month
					295,				-- Direbrewfest
					303,				-- Have Keg, Will Travel
					1936,				-- Does Your Wolpertinger Linger?
				}},
				["timeline"] = { ADDED_3_0_2 },
				-- #if BEFORE MOP
				["races"] = HORDE_ONLY,
				-- #endif
				["groups"] = {
					title(101),				-- Brewmaster
				},
			}),
			ach(3496, {	-- A Brew-FAST Mount
				["providers"] = {
					{ "i", 37828 },	-- Great Brewfest Kodo
					{ "i", 33977 },	-- Swift Brewfest Ram
				},
				["timeline"] = { ADDED_2_0_1 },
			}),
			-- #if AFTER MOP
			ach(1260, {	-- Almost Blind Luck [MOP+] / Drunken Stupor
				["timeline"] = { ADDED_3_0_2 },
				["maps"] = { SHATTRATH_CITY },
			}),
			-- #endif
			ach(1293, {	-- Blue Brewfest Stein [Removed]
				["provider"] = { "i", 33016 },	-- Blue Brewfest Stein
				["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
			}),
			ach(2796, {	-- Brew of the Month
				["providers"] = {
					-- #if ANYCLASSIC
					{ "i", 37736 },	-- "Brew of the Month" Club Membership Form (original)
					{ "i", 37737 },	-- "Brew of the Month" Club Membership Form (original)
					-- #else
					{ "i", 37571 },	-- "Brew of the Month" Club Membership Form (current)
					{ "i", 37599 },	-- "Brew of the Month" Club Membership Form (current)
					-- #endif
				},
				["timeline"] = { ADDED_3_0_2 },
			}),
			ach(1183, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Brew of the Year
				crit(3526, {	-- Aromatic Honey Brew
					["provider"] = { "i", 37490 },	-- Aromatic Honey Brew
				}),
				crit(3525, {	-- Autmunal Acorn Ale
					["provider"] = { "i", 37497 },	-- Autmunal Acorn Ale
				}),
				crit(3524, {	-- Bartlett's Bitter Brew
					["provider"] = { "i", 37498 },	-- Bartlett's Bitter Brew
				}),
				crit(3523, {	-- Binary Brew
					["provider"] = { "i", 37496 },	-- Binary Brew
				}),
				crit(3522, {	-- Blackrock Lager
					["provider"] = { "i", 37493 },	-- Blackrock Lager
				}),
				crit(3521, {	-- Draenic Pale Ale
					["provider"] = { "i", 37495 },	-- Draenic Pale Ale
				}),
				crit(3520, {	-- Izzard's Ever Flavor
					["provider"] = { "i", 37489 },	-- Izzard's Ever Flavor
				}),
				crit(3519, {	-- Lord of Frost's Private Label
					["provider"] = { "i", 37499 },	-- Lord of Frost's Private Label
				}),
				crit(3518, {	-- Metok's Bubble Bock
					["provider"] = { "i", 37491 },	-- Metok's Bubble Bock
				}),
				crit(3517, {	-- Springtime Stout
					["provider"] = { "i", 37492 },	-- Springtime Stout
				}),
				crit(3516, {	-- Stranglethorn Brew
					["provider"] = { "i", 37494 },	-- Stranglethorn Brew
				}),
				crit(3515, {	-- Wild Winter Pilsner
					["provider"] = { "i", 37488 },	-- Wild Winter Pilsner
				}),
			})),
			ach(293, {	-- Disturbing the Peace
				["providers"] = {
					{ "i", 33968 },	-- Blue Brewfest Hat
					{ "i", 33864 },	-- Brown Brewfest Hat
					{ "i", 33967 },	-- Green Brewfest Hat
					{ "i", 33969 },	-- Purple Brewfest Hat
					{ "i", 33863 },	-- Brewfest Dress
					{ "i", 33862 },	-- Brewfest Regalia
					{ "i", 33868 },	-- Brewfest Boots
					{ "i", 33966 },	-- Brewfest Slippers
				},
				["timeline"] = { ADDED_3_0_2 },
				["maps"] = { NORTHREND_DALARAN },
			}),
			ach(1936, {	-- Does Your Wolpertinger Linger?
				["provider"] = { "i", 32233 },	-- Wolpertinger's Tankard
				["timeline"] = { ADDED_2_2_2 },
			}),
			-- #if BEFORE MOP
			ach(1260, {	-- Drunken Stupor / Almost Blind Luck [MOP+]
				["timeline"] = { ADDED_3_0_2 },
				["maps"] = { SHATTRATH_CITY },
			}),
			-- #endif
			ach(4782, {	-- Green Brewfest Stein [Removed]
				["provider"] = { "i", 37892 },	-- Green Brewfest Stein
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			ach(303, {	-- Have Keg, Will Travel
				["providers"] = {
					{ "i", 33976 },	-- Brewfest Ram
					{ "i", 37828 },	-- Great Brewfest Kodo
					{ "i", 33977 },	-- Swift Brewfest Ram
					{ "i", 37750 },	-- Fresh Brewfest Hops
					{ "i", 39476 },	-- Fresh Goblin Brewfest Hops
					{ "i", 37816 },	-- Preserved Brewfest Hops
				},
				["timeline"] = { ADDED_2_0_1 },
			}),
			ach(1184, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Strange Brew (A)
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					crit(8885, {	-- Barleybrew Clear
						["provider"] = { "i", 33030 },	-- Barleybrew Clear
					}),
					crit(8884, {	-- Barleybrew Dark
						["provider"] = { "i", 33029 },	-- Barleybrew Dark
					}),
					crit(8883, {	-- Barleybrew Light
						["provider"] = { "i", 33028 },	-- Barleybrew Light
					}),
					crit(8878, {	-- Gordok Grog
						["provider"] = { "i", 33034 },	-- Gordok Grog
					}),
					crit(9014, {	-- Mudder's Milk
						["provider"] = { "i", 33036 },	-- Mudder's Milk
					}),
					crit(8882, {	-- Ogre Mead
						["provider"] = { "i", 33035 },	-- Ogre Mead
					}),
					crit(8879, {	-- Thunder 45
						["provider"] = { "i", 33031 },	-- Thunder 45
					}),
					crit(8880, {	-- Thunderbrew Ale
						["provider"] = { "i", 33032 },	-- Thunderbrew Ale
					}),
					crit(8881, {	-- Thunderbrew Stout
						["provider"] = { "i", 33033 },	-- Thunderbrew Stout
					}),
				},
			})),
			ach(1203, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Strange Brew (H)
				["races"] = HORDE_ONLY,
				["groups"] = {
					crit(8889, {	-- Brewdoo Magic
						["provider"] = { "i", 34021 },	-- Brewdoo Magic
					}),
					crit(8878, {	-- Gordok Grog
						["provider"] = { "i", 33034 },	-- Gordok Grog
					}),
					crit(8888, {	-- Jungle River Water
						["provider"] = { "i", 34020 },	-- Jungle River Water
					}),
					crit(8886, {	-- Long Stride Brew
						["provider"] = { "i", 34018 },	-- Long Stride Brew
					}),
					crit(9014, {	-- Mudder's Milk
						["provider"] = { "i", 33036 },	-- Mudder's Milk
					}),
					crit(8882, {	-- Ogre Mead
						["provider"] = { "i", 33035 },	-- Ogre Mead
					}),
					crit(8887, {	-- Path of Brew
						["provider"] = { "i", 34019 },	-- Path of Brew
					}),
					crit(8891, {	-- Small Step Brew
						["provider"] = { "i", 34017 },	-- Small Step Brew
					}),
					crit(8890, {	-- Stout Shrunken Head
						["provider"] = { "i", 34022 },	-- Stout Shrunken Head
					}),
				},
			})),
			ach(1185, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- The Brewfest Diet
				-- #if ANYCLASSIC
				crit(3542, {	-- Dried Sausage
					["provider"] = { "i", 34063 }	-- Dried Sausage
				}),
				crit(3543, {	-- Pickled Sausage
					["provider"] = { "i", 33024 }	-- Pickled Sausage
				}),
				-- #else
				crit(18619, {	-- Dried Sausage
					["provider"] = { "i", 34063 }	-- Dried Sausage
				}),
				crit(18622, {	-- Pickled Sausage
					["provider"] = { "i", 33024 }	-- Pickled Sausage
				}),
				-- #endif
				crit(3544, {	-- Savory Sausage
					["provider"] = { "i", 33023 }	-- Savory Sausage
				}),
				-- #if ANYCLASSIC
				crit(3545, {	-- Spiced Onion Cheese
					["provider"] = { "i", 34065 }	-- Spiced Onion Cheese
				}),
				crit(3546, {	-- Spicy Smoked Sausage
					["provider"] = { "i", 33025 }	-- Spicy Smoked Sausage
				}),
				crit(3547, {	-- Succulent Sausage
					["provider"] = { "i", 34064 }	-- Succulent Sausage
				}),
				-- #else
				crit(18621, {	-- Spiced Onion Cheese
					["provider"] = { "i", 34065 }	-- Spiced Onion Cheese
				}),
				crit(18623, {	-- Spicy Smoked Sausage
					["provider"] = { "i", 33025 }	-- Spicy Smoked Sausage
				}),
				crit(18620, {	-- Succulent Sausage
					["provider"] = { "i", 34064 }	-- Succulent Sausage
				}),
				-- #endif
				crit(7987, {	-- The Essential Brewfest Pretzel
					["provider"] = { "i", 33043 }	-- The Essential Brewfest Pretzel
				}),
				-- #if ANYCLASSIC
				crit(3549, {	-- The Golden Link
					["provider"] = { "i", 33026 }	-- The Golden Link
				}),
				-- #else
				crit(18624, {	-- The Golden Link
					["provider"] = { "i", 33026 }	-- The Golden Link
				}),
				-- #endif
			})),
			ach(1292, {	-- Yellow Brewfest Stein [Removed]
				["provider"] = { "i", 32912 },	-- Yellow Brewfest Stein
				["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
			}),
		}),
		n(BREWFEST_BANQUET, {
			["description"] = "Every hour at the top of the hour, the public scenario takes place.\n\nTo take part, first complete the three required tutorial quests:\n1. Gathering the Grub\n2. Brewmaster's Kitchen\n3. Serving with Style.\n\nOnce that's done, speak with the event organizer to choose a role (gather, cook, or serve), and repeatedly complete those tasks to fill a shared progress bar within six minutes.\n\nOnce the six minutes are up, Keggor the Fermented will crash the party. Defeat the boss to end the event.",
			["timeline"] = { ADDED_11_2_0 },
			["groups"] = {
				filter(QUEST_ITEMS, {	-- Items used during the 'cooking' section of the event
					i(241130),	-- Bag of Brewfest Ingredients
					i(242499),	-- Barley Porridge Ingredients
					i(243340),	-- Barley Soup
					i(242500),	-- Brew Ingredients
					i(243339),	-- Brew Keg
					i(243341),	-- Pretzel
					i(242498),	-- Pretzel Ingredients
				}),
				n(EVENT_COMPLETION, {
					i(243291, {	-- Bag of Brewfest Merchandise (Uncommon) Only Badges
						["description"] = "Granted for achieving a minimum of 33% shared progress & then killing Keggor at the end of the Brewfest Banquet event.",
						["groups"] = BREWFEST_TOKEN,
					}),
					i(243292, {	-- Bag of Brewfest Merchandise (Rare) Only Cosmectics
						["description"] = "Granted for achieving a minimum of 66% shared progress & then killing Keggor at the end of the Brewfest Banquet event.",
						["groups"] = {
							i(241232),	-- Brewer's Basic Shoulder Cape
							i(241341),	-- Brewer's Blue Shoulder Cape
							i(241343),	-- Brewer's Basic Beret
							i(241345),	-- Brewer's Blue Beret
							i(241347),	-- Brewer's Basic Kilt
							i(241350),	-- Brewer's Blue Kilt
							i(249857),	-- Brewer's Blue Belt
							i(249858),	-- Brewer's Basic Belt
						},
					}),
					i(243293, {	-- Bag of Brewfest Merchandise (Epic) BoE's & Cosmetics
						["description"] = "Granted for achieving 100% shared progress & then killing Keggor at the end of the Brewfest Banquet event.",
						["groups"] = {
							i(241232),	-- Brewer's Basic Shoulder Cape
							i(241341),	-- Brewer's Blue Shoulder Cape
							i(241343),	-- Brewer's Basic Beret
							i(241345),	-- Brewer's Blue Beret
							i(241347),	-- Brewer's Basic Kilt
							i(241350),	-- Brewer's Blue Kilt
							i(249857),	-- Brewer's Blue Belt
							i(249858),	-- Brewer's Basic Belt
							i(245950),	-- Dark Iron Portable Forge
							i(245955),	-- Dark Iron's Ceremonial Mace
							i(245959),	-- Dark Iron's Crystal Ward
							i(246784),	-- Dark Iron's Ancient Crusher
							i(246801),	-- Dark Iron's Mighty Crossbow
						},
					}),
				}),
				n(QUESTS, sharedData({
					["isYearly"] = true,
				},{
					q(90870, {	-- Gathering the Grub (A)
						["qg"] = 242172,	-- Gritta Brewstone
						["coord"] = { 56.0, 37.4, DUN_MOROGH },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(BREWFEST_TOKEN, {
							i(243479),	-- Bag of Brewfest Ingredients (QI!)
						}),
					}),
					q(91067, {	-- Gathering the Grub (H)
						["qg"] = 245967,	-- Gorgrum Kegfist
						["coord"] = { 40.9, 17.5, DUROTAR },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(BREWFEST_TOKEN, {
							i(246044),	-- Bag of Brewfest Ingredients (QI!)
						}),
					}),
					q(90879, {	-- Brewmaster's Kitchen (A)
						["sourceQuest"] = 90870,	-- Gathering the Grub (A)
						["qg"] = 242172,	-- Gritta Brewstone
						["coord"] = { 56.0, 37.4, DUN_MOROGH },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(BREWFEST_TOKEN, {
							i(244141),	-- Barley Soup (QI!)
							i(244051),	-- Barley Porridge Ingredients (QI!)
							i(244052),	-- Brew Ingredients (QI!)
							i(244142),	-- Brew Keg (QI!)
							i(244064),	-- Pretzel (QI!)
							i(244050),	-- Pretzel Ingredients (QI!)
						}),
					}),
					q(91066, {	-- Brewmaster's Kitchen (H)
						["sourceQuest"] = 91067,	-- Gathering the Grub (H)
						["qg"] = 245967,	-- Gorgrum Kegfist
						["coord"] = { 40.9, 17.5, DUROTAR },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(BREWFEST_TOKEN, {
							i(246052),	-- Barley Soup (QI!)
							i(246049),	-- Barley Porridge Ingredients (QI!)
							i(246040),	-- Brew Ingredients (QI!)
							i(246041),	-- Brew Keg (QI!)
							i(246042),	-- Pretzel (QI!)
							i(246047),	-- Pretzel Ingredients (QI!)
						}),
					}),
					q(90880, {	-- Serving with Style (A)
						["sourceQuest"] = 90879,	-- Brewmaster's Kitchen (A)
						["qg"] = 242172,	-- Gritta Brewstone
						["coord"] = { 56.0, 37.4, DUN_MOROGH },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					q(91068, {	-- Serving with Style (H)
						["sourceQuest"] = 91066,	-- Brewmaster's Kitchen (H)
						["qg"] = 245967,	-- Gorgrum Kegfist
						["coord"] = { 40.9, 17.5, DUROTAR },
						["timeline"] = { ADDED_11_2_0 },
						["races"] = HORDE_ONLY,
					}),
				})),
			},
		}),
		n(23872, {	-- Coren Direbrew
			-- #if AFTER 3.0.1
			-- #if BEFORE 10.0.5
			["description"] = "You can loot the keg once a day per character by queueing for the encounter in the Dungeon Finder.",
			-- #endif
			["maps"] = {
				BLACKROCK_DEPTHS,
				243,	-- Blackrock Depths
			},
			-- #else
			["questID"] = 12062,	-- Insult Coren Direbrew
			["maps"] = { BLACKROCK_DEPTHS },
			-- #endif
			["timeline"] = { ADDED_2_0_1 },
			["isDaily"] = true,
			-- #if AFTER SL
			["lvl"] = 20,
			-- #elseif AFTER WRATH
			["lvl"] = 75,
			-- #else
			["lvl"] = 65,
			-- #endif
			["groups"] = {
				ach(295, {	-- Direbrewfest
					["timeline"] = { ADDED_3_0_2 },
				}),
				i(117393, {	-- Keg-Shaped Treasure Chest	(Epic Quality)
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = 98,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						hqt(
						-- #if AFTER 11.2.0
						91894,	-- Has rolled for Coren Special Loot (Daily Accountwide)(TWW Version)
						-- #else
						77775,	-- Has rolled for Coren Special Loot (Daily Accountwide)(DF Version)
						-- #endif
						{
							["name"] = "Coren Special Loot (Daily Accountwide)",
							["description"] = "This item is only eligible to drop for the first attempt per day per Warband, but every eligible failed attempt increases the drop chance.\n\nYou can increase your chances by using additional (starter edition) licenses on your Battle.net account. These allow you to queue with up to 5 characters at the same time, by logging into multiple instances of the game simultaneously.",
							-- #if AFTER 11.2.0
							["timeline"] = { ADDED_11_2_0 },
							-- #else
							["timeline"] = { ADDED_10_1_7 },
							-- #endif
							["isDaily"] = true,
							["groups"] = {
								i(248761, {	-- Brewfest Bomber (MOUNT!)
									["timeline"] = { ADDED_11_2_0 },
									["description"] = "Mouse over 'Coren Special Loot' for a mini-guide on how to greatly increase your chances of receiving this item.",
								}),
								i(208742, {	-- Renewed Proto-Drake: Brewfest Armor (MM!)
									["timeline"] = { ADDED_10_1_7 },
									["description"] = "Mouse over 'Coren Special Loot' for a mini-guide on how to greatly increase your chances of receiving this item.",
								}),
								i(37828, {	-- Great Brewfest Kodo (MOUNT!)
									["timeline"] = { ADDED_2_0_1 },
									["description"] = "Mouse over 'Coren Special Loot' for a mini-guide on how to greatly increase your chances of receiving this item.",
								}),
								i(33977, {	-- Swift Brewfest Ram (MOUNT!)
									["timeline"] = { ADDED_2_0_1 },
									["description"] = "Mouse over 'Coren Special Loot' for a mini-guide on how to greatly increase your chances of receiving this item.",
								}),
							},
						}),
						i(117378, {	-- Direbrew's Bloodied Shanker [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(37863, {	-- Direbrew's Remote
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(150922, {	-- Terrific Tankard O'Terror [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(117379, {	-- Tremendous Tankard O'Terror [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						-- #if BEFORE 10.1.7
						i(37828, {	-- Great Brewfest Kodo (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(33977, {	-- Swift Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
						}),
						-- #endif
					}),
				}),
				i(149752, {	-- Keg-Shaped Treasure Box	(Uncommon Quality)
					["timeline"] = { ADDED_7_0_3 },
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						i(117378, {	-- Direbrew's Bloodied Shanker [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(150922, {	-- Terrific Tankard O'Terror [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(117379, {	-- Tremendous Tankard O'Terror [Level 100+]
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(37863, {	-- Direbrew's Remote
							["timeline"] = { ADDED_2_0_1 },
						}),
					}),
				}),
				i(54535, {	-- Keg-Shaped Treasure Chest
					["timeline"] = { ADDED_3_0_2, REMOVED_6_0_2 },
					["groups"] = {
						i(37828, {	-- Great Brewfest Kodo (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(33977, {	-- Swift Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
						}),
						-- #if ANYCLASSIC
						i(257863, {	-- Direbrew's Bloodied Shanker [Level 90, ilvl 489]
							["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
						}),
						i(257865, {	-- Tremendous Tankard O'Terror [Level 90, ilvl 489]
							["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
						}),
						i(107217, {	-- Direbrew's Bloodied Shanker [Level 90, ilvl 470]
							["timeline"] = { CREATED_5_0_4 },
						}),
						i(107218, {	-- Tremendous Tankard O'Terror [Level 90, ilvl 470]
							["timeline"] = { CREATED_5_0_4 },
						}),
						applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71331, {	-- Direbrew's Bloodied Shanker [Level 85, ilvl 365]
							["timeline"] = { CREATED_4_0_1 },
						})),
						applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71332, {	-- Tremendous Tankard O'Terror [Level 85, ilvl 365]
							["timeline"] = { CREATED_4_0_1 },
						})),
						applyclassicphase(CATA_PHASE_ONE, i(232030, {	-- Direbrew's Bloodied Shanker [Level 85, ilvl 353]
							["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
							["OnUpdate"] = BREWFEST_2024_OnUpdate,
						})),
						applyclassicphase(CATA_PHASE_ONE, i(232031, {	-- Tremendous Tankard O'Terror [Level 85, ilvl 353]
							["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
							["OnUpdate"] = BREWFEST_2024_OnUpdate,
						})),
						-- #else
						i(107217, {	-- Direbrew's Bloodied Shanker [Level 90]
							["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
						}),
						i(107218, {	-- Tremendous Tankard O'Terror [Level 90]
							["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
						}),
						i(71331, {	-- Direbrew's Bloodied Shanker [Level 85]
							["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
						}),
						i(71332, {	-- Tremendous Tankard O'Terror [Level 85]
							["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
						}),
						-- #endif
						i(49120, {	-- Direbrew's Bloody Shanker [Level 80]
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
						i(48663, {	-- Tankard O' Terror [Level 80]
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
						i(37863, {	-- Direbrew's Remote
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				-- #if BEFORE WRATH
				i(37828, {	-- Great Brewfest Kodo (MOUNT!)
					["timeline"] = { ADDED_2_0_1 },
				}),
				i(33977, {	-- Swift Brewfest Ram (MOUNT!)
					["timeline"] = { ADDED_2_0_1 },
				}),
				i(37863, {	-- Direbrew's Remote
					["timeline"] = { ADDED_2_0_1 },
				}),
				-- #endif

				-- Warlords of Draenor+
				i(117361, {	-- Bitterest Balebrew Charm [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(117357, {	-- Brawler's Statue [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(117391, {	-- Bubbliest Brightbrew Charm [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(117360, {	-- Coren's Cold Chromium Coaster [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(117358, {	-- Mithril Wristwatch [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),
				i(117359, {	-- Thousand-Year Pickled Egg [Level 100+]
					["timeline"] = { ADDED_6_0_2 },
				}),

				-- Mists of Pandaria
				-- #if ANYCLASSIC
				i(257873, {	-- Bitterest Balebrew Charm [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				i(257885, {	-- Brawler's Statue [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				i(257877, {	-- Bubbliest Brightbrew Charm [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				i(257880, {	-- Coren's Cold Chromium Coaster [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				i(257884, {	-- Mithril Wristwatch [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				i(257881, {	-- Thousand-Year Pickled Egg [Level 90, ilvl 489]
					["timeline"] = { ADDED_5_5_0, REMOVED_6_0_2 },
				}),
				-- #else
				i(87576, {	-- Bitterest Balebrew Charm [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87571, {	-- Brawler's Statue [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87575, {	-- Bubbliest Brightbrew Charm [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87574, {	-- Coren's Cold Chromium Coaster [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87572, {	-- Mithril Wristwatch [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87573, {	-- Thousand-Year Pickled Egg [Level 90]
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				-- #endif

				-- Cataclysm
				-- #if ANYCLASSIC
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71333, {	-- Bitterer Balebrew Charm [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71338, {	-- Brawler's Trophy [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71334, {	-- Bubblier Brightbrew Charm [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71335, {	-- Coren's Chilled Chromium Coaster [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71337, {	-- Mithril Stopwatch [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(71336, {	-- Petrified Pickled Egg [Level 85, ilvl 365]
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				})),

				-- Blizzard decided that they wanted to give people 353 ilvl stuff from Coren in Cataclysm Classic.
				applyclassicphase(CATA_PHASE_ONE, i(232017, {	-- Bitterer Balebrew Charm [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				applyclassicphase(CATA_PHASE_ONE, i(232015, {	-- Brawler's Trophy [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				applyclassicphase(CATA_PHASE_ONE, i(232016, {	-- Bubblier Brightbrew Charm [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				applyclassicphase(CATA_PHASE_ONE, i(232012, {	-- Coren's Chilled Chromium Coaster [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				applyclassicphase(CATA_PHASE_ONE, i(232013, {	-- Mithril Stopwatch [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				applyclassicphase(CATA_PHASE_ONE, i(232014, {	-- Petrified Pickled Egg [Level 85, ilvl 353]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["OnUpdate"] = BREWFEST_2024_OnUpdate,
				})),
				-- #else
				i(71333, {	-- Bitterer Balebrew Charm [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				i(71338, {	-- Brawler's Trophy [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				i(71334, {	-- Bubblier Brightbrew Charm [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				i(71335, {	-- Coren's Chilled Chromium Coaster [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				i(71337, {	-- Mithril Stopwatch [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				i(71336, {	-- Petrified Pickled Egg [Level 85]
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
				}),
				-- #endif

				-- Wrath of the Lich King
				i(49078, {	-- Ancient Pickled Egg [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),
				i(49116, {	-- Bitter Balebrew Charm [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),
				i(49080, {	-- Brawler's Souvenir [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),
				i(49118, {	-- Bubbling Brightbrew Charm [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),
				i(49074, {	-- Coren's Chromium Coaster [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),
				i(49076, {	-- Mithril Pocketwatch [Level 80]
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				}),

				-- Burning Crusade
				i(37597, {	-- Direbrew's Shanker [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(37128, {	-- Balebrew Charm [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(37127, {	-- Brightbrew Charm [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(38289, {	-- Coren's Lucky Coin [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(38290, {	-- Dark Iron Smoking Pipe [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(38288, {	-- Direbrew Hops [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(38287, {	-- Empty Mug of Direbrew [Level 70]
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
				}),
				i(38280, {	-- Direbrew's Dire Brew (Alliance)
					["timeline"] = { ADDED_2_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				i(38281, {	-- Direbrew's Dire Brew (Horde)
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		n(QUESTS, {
			-- #if AFTER CATA
			["OnInit"] = [[function(t)
				if GetCVar("portal") == "EU" then
					local quests = {[11117]=1,[11431]=1,[11118]=1,[11120]=1};
					for i,quest in ipairs(t.g) do
						if quest.questID and quests[quest.questID] then
							quest.u = 2;
						end
					end
				end
				return t;
			end]],
			-- #endif
			["groups"] = {
				header(HEADERS.Achievement, 18579, {	-- A Round on the House on the Dragon Isles
					q(77152, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Maruukai
						["provider"] = { "o", 405009 },	-- Bar Tab Barrel
						["coord"] = { 59.8, 38.7, OHNAHRAN_PLAINS },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77745, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Rusza'Thar Reach
						["provider"] = { "o", 407192 },	-- Bar Tab Barrel
						["coord"] = { 85.8, 35.3, OHNAHRAN_PLAINS },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77099, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Shady Sanctuary
						["provider"] = { "o", 404992 },	-- Bar Tab Barrel
						["coord"] = { 28.6, 60.4, OHNAHRAN_PLAINS },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77747, {	-- Bar Tab Barrel @ Thaldraszus, Algeth'era Court
						["provider"] = { "o", 407201 },	-- Bar Tab Barrel
						["coord"] = { 50.1, 42.7, THALDRASZUS },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77155, {	-- Bar Tab Barrel @ Thaldraszus, Eon's Fringe
						["provider"] = { "o", 405012 },	-- Bar Tab Barrel
						["coord"] = { 52.2, 81.5, THALDRASZUS },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77153, {	-- Bar Tab Barrel @ Thaldraszus, Valdrakken
						["provider"] = { "o", 405010 },	-- Bar Tab Barrel
						["coord"] = { 47.9, 46.8, VALDRAKKEN },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77096, {	-- Bar Tab Barrel @ The Azure Span, Camp Antonidas
						["provider"] = { "o", 404982 },	-- Bar Tab Barrel
						["coord"] = { 46.9, 40.2, THE_AZURE_SPAN },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77746, {	-- Bar Tab Barrel @ The Azure Span, Camp Nowhere
						["provider"] = { "o", 407199 },	-- Bar Tab Barrel
						["coord"] = { 62.8, 57.7, THE_AZURE_SPAN },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77097, {	-- Bar Tab Barrel @ The Azure Span, Iskaara
						["provider"] = { "o", 404987 },	-- Bar Tab Barrel
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77744, {	-- Bar Tab Barrel @ The Waking Shores, Dragonscale Basecamp
						["provider"] = { "o", 407186 },	-- Bar Tab Barrel
						["coord"] = { 47.7, 83.3, THE_WAKING_SHORES },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(76531, {	-- Bar Tab Barrel @ The Waking Shores, Ruby Lifeshrine
						["provider"] = { "o", 404337 },	-- Bar Tab Barrel
						["coord"] = { 58.3,67.5, THE_WAKING_SHORES },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(77095, {	-- Bar Tab Barrel @ The Waking Shores, Wingrest Embassy
						["provider"] = { "o", 404981 },	-- Bar Tab Barrel
						["coord"] = { 76.3, 35.4, THE_WAKING_SHORES },
						["timeline"] = { ADDED_10_1_7 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
				}),
				header(HEADERS.Achievement, 41212, {	-- A Round on the House in Khaz Algar
					q(84305, {	-- Bar Tab Barrel @ Dornogal, Stonelight Rest
						["provider"] = { "o", 457168 },	-- Bar Tab Barrel
						["coord"] = { 44.1, 46.1, DORNOGAL },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84306, {	-- Bar Tab Barrel @ Isle of Dorn, Freywold Village
						["provider"] = { "o", 457170 },	-- Bar Tab Barrel
						["coord"] = { 41.9, 74.2, ISLE_OF_DORN },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84307, {	-- Bar Tab Barrel @ The Ringing Deeps, Gundargaz
						["provider"] = { "o", 457171 },	-- Bar Tab Barrel
						["coord"] = { 48.3, 32.2, THE_RINGING_DEEPS },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84308, {	-- Bar Tab Barrel @ The Ringing Deeps, Opportunity Point
						["provider"] = { "o", 457172 },	-- Bar Tab Barrel
						["coord"] = { 63.4, 78.8, THE_RINGING_DEEPS },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84310, {	-- Bar Tab Barrel @ Hallowfall, Fjord Tavern
						["provider"] = { "o", 457173 },	-- Bar Tab Barrel
						["coord"] = { 49.2, 39.5, HALLOWFALL },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84311, {	-- Bar Tab Barrel @ Hallowfall, Empire's Edge Tavern
						["provider"] = { "o", 457174 },	-- Bar Tab Barrel
						["coord"] = { 42.8, 55.8, HALLOWFALL },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84313, {	-- Bar Tab Barrel @ City of Threads, The Cobwebs
						["provider"] = { "o", 457176 },	-- Bar Tab Barrel
						["coord"] = { 57.8, 39.9, NERUBAR_LOWER },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84314, {	-- Bar Tab Barrel @ City of Threads, The Skittering Lounge
						["provider"] = { "o", 457180 },	-- Bar Tab Barrel
						["coord"] = { 49.8, 21.6, NERUBAR },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84315, {	-- Bar Tab Barrel @ Azj-Kahet, Rock Bottom Inn
						["provider"] = { "o", 457182 },	-- Bar Tab Barrel
						["coord"] = { 77.8, 62.7, AZJ_KAHET },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
					q(84316, {	-- Bar Tab Barrel @ Azj-Kahet, The Trap Door
						["provider"] = { "o", 457183 },	-- Bar Tab Barrel
						["coord"] = { 56.7, 38.7, AZJ_KAHET },
						["timeline"] = { ADDED_11_0_2 },
						["isYearly"] = true,
						["groups"] = BREWFEST_TOKEN,
					}),
				}),
				q(29397, {	-- A New Supplier of Souvenirs (A)
					["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
					["qg"] = 24468,	-- Pol Amberstill
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.4, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_1 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(56836, {	-- Overflowing Purple Brewfest Stein
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(29396, {	-- A New Supplier of Souvenirs (H)
					["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_1 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(56836, {	-- Overflowing Purple Brewfest Stein
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(13932, {	-- Another Year, Another Souvenir (A)
					-- #if BEFORE WRATH
					["description"] = "This quest was only available during the 2009 & 2010 Brewfest. We are unsure if it will be returning during TBC Classic.",
					-- #endif
					["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
					["qg"] = 24468,	-- Pol Amberstill
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.4, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(37892, {	-- Green Brewfest Stein
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					},
				}),
				q(13931, {	-- Another Year, Another Souvenir (H)
					-- #if BEFORE WRATH
					["description"] = "This quest was only available during the 2009 & 2010 Brewfest. We are unsure if it will be returning during TBC Classic.",
					-- #endif
					["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(37892, {	-- Green Brewfest Stein
							["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
						}),
					},
				}),
				q(77208, {	-- Barreling Down
					["qg"] = 207496,	-- Bragdur Battlebrew
					["coord"] = { 29.7, 56.2, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_7 },
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(87289, {	-- Barreling Down (A)
					["qg"] = 237987,	-- Brelnor Battlebrew
					["coord"] = { 53.8, 39.1, DUN_MOROGH },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(87341, {	-- Barreling Down (H)
					["qg"] = 238221,	-- Brorg Bitterspite
					["coord"] = { 42.5, 18.1, DUROTAR },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11293, {	-- Bark for the Barleybrews! (A)
					["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
					--[[
					-- TODO: If they don't both check off when you complete one, uncomment.
					["altQuests"] = {
						11293,	-- Bark for the Barleybrews! (A)
						11294,	-- Bark for the Thunderbrews! (A)
					},
					]]--
					["qg"] = 23627,	-- Becan Barleybrew
					["coords"] = {
						-- #if AFTER CATA
						{ 56.0, 38.0, DUN_MOROGH },
						-- #else
						{ 49.0, 39.8, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_11_2_0 },
					["maps"] = { IRONFORGE },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11407, {	-- Bark for Drohn's Distillery! (H)
					["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
					--[[
					-- TODO: If they don't both check off when you complete one, uncomment.
					["altQuests"] = {
						11407,	-- Bark for Drohn's Distillery! (H)
						11408,	-- Bark for T'chali's Voodoo Brewery! (H)
					},
					]]--
					["qg"] = 24498,	-- Cort Gorestein
					["coords"] = {
						-- #if AFTER CATA
						{ 40.5, 18.3, DUROTAR },
						-- #else
						{ 44.4, 17.9, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_11_2_0 },
					["maps"] = { ORGRIMMAR },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11294, {	-- Bark for the Thunderbrews! (A)
					["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
					--[[
					-- TODO: If they don't both check off when you complete one, uncomment.
					["altQuests"] = {
						11293,	-- Bark for the Barleybrews! (A)
						11294,	-- Bark for the Thunderbrews! (A)
					},
					]]--
					["qg"] = 23628,	-- Daran Thunderbrew
					["coords"] = {
						-- #if AFTER CATA
						{ 56.6, 36.8, DUN_MOROGH },
						-- #else
						{ 49.5, 38.7, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_11_2_0 },
					["maps"] = { IRONFORGE },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11408, {	-- Bark for T'chali's Voodoo Brewery! (H)
					["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
					--[[
					-- TODO: If they don't both check off when you complete one, uncomment.
					["altQuests"] = {
						11407,	-- Bark for Drohn's Distillery! (H)
						11408,	-- Bark for T'chali's Voodoo Brewery! (H)
					},
					]]--
					["qg"] = 24498,	-- Cort Gorestein
					["coords"] = {
						-- #if AFTER CATA
						{ 40.5, 18.3, DUROTAR },
						-- #else
						{ 44.4, 17.9, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_11_2_0 },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11441, {	-- Brewfest! (A)
					["altQuests"] = {
						11441,	-- Brewfest! (A)
						11442,	-- Welcome to Brewfest! (A)
					},
					["qgs"] = {
						18927,	-- Human Commoner
						19148,	-- Dwarf Commoner
						19171,	-- Draenei Commoner
						19172,	-- Gnome Commoner
						19173,	-- Night Elf Commoner
						20102,	-- Goblin Commoner
						-- #if AFTER DF
						199261,	-- Holiday Enthusiast
						-- #endif
						-- #if AFTER TWW
						220307,	-- Holiday Enthusiast
						220870,	-- Holiday Enthusiast
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["maps"] = {
						STORMWIND_CITY,
						IRONFORGE,
						DARNASSUS,
						THE_EXODAR,
						-- #if AFTER MOP
						ISLE_OF_THUNDER,
						-- #endif
						-- #if AFTER DF
						VALDRAKKEN,
						-- #endif
						-- #if AFTER TWW
						DORNOGAL,
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33030, {	-- Barleybrew Clear
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33034, {	-- Gordok Grog
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33031, {	-- Thunder 45
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				q(11446, {	-- Brewfest! (H)
					["altQuests"] = {
						11446,	-- Brewfest! (H)
						11447,	-- Welcome to Brewfest! (H)
					},
					["qgs"] = {
						19169,	-- Blood Elf Commoner
						19175,	-- Orc Commoner
						19176,	-- Tauren Commoner
						19177,	-- Troll Commoner
						19178,	-- Forsaken Commoner
						20102,	-- Goblin Commoner
						-- #if AFTER DF
						199261,	-- Holiday Enthusiast
						-- #endif
						-- #if AFTER TWW
						220307,	-- Holiday Enthusiast
						220870,	-- Holiday Enthusiast
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["maps"] = {
						DUROTAR,
						NORTHERN_BARRENS,
						TANARIS,
						WINTERSPRING,
						ORGRIMMAR,
						THUNDER_BLUFF,
						UNDERCITY,
						EVERSONG_WOODS,
						NETHERSTORM,
						SILVERMOON_CITY,
						SHATTRATH_CITY,
						THE_STORM_PEAKS,
						NORTHREND_DALARAN,
						THE_CAPE_OF_STRANGLETHORN,
						-- #if AFTER DF
						VALDRAKKEN,
						-- #endif
						-- #if AFTER TWW
						DORNOGAL,
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33034, {	-- Gordok Grog
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34020, {	-- Jungle River Water
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34017, {	-- Small Step Brew
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				q(56764, {	-- Brewfest Chowdown (A)
					["qg"] = 153574,	-- Britta Steinheart
					["coord"] = { 54.8, 38.6, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						i(169599, {	-- Chowdown Champion Token
							["timeline"] = { ADDED_8_2_0 },
							["description"] = "Awarded for winning, you can participate as much as you can stomach!",
						}),
					}),
				}),
				q(56748, {	-- Brewfest Chowdown (H)
					["qg"] = 155133,	-- Etga
					["coord"] = { 42.3, 18.4, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						i(169599, {	-- Chowdown Champion Token
							["timeline"] = { ADDED_8_2_0 },
							["description"] = "Awarded for winning, you can participate as much as you can stomach!",
						}),
					}),
				}),
				q(76577, {	-- Brewfest in Valdrakken (A)
					["qg"] = 24710,	-- Ipfelkofer Ironkeg
					["coord"] = { 55.1, 38.1, DUN_MOROGH },
					["timeline"] = { ADDED_10_1_7 },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
				}),
				q(76579, {	-- Brewfest in Valdrakken (H)
					["qg"] = 155194,	-- La'gar Brewshout
					["coord"] = { 41.6, 18.4, DUROTAR },
					["timeline"] = { ADDED_10_1_7 },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
				}),
				q(76545, {	-- Brewfest in Valdrakken (N)
					["qg"] = 199261,	-- Holiday Enthusiast
					["coords"] = {
						{ 31.2, 66.1, VALDRAKKEN },	-- mobileNPC
						{ 54.4, 60.2, VALDRAKKEN },
						{ 54.9, 37.4, VALDRAKKEN },
						{ 55.1, 37.0, VALDRAKKEN },
					},
					["timeline"] = { ADDED_10_1_7 },
					["isYearly"] = true,
				}),
				q(11400, {	-- Brewfest Riding Rams (A)
					["provider"] = { "i", 34028 },	-- "Honorary Brewer" Hand Stamp (A)
					["timeline"] = {
						-- #if AFTER WRATH
						ADDED_2_0_1, REMOVED_2_4_3,
						-- #else
						ADDED_2_0_1, REMOVED_3_0_2,	-- Originally removed 2.4.3, actually available in classic!
						-- #endif
					},
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(40, 40, 1),
				}),
				q(11419, {	-- Brewfest Riding Rams (H)
					["provider"] = { "i", 33978 },	-- "Honorary Brewer" Hand Stamp (H)
					["timeline"] = {
						-- #if AFTER WRATH
						ADDED_2_0_1, REMOVED_2_4_3,
						-- #else
						ADDED_2_0_1, REMOVED_3_0_2	-- Originally removed 2.4.3, actually available in classic!
						-- #endif
					},
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(40, 40, 1),
				}),
				q(29394, {	-- Brew For Brewfest (A)
					["sourceQuest"] = 11122,	-- There and Back Again (A)
					["qg"] = 23558,	-- Neill Ramstein
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.6, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_4_2_0 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(33306),	-- Ram Racing Reins (PQI!)
						i(33797),	-- Portable Brewfest Keg (QI!)
					},
				}),
				q(29393, {	-- Brew For Brewfest (H)
					["sourceQuest"] = 11412,	-- There and Back Again (H)
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_4_2_0 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(33306),	-- Ram Racing Reins (PQI!)
						i(33797),	-- Portable Brewfest Keg (QI!)
					},
				}),
				q(12278, {	-- Brew of the Month Club (A)
					-- #if BEFORE 3.0.0
					["description"] = "We're not sure if completing this at the moment will get you progress on the achievement during Wrath as it does NOT retain its completion status after acquired.",
					-- #endif
					["altQuests"] = { 12420 },	-- Brew of the Month Club (A) [???]
					["providers"] = {
						-- #if NOT ANYCLASSIC
						{ "i", 37571 },	-- "Brew of the Month" Club Membership Form (current)
						-- #else
						{ "i", 37736 },	-- "Brew of the Month" Club Membership Form (original)
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },	-- Originally added 3.0.2, but in TBC Classic?!
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					-- #if ANYCLASSIC
					-- #if AFTER WRATH
					["OnUpdate"] = [[function(t)
						if not (_.IsQuestFlaggedCompleted(t.questID) or _.IsQuestFlaggedCompleted(t.altQuests[1])) then
							if ATTAccountWideData.Achievements[2796] then
								t.collected = 2;
								t.OnUpdate = nil;
							end
						end
					end]],
					-- #endif
					-- #endif
				}),
				-- #if NOT ANYCLASSIC
				q(12420, {	-- Brew of the Month Club (A)
					["altQuests"] = { 12278 },	-- Brew of the Month Club (A)
					["provider"] = { "i", 37736 },	-- "Brew of the Month" Club Membership Form (original)
					["timeline"] = { ADDED_2_2_2 },	-- Originally added 3.0.2, but in TBC Classic?!
					["maps"] = { DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,	-- original quest was reset yearly
					["u"] = REMOVED_FROM_GAME,	-- this version isn't available, but don't know when it was 'removed'
				}),
				-- #endif
				q(12306, {	-- Brew of the Month Club (H)
					-- #if BEFORE 3.0.0
					["description"] = "We're not sure if completing this at the moment will get you progress on the achievement during Wrath as it does NOT retain its completion status after acquired.",
					-- #endif
					["altQuests"] = { 12421 },	-- Brew of the Month Club (H) [???]
					["providers"] = {
						-- #if NOT ANYCLASSIC
						{ "i", 37599 },	-- "Brew of the Month" Club Membership Form (current)
						-- #else
						{ "i", 37737 },	-- "Brew of the Month" Club Membership Form (original)
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },	-- Originally added 3.0.2, but in TBC Classic?!
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					-- #if ANYCLASSIC
					-- #if AFTER WRATH
					["OnUpdate"] = [[function(t)
						if not (_.IsQuestFlaggedCompleted(t.questID) or _.IsQuestFlaggedCompleted(t.altQuests[1])) then
							if ATTAccountWideData.Achievements[2796] then
								t.collected = 2;
								t.OnUpdate = nil;
							end
						end
					end]],
					-- #endif
					-- #endif
				}),
				-- #if NOT ANYCLASSIC
				q(12421, {	-- Brew of the Month Club (H)
					["altQuests"] = { 12306 },	-- Brew of the Month Club (H)
					["provider"] = { "i", 37737 },	-- "Brew of the Month" Club Membership Form (original)
					["timeline"] = { ADDED_2_2_2 },	-- Originally added 3.0.2, but in TBC Classic?!
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,	-- original quest was reset yearly
					["u"] = REMOVED_FROM_GAME,	-- this version isn't available, but don't know when it was 'removed'
				}),
				-- #endif
				q(76591, {	-- Bubbling Brews
					["qg"] = 207496,	-- Bragdur Battlebrew
					["coord"] = { 29.7, 56.2, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_7 },
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(87347, {	-- Bubbling Brews (A)
					["qg"] = 237987,	-- Brelnor Battlebrew
					["coord"] = { 53.8, 39.1, DUN_MOROGH },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(87349, {	-- Bubbling Brews (H)
					["qg"] = 238221,	-- Brorg Bitterspite
					["coord"] = { 42.5, 18.1, DUROTAR },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11117, {	-- Catch the Wild Wolpertinger! (A) [Non-EU Only!]
					["qg"] = 23486,	-- Goldark Snipehunter
					["coords"] = {
						-- #if AFTER CATA
						{ 55.2, 37.8, DUN_MOROGH },
						-- #else
						{ 48.0, 39.5, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = {
						-- #if ANYCLASSIC
						CREATED_2_2_2, ADDED_3_0_2,
						-- #else
						ADDED_2_2_2,
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						objective(1, {	-- 0/5 Stunned Wolpertinger
							["provider"] = { "i", 32906 },	-- Stunned Wolpertinger
							["cost"] = {
								{ "i", 32907, 1 },	-- Wolpertinger Net
								-- #if AFTER 3.2.0.10314
								{ "i", 46735, 1 },	-- Synthebrew Goggles
								-- #endif
							},
							["cr"] = 23487,	-- Wild Wolpertinger
						}),
						i(46735, {	-- Synthebrew Goggles
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(32233, {	-- Wolpertinger (PET!)
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				q(11431, {	-- Catch the Wild Wolpertinger! (H) [Non-EU Only!]
					["qgs"] = {
						24657,	-- Glodrak Huntsniper
						-- #if AFTER 8.2.0
						155269,	-- Snipehunter Goro
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 18.4, DUROTAR },
						-- #else
						{ 45.0, 17.4, DUROTAR },
						-- #endif
					},
					["timeline"] = {
						-- #if ANYCLASSIC
						CREATED_2_2_2, ADDED_3_0_2,
						-- #else
						ADDED_2_2_2,
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						objective(1, {	-- 0/5 Stunned Wolpertinger
							["provider"] = { "i", 32906 },	-- Stunned Wolpertinger
							["cost"] = {
								{ "i", 32907, 1 },	-- Wolpertinger Net
								-- #if AFTER 3.2.0.10314
								{ "i", 46735, 1 },	-- Synthebrew Goggles
								-- #endif
							},
							["cr"] = 23487,	-- Wild Wolpertinger
						}),
						i(46735, {	-- Synthebrew Goggles
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(32233, {	-- Wolpertinger (PET!)
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				q(12022, {	-- Chug and Chuck! (A)
					["sourceQuests"] = {
						11441,	-- Brewfest! (A)
						11442,	-- Welcome to Brewfest! (A)
					},
					["qg"] = 27215,	-- Boxey Boltspinner
					["coords"] = {
						-- #if AFTER CATA
						{ 54.7, 38.0, DUN_MOROGH },
						-- #else
						{ 47.5, 39.8, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						objective(1, {	-- S.T.O.U.T. Hit
							["providers"] = {
								{ "i",  33096 },	-- Alcohol-Free Brewfest Sampler
								-- #if AFTER 8.2.0
								{ "i", 169219 },	-- Alcohol-Free Brewfest Sampler
								-- #endif
							},
							["cr"] = 24108,	-- Self-Turning and Oscillating Utility Target <S.T.O.U.T.>
						}),
					}),
				}),
				q(12191, {	-- Chug and Chuck! (H)
					["sourceQuests"] = {
						11446,	-- Brewfest! (H)
						11447,	-- Welcome to Brewfest! (H)
					},
					["qg"] = 27216,	-- Bizzle Quicklift
					["coords"] = {
						-- #if AFTER CATA
						{ 41.4, 17.6, DUROTAR },
						-- #else
						{ 45.3, 17.3, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						objective(1, {	-- S.T.O.U.T. Hit
							["providers"] = {
								{ "i",  33096 },	-- Alcohol-Free Brewfest Sampler
								-- #if AFTER 8.2.0
								{ "i", 169219 },	-- Alcohol-Free Brewfest Sampler
								-- #endif
							},
							["cr"] = 24108,	-- Self-Turning and Oscillating Utility Target <S.T.O.U.T.>
						}),
					}),
				}),
				q(56322, {	-- Contained Alemental (A)
					["altQuests"] = {
						56322,	-- Contained Alemental (A)
						56341,	-- Direbrew Cog (A)
						56372,	-- Hozen Totem (A)
					},
					["provider"] = { "o", 327669 },	-- Contained Alemental
					["coord"] = { 55.5, 37.7, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				q(56714, {	-- Contained Alemental (H)
					["altQuests"] = {
						56714,	-- Contained Alemental (H)
						56716,	-- Direbrew Cog (H)
						56715,	-- Hozen Totem (H)
					},
					["provider"] = { "o", 330168 },	-- Contained Alemental
					["coord"] = { 41.0, 17.8, DUROTAR },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(11321, {	-- Did Someone Say "Souvenir?" (A)
					-- #if BEFORE WRATH
					["description"] = "This quest was only available during the 2007 Brewfest.",
					-- #endif
					["qg"] = 24468,	-- Pol Amberstill
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.4, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(32912, {	-- Yellow Brewfest Stein
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
						}),
					},
				}),
				q(11413, {	-- Did Someone Say "Souvenir?" (H)
					-- #if BEFORE WRATH
					["description"] = "This quest was only available during the 2007 Brewfest.",
					-- #endif
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(32912, {	-- Yellow Brewfest Stein
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
						}),
					},
				}),
				q(12491, {	-- Direbrew's Dire Brew (A)
					["provider"] = { "i", 38280 },	-- Direbrew's Dire Brew
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					-- #if AFTER SL
					["lvl"] = 20,
					-- #elseif AFTER WRATH
					["lvl"] = 75,
					-- #else
					["lvl"] = 65,
					-- #endif
					["groups"] = BREWFEST_TOKEN,
				}),
				q(12492, {	-- Direbrew's Dire Brew (H)
					["provider"] = { "i", 38281 },	-- Direbrew's Dire Brew
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					-- #if AFTER SL
					["lvl"] = 20,
					-- #elseif AFTER WRATH
					["lvl"] = 75,
					-- #else
					["lvl"] = 65,
					-- #endif
					["groups"] = BREWFEST_TOKEN,
				}),
				q(56341, {	-- Direbrew Cog (A)
					["altQuests"] = {
						56322,	-- Contained Alemental (A)
						56341,	-- Direbrew Cog (A)
						56372,	-- Hozen Totem (A)
					},
					["provider"] = { "o", 328343 },	-- Direbrew Cog
					["coord"] = { 55.5, 37.7, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				q(56716, {	-- Direbrew Cog (H)
					["altQuests"] = {
						56714,	-- Contained Alemental (H)
						56716,	-- Direbrew Cog (H)
						56715,	-- Hozen Totem (H)
					},
					["provider"] = { "o", 330169 },	-- Direbrew Cog
					["coord"] = { 41.0, 17.8, DUROTAR },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(56372, {	-- Hozen Totem (A)
					["altQuests"] = {
						56322,	-- Contained Alemental (A)
						56341,	-- Direbrew Cog (A)
						56372,	-- Hozen Totem (A)
					},
					["provider"] = { "o", 328413 },	-- Hozen Totem
					["coord"] = { 55.5, 37.7, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				q(56715, {	-- Hozen Totem (H)
					["altQuests"] = {
						56714,	-- Contained Alemental (H)
						56716,	-- Direbrew Cog (H)
						56715,	-- Hozen Totem (H)
					},
					["provider"] = { "o", 330170 },	-- Hozen Totem
					["coord"] = { 41.0, 17.8, DUROTAR },
					["timeline"] = { ADDED_8_2_0, REMOVED_11_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(12062, {	-- Insult Coren Direbrew
					["sourceQuest"] = 12318,	-- Save Brewfest!
					["qg"] = 26719,	-- Brewfest Spy
					["timeline"] = { ADDED_2_4_3, REMOVED_3_3_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["isDaily"] = true,
					["lvl"] = lvlsquish(65, 65, 10),
				}),
				q(11318, {	-- Now This is Ram Racing... Almost. (A)
					["sourceQuests"] = {
						11441,	-- Brewfest! (A)
						11442,	-- Welcome to Brewfest! (A)
					},
					["qg"] = 23558,	-- Neill Ramstein
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.6, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
				}),
				q(11409, {	-- Now This is Ram Racing... Almost. (H)
					["sourceQuests"] = {
						11446,	-- Brewfest! (H)
						11447,	-- Welcome to Brewfest! (H)
					},
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
				}),
				q(11118, {	-- Pink Elekks On Parade (A) [Non-EU Only!]
					["qg"] = 23486,	-- Goldark Snipehunter
					["coords"] = {
						-- #if AFTER CATA
						{ 55.2, 37.8, DUN_MOROGH },
						-- #else
						{ 48.0, 39.5, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = {
						-- #if ANYCLASSIC
						CREATED_2_2_2, ADDED_3_0_2,
						-- #else
						ADDED_2_2_2,
						-- #endif
					},
					["maps"] = { AZUREMYST_ISLE, THE_EXODAR, ELWYNN_FOREST, DARNASSUS, TELDRASSIL, SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						objective(1, {	-- 0/3 Azuremyst Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23528,	-- Azuremyst Pink Elekk
						}),
						objective(2, {	-- 0/3 Elwynn Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23507,	-- Elwynn Pink Elekk
						}),
						objective(3, {	-- 0/3 Teldrassil Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23527,	-- Teldrassil Pink Elekk
						}),
						i(46735, {	-- Synthebrew Goggles
							["timeline"] = { ADDED_3_2_0 },
						}),
					}),
				}),
				q(11120, {	-- Pink Elekks On Parade (H) [Non-EU Only!]
					["qgs"] = {
						24657,	-- Glodrak Huntsniper
						-- #if AFTER 8.2.0
						155269,	-- Snipehunter Goro
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 41.2, 18.4, DUROTAR },
						-- #else
						{ 45.0, 17.4, DUROTAR },
						-- #endif
					},
					["timeline"] = {
						-- #if ANYCLASSIC
						CREATED_2_2_2, ADDED_3_0_2,
						-- #else
						ADDED_2_2_2,
						-- #endif
					},
					["maps"] = { EVERSONG_WOODS, MULGORE, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						objective(1, {	-- 0/3 Eversong Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23531,	-- Eversong Pink Elekk
						}),
						objective(2, {	-- 0/3 Mulgore Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23529,	-- Mulgore Pink Elekk
						}),
						objective(3, {	-- 0/3 Tirisfal Pink Elekk slain
							["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
							["cr"] = 23530,	-- Tirisfal Pink Elekk
						}),
						i(46735, {	-- Synthebrew Goggles
							["timeline"] = { ADDED_3_2_0 },
						}),
					}),
				}),
				q(12318, {	-- Save Brewfest!
					["sourceQuests"] = {
						11441,	-- Brewfest! (A)
						11446,	-- Brewfest! (H)
						11442,	-- Welcome to Brewfest! (A)
						11447,	-- Welcome to Brewfest! (H)
					},
					["qgs"] = {
						27584,	-- Darna Honeybock
						28329,	-- Slurpo Fizzykeg
					},
					["coords"] = {
						{ 46.2, 52.8, DUN_MOROGH },
						{ 47.9, 26.9, DUROTAR },
					},
					["timeline"] = { ADDED_2_4_3, REMOVED_3_3_3 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(65, 65, 10),
				}),
				q(12193, {	-- Say, There Wouldn't Happen to be a Souvenir This Year, Would There? (A)
					["qg"] = 24468,	-- Pol Amberstill
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.4, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33016, {	-- Blue Brewfest Stein
							["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
						}),
					},
				}),
				q(12194, {	-- Say, There Wouldn't Happen to be a Souvenir This Year, Would There? (H)
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
					["cost"] = { { "i", 33955, 1 } },	-- Brewfest Stein Voucher
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33016, {	-- Blue Brewfest Stein
							["timeline"] = { ADDED_2_0_1, REMOVED_3_0_2 },
						}),
					},
				}),
				q(11454, {	-- Seek the Saboteurs
					["provider"] = { "o", 186881 },	-- Dark Iron Sabotage Plans
					["coords"] = {
						{ 44.3, 17.5, DUROTAR },
						{ 48.1, 39.1, DUN_MOROGH },
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["lvl"] = lvlsquish(48, 48, 48),
				}),
				q(11486, {	-- The Best of Brews (A)
					["sourceQuest"] = 11454,	-- Seek the Saboteurs
					["qg"] = 23872,	-- Coren Direbrew
					["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(48, 48, 48),
					["groups"] = {
						i(34140, {	-- Dark Iron Tankard
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
						}),
					},
				}),
				q(11487, {	-- The Best of Brews (H)
					["sourceQuest"] = 11454,	-- Seek the Saboteurs
					["qg"] = 23872,	-- Coren Direbrew
					["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(48, 48, 48),
					["groups"] = {
						i(34140, {	-- Dark Iron Tankard
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
						}),
					},
				}),
				q(11122, {	-- There and Back Again (A)
					["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
					["qg"] = 23558,	-- Neill Ramstein
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.6, 40.3, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(11412, {	-- There and Back Again (H)
					["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
					["qg"] = 24497,	-- Ram Master Ray
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 17.6, DUROTAR },
						-- #else
						{ 46.3, 14.8, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["cost"] = { { "i", 33306, 1 } },	-- Ram Racing Reins
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = BREWFEST_TOKEN,
				}),
				q(12020, {	-- This One Time, When I Was Drunk... (A)
					["provider"] = { "o", 189989 },	-- Dark Iron Mole Machine Wreckage
					["coords"] = {
						-- #if AFTER CATA
						{ 56.0, 37.1, DUN_MOROGH },
						-- #else
						{ 47.5, 39.8, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						ach(1186, {	-- Down With The Dark Iron
							["timeline"] = { ADDED_3_0_2, REMOVED_8_2_0 },
						}),
					}),
				}),
				q(12192, {	-- This One Time, When I Was Drunk... (H)
					["provider"] = { "o", 189990 },	-- Dark Iron Mole Machine Wreckage
					["coords"] = {
						-- #if AFTER CATA
						{ 40.7, 17.4, DUROTAR },
						-- #else
						{ 40.7, 17.4, DUROTAR },	-- TODO: Get accurate coordinates for TBC
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2, REMOVED_8_2_0 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = appendGroups(BREWFEST_TOKEN, {
						ach(1186, {	-- Down With The Dark Iron
							["timeline"] = { ADDED_3_0_2, REMOVED_8_2_0 },
						}),
					}),
				}),
				q(11442, {	-- Welcome to Brewfest! (A)
					["altQuests"] = {
						11441,	-- Brewfest! (A)
						11442,	-- Welcome to Brewfest! (A)
					},
					["qg"] = 24710,	-- Ipfelkofer Ironkeg
					["coords"] = {
						-- #if AFTER CATA
						{ 55.1, 38.1, DUN_MOROGH },
						-- #else
						{ 48.0, 39.8, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33030, {	-- Barleybrew Clear
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33034, {	-- Gordok Grog
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33031, {	-- Thunder 45
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				q(11447, {	-- Welcome to Brewfest! (H)
					["altQuests"] = {
						11446,	-- Brewfest! (H)
						11447,	-- Welcome to Brewfest! (H)
					},
					["qgs"] = {
						-- #if AFTER 8.2.0
						155194,	-- La'gar Brewshout
						-- #else
						24711,	-- Tapper Swindlekeg <Brewfest Organizer>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 18.4, DUROTAR },
						-- #else
						{ 45.6, 17.2, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["groups"] = {
						i(33034, {	-- Gordok Grog
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34020, {	-- Jungle River Water
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34017, {	-- Small Step Brew
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
			},
		}),
		n(REWARDS, bubbleDown({
			-- #if NOT ANYCLASSIC
			["f"] = COSMETIC,	-- These Steins turn into 'Miscellanous' filter, which doesn't allow SourceIDs to be attached in Retail
			-- #endif
		},{
			fillstein(i(33016, {	-- Blue Brewfest Stein
				["lore"] = "This stein was the reward from the 2008 Brewfest.",
				["timeline"] = { ADDED_2_4_3, REMOVED_3_0_2 },
				["OnInit"] = OnInitForStein(30002),
				["groups"] = {
					i(33017),	-- Filled Blue Brewfest Stein [Barleybrew Clear - Alliance]
					i(33018),	-- Filled Blue Brewfest Stein [Thunder 45 - Alliance]
					i(33019),	-- Filled Blue Brewfest Stein [Gordok Grog - Alliance/Horde]
					i(33020),	-- Filled Blue Brewfest Stein [Small Step Brew - Horde]
					i(33021),	-- Filled Blue Brewfest Stein [Jungle River Water - Horde]
				},
			})),
			i(169448, {	-- Bottomless Brewfest Stein
				-- #if AFTER TRANSMOG
				["description"] = "Fill up the stein with one brew, unequip and re-equip the filled stein, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!",
				-- #endif
				["timeline"] = { ADDED_8_0_1 },
				["groups"] = {
					i(169450),	-- Filled Bottomless Brewfest Stein [Barleybrew Clear - Alliance]
					i(169452),	-- Filled Bottomless Brewfest Stein [Thunder 45 - Alliance]
					i(169453),	-- Filled Bottomless Brewfest Stein [Gordok Grog - Alliance/Horde]
					i(169454),	-- Filled Bottomless Brewfest Stein [Small Step Brew - Horde]
					i(169455),	-- Filled Bottomless Brewfest Stein [Jungle River Water - Horde]
				},
			}),
			fillstein(i(37892, {	-- Green Brewfest Stein
				["lore"] = "This stein was the reward from the 2009 & 2010 Brewfest.",
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
				["OnInit"] = OnInitForStein(40001),
				["groups"] = {
					i(37893),	-- Filled Green Brewfest Stein [Barleybrew Clear - Alliance]
					i(37894),	-- Filled Green Brewfest Stein [Thunder 45 - Alliance]
					i(37897),	-- Filled Green Brewfest Stein [Gordok Grog - Alliance/Horde]
					i(37896),	-- Filled Green Brewfest Stein [Small Step Brew - Horde]
					i(37895),	-- Filled Green Brewfest Stein [Jungle River Water - Horde]
				},
			})),
			i(56836, {	-- Overflowing Purple Brewfest Stein
				["lore"] = "This stein was the reward from the 2011 Brewfest onward.",
				["timeline"] = { ADDED_4_0_1 },
			}),
			fillstein(i(32912, {	-- Yellow Brewfest Stein
				["lore"] = "This stein was the reward from the 2007 Brewfest.",
				["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
				["OnInit"] = OnInitForStein(20403),
				["groups"] = {
					i(32915),	-- Filled Yellow Brewfest Stein [Barleybrew Clear - Alliance]
					i(32917),	-- Filled Yellow Brewfest Stein [Thunder 45 - Alliance]
					i(32918),	-- Filled Yellow Brewfest Stein [Gordok Grog - Alliance/Horde]
					i(32919),	-- Filled Yellow Brewfest Stein [Small Step Brew - Horde]
					i(32920),	-- Filled Yellow Brewfest Stein [Jungle River Water - Horde]
				},
			})),
		})),
		n(VENDORS, {
			-- #if ANYCLASSIC
			["OnTooltip"] = BREWFEST_VENDOR_OnTooltip,
			-- #endif
			["groups"] = {
				n(23604, {	-- Agnes Farwithers <Cheese Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.0, 18.3, DUROTAR },
						-- #else
						{ 43.9, 17.9, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(34065, {	-- Spiced Onion Cheese
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(23521, {	-- Anne Summers <Cheese Vendor>
					["coord"] = { 56.4, 37.6, DUN_MOROGH },
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(34065, {	-- Spiced Onion Cheese
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(152829, {	-- Arcti <Bartender>
					["coord"] = { 55.4, 38.3, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(169441),	-- Azuremyst Mead
						i(169442),	-- Exodar Martini
						i(169443),	-- Shadowmoon Schnapps
					},
				}),
				n(23522, {	-- Arlen Lochlan <Bread Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 38.0, DUN_MOROGH },
						-- #else
						{ 48.5, 40.0, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(33043, {	-- The Essential Brewfest Pretzel
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(23482, {	-- Barleybrew Apprentice <Barleybrew Brew Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.0, 38.0, DUN_MOROGH },
						-- #else
						{ 48.9, 39.8, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(33030, {	-- Barleybrew Clear
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33029, {	-- Barleybrew Dark
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(46400, {	-- Barleybrew Gold
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(33028, {	-- Barleybrew Light
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138867, {	-- Shimmer Stout
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(23710, {	-- Belbi Quikswitch <Token Redeemer>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.2, 37.6, DUN_MOROGH },
						-- #else
						{ 49.3, 39.6, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE 11.2.0
						filter(BATTLE_PETS, {
							i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
								["timeline"] = { ADDED_3_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116756, {	-- Stout Alemental (PET!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(32233, {	-- Wolpertinger's Tankard (PET!)
								["cost"] = BREWFEST_TOKEN_COST(200),
								["timeline"] = { ADDED_2_2_2 },
							}),
						}),
						filter(COSMETIC, {
							-- Brewfest Regalia
							i(33968, {	-- Blue Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33868, {	-- Brewfest Boots
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33863, {	-- Brewfest Dress
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33862, {	-- Brewfest Regalia
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33966, {	-- Brewfest Slippers
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33864, {	-- Brown Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33967, {	-- Green Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33969, {	-- Purple Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							--
							i(33047, {	-- Belbi's Eyesight Enhancing Romance Goggles
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible TODO: Look into this
								-- #endif
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
								["races"] = ALLIANCE_ONLY,
							}),
							i(169448, {	-- Bottomless Brewfest Stein
								["timeline"] = { ADDED_8_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(10),
							}),
							i(169461, {	-- Garland of Grain
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(227795, {	-- Homebrewer's Sampling Mantle
								["timeline"] = { ADDED_11_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(209044, {	-- Orange Brewfest Bulwark
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(138730, {	-- Synthebrew Goggles XL
								["timeline"] = { ADDED_7_0_3 },
								["cost"] = BREWFEST_TOKEN_COST(200),
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- TODO: Look into this
								-- #endif
							}),
							i(168915, {	-- Tabard of Brew
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						filter(MISC, {
							i(90426, {	-- Brewhelm
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(37750, {	-- Fresh Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(39476, {	-- Fresh Goblin Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(5),
							}),
							i(37816, {	-- Preserved Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(20),
							}),
						}),
						-- #endif
						filter(QUEST_ITEMS, {
							-- Wouter NOTE: in MoP Classic ID 37736 is still the item actually on the vendor, added a Classic timeline because I don't want to mess with the original (yet)
							i(37571, {	-- "Brew of the Month" Club Membership Form (current)
								["timeline"] = {
									-- #if ANYCLASSIC
									CREATED_2_2_2,
									-- #else
									CREATED_2_2_2, ADDED_3_0_2	-- NOTE: Not used in 2007
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(200),
								["races"] = ALLIANCE_ONLY,
							}),
							i(37736, {	-- "Brew of the Month" Club Membership Form (original)
								["timeline"] = {
									-- #if ANYCLASSIC
									ADDED_2_2_2,
									-- #else
									ADDED_2_2_2, REMOVED_3_0_2
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(200),
								["races"] = ALLIANCE_ONLY,
							}),
							i(34028, {	-- "Honorary Brewer" Hand Stamp (Alliance)
								["timeline"] = {
									-- #if AFTER WRATH
									ADDED_2_0_1, REMOVED_2_4_3,
									-- #else
									ADDED_2_0_1, REMOVED_3_0_2,	-- Originally removed 2.4.3, actually available in classic!
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(600),
								["races"] = ALLIANCE_ONLY,
							}),
							i(119209, {	-- Angry Brewfest Letter
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
						}),
						-- #if BEFORE 11.2.0
						filter(TOYS, {
							i(209052, {	-- Brew Barrel (TOY!)
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(116758, {	-- Brewfest Banner (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(71137, {	-- Brewfest Keg Pony (TOY!)
								["timeline"] = { ADDED_4_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33927, {	-- Brewfest Pony Keg (TOY!)
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
								["timeline"] = { ADDED_8_1_5 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(90427, {	-- Pandaren Brewpack (TOY!)
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116757, {	-- Steamworks Sausage Grill (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						-- #endif
						n(HEIRLOOMS, {
							i(122339, {	-- Ancient Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(300),
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(204337, {	-- Awakened Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_10_1_0 },
							}),
							i(167732, {	-- Battle-Hardened Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_8_1_5 },
							}),
							i(187998, {	-- Eternal Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_9_1_5 },
							}),
							i(122341, {	-- Timeworn Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(151615, {	-- Weathered Heirloom Scabbard
								["timeline"] = { ADDED_7_2_5 },
								["cost"] = BREWFEST_TOKEN_COST(500),
							}),
						}),
					},
				}),
				n(207496, {	-- Bragdur Battlebrew
					["coord"] = { 29.8, 56.6, VALDRAKKEN },
					["sym"] = {{"sub","common_vendor",23710}},	-- Belbi Quikswitch <Token Redeemer> (Ally Version)
				}),
				n(152871, {	-- Brewer Gerrat <Brew Vendor>
					["coord"] = { 56.5, 37.5, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(169397),	-- Admiralty Ale
					},
				}),
				n(23605, {	-- Bron <Sausage Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 17.8, DUROTAR },
						-- #else
						{ 44.4, 16.6, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(34063, {	-- Dried Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138900, {	-- Gravil Goldbraid's Famous Sausage Hat (TOY!)
							["timeline"] = { ADDED_7_0_3 },
							["cost"] = BREWFEST_TOKEN_COST(100),
						}),
						i(33024, {	-- Pickled Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33023, {	-- Savory Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33025, {	-- Spicy Smoked Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34064, {	-- Succulent Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33026, {	-- The Golden Link
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138884, {	-- Throwing Sausage
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(24495, {	-- Blix Fixwidget <Token Redeemer>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.0, 17.0, DUROTAR },
						-- #else
						{ 44.1, 18.0, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE 11.2.0
						filter(BATTLE_PETS, {
							i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
								["timeline"] = { ADDED_3_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116756, {	-- Stout Alemental (PET!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(32233, {	-- Wolpertinger's Tankard (PET!)
								["cost"] = BREWFEST_TOKEN_COST(200),
								["timeline"] = { ADDED_2_2_2 },
							}),
						}),
						filter(COSMETIC, {
							-- Brewfest Regalia
							i(33968, {	-- Blue Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33868, {	-- Brewfest Boots
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33863, {	-- Brewfest Dress
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33862, {	-- Brewfest Regalia
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33966, {	-- Brewfest Slippers
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33864, {	-- Brown Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33967, {	-- Green Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33969, {	-- Purple Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							--
							i(34008, {	-- Blix's Eyesight Enhancing Romance Goggles
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible
								-- #endif
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
								["races"] = HORDE_ONLY,
							}),
							i(169448, {	-- Bottomless Brewfest Stein
								["timeline"] = { ADDED_8_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(10),
							}),
							i(169461, {	-- Garland of Grain
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(227795, {	-- Homebrewer's Sampling Mantle
								["timeline"] = { ADDED_11_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(209044, {	-- Orange Brewfest Bulwark
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(138730, {	-- Synthebrew Goggles XL
								["timeline"] = { ADDED_7_0_3 },
								["cost"] = BREWFEST_TOKEN_COST(200),
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- TODO: Look into this
								-- #endif
							}),
							i(168915, {	-- Tabard of Brew
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						filter(MISC, {
							i(90426, {	-- Brewhelm
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(37750, {	-- Fresh Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(39477, {	-- Fresh Dwarven Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(5),
							}),
							i(37816, {	-- Preserved Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(20),
							}),
						}),
						-- #endif
						filter(QUEST_ITEMS, {
							-- Wouter NOTE: in MoP Classic ID 37737 is still the item actually on the vendor, added a Classic timeline because I don't want to mess with the original (yet)
							i(37599, {	-- "Brew of the Month" Club Membership Form (current)
								["timeline"] = {
									-- #if ANYCLASSIC
									CREATED_2_2_2,
									-- #else
									CREATED_2_2_2, ADDED_3_0_2	-- NOTE: Not used in 2007
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(200),
								["races"] = HORDE_ONLY,
							}),
							i(37737, {	-- "Brew of the Month" Club Membership Form (original)
								["timeline"] = {
									-- #if ANYCLASSIC
									ADDED_2_2_2,
									-- #else
									ADDED_2_2_2, REMOVED_3_0_2
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(200),
								["races"] = HORDE_ONLY,
							}),
							i(33978, {	-- "Honorary Brewer" Hand Stamp (Horde)
								["timeline"] = {
									-- #if AFTER WRATH
									ADDED_2_0_1, REMOVED_2_4_3,
									-- #else
									ADDED_2_0_1, REMOVED_3_0_2,	-- Originally removed 2.4.3, actually available in classic!
									-- #endif
								},
								["cost"] = BREWFEST_TOKEN_COST(600),
								["races"] = HORDE_ONLY,
							}),
							i(119209, {	-- Angry Brewfest Letter
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
						}),
						-- #if BEFORE 11.2.0
						filter(TOYS, {
							i(209052, {	-- Brew Barrel (TOY!)
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(116758, {	-- Brewfest Banner (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(71137, {	-- Brewfest Keg Pony (TOY!)
								["timeline"] = { ADDED_4_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33927, {	-- Brewfest Pony Keg (TOY!)
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
								["timeline"] = { ADDED_8_1_5 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(90427, {	-- Pandaren Brewpack (TOY!)
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116757, {	-- Steamworks Sausage Grill (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						-- #endif
						n(HEIRLOOMS, {
							i(122339, {	-- Ancient Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(300),
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(204337, {	-- Awakened Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_10_1_0 },
							}),
							i(167732, {	-- Battle-Hardened Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_8_1_5 },
							}),
							i(187998, {	-- Eternal Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_9_1_5 },
							}),
							i(122341, {	-- Timeworn Heirloom Scabbard
								["cost"] = BREWFEST_TOKEN_COST(500),
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(151615, {	-- Weathered Heirloom Scabbard
								["timeline"] = { ADDED_7_2_5 },
								["cost"] = BREWFEST_TOKEN_COST(500),
							}),
						}),
					},
				}),
				n(240493, {	-- Brina Bearclaw <Creature Collector>
					["coord"] = { 56.2, 36.5, DUN_MOROGH },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						filter(BATTLE_PETS, {
							i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
								["timeline"] = { ADDED_3_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116756, {	-- Stout Alemental (PET!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(32233, {	-- Wolpertinger's Tankard (PET!)
								["cost"] = BREWFEST_TOKEN_COST(200),
								["timeline"] = { ADDED_2_2_2 },
							}),
						}),
						filter(MISC, {
							i(37750, {	-- Fresh Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(39476, {	-- Fresh Goblin Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(5),
							}),
							i(37816, {	-- Preserved Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(20),
							}),
						}),
					},
				}),
				n(153574, {	-- Britta Steinheart <Chowdown Organizer>
					["coord"] = { 54.8, 38.6, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(169865, {	-- Brewfest Chowdown Trophy (TOY!)
							["cost"] = { { "i", 169599, 5 } },	-- 5x Chowdown Champion Token
							["timeline"] = { ADDED_8_2_0 },
						}),
					},
				}),
				n(24510, {	-- Driz Tumblequick <Ram Racing Apprentice>
					["sourceQuest"] = 11419,	-- Brewfest Riding Rams (H)
					["OnUpdate"] = BREWFEST_RIDING_RAMS_ONUPDATE,
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(33977, {	-- Swift Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = { { "g", 1000000 } },	-- 100g
						}),
						i(33976, {	-- Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
							["cost"] = { { "g", 100000 } },	-- 10g
						}),
					},
				}),
				n(24501, {	-- Drohn's Distillery Apprentice <Drohn's Distillery Brew Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.4, 18.1, DUROTAR },
						-- #else
						{ 44.3, 18.0, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(34018, {	-- Long Stride Brew
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138868, {	-- Mannoroth's Blood Red Ale
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(34019, {	-- Path of Brew
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(46402, {	-- Promise of the Pandaren
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(34017, {	-- Small Step Brew
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(155133, {	-- Etga <Chowdown Organizer>
					["coord"] = { 42.2, 18.5, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(169865, {	-- Brewfest Chowdown Trophy (TOY!)
							["cost"] = { { "i", 169599, 5 } },	-- 5x Chowdown Champion Token
							["timeline"] = { ADDED_8_2_0 },
						}),
					},
				}),
				n(23511, {	-- Gordok Brew Apprentice <Gordok Brew Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 36.6, DUN_MOROGH },
						{ 40.9, 16.8, DUROTAR },
						-- #else
						{ 48.4, 38.4, DUN_MOROGH },
						{ 44.0, 16.6, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["groups"] = {
						i(46403, {	-- Chuganpug's Delight
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(138869, {	-- Gordok Bock
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(33034, {	-- Gordok Grog
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33036, {	-- Mudder's Milk
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33035, {	-- Ogre Mead
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(241305, {	-- Grimlash Thornclaw <Creature Collector>
					["coord"] = { 40.4, 17.1, DUROTAR },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						filter(BATTLE_PETS, {
							i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
								["timeline"] = { ADDED_3_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116756, {	-- Stout Alemental (PET!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(32233, {	-- Wolpertinger's Tankard (PET!)
								["cost"] = BREWFEST_TOKEN_COST(200),
								["timeline"] = { ADDED_2_2_2 },
							}),
						}),
						filter(MISC, {
							i(37750, {	-- Fresh Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
							i(39477, {	-- Fresh Dwarven Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(5),
							}),
							i(37816, {	-- Preserved Brewfest Hops
								["timeline"] = { ADDED_2_4_3 },
								["cost"] = BREWFEST_TOKEN_COST(20),
							}),
						}),
					},
				}),
				n(152948, {	-- Ha'ka Openview <Brew Vendor>
					["coord"] = { 40.7, 16.8, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(169521),	-- Butterhoof Milk Stout
						i(169527),	-- Thunder Stumbler
					},
				}),
				n(240486, {	-- Jixy Wobblebolt <Toy Vendor>
					["coord"] = { 56.3, 36.7, DUN_MOROGH },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						filter(TOYS, {
							i(209052, {	-- Brew Barrel (TOY!)
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(245946, {	-- Brewer's Balloon (TOY!)
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(116758, {	-- Brewfest Banner (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(71137, {	-- Brewfest Keg Pony (TOY!)
								["timeline"] = { ADDED_4_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33927, {	-- Brewfest Pony Keg (TOY!)
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
								["timeline"] = { ADDED_8_1_5 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(90427, {	-- Pandaren Brewpack (TOY!)
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116757, {	-- Steamworks Sausage Grill (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
					},
				}),
				n(153008, {	-- Kaara <Warpath Ales Vendor>
					["coord"] = { 40.2, 17.5, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(169468),	-- Ancestral Ale
						i(169467),	-- Doomlager
						i(169466),	-- Everbloom IPA
						i(169469),	-- Mag'helada
					},
				}),
				n(23481, {	-- Keiran Donoghue <Sausage Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.33, 37.17, DUN_MOROGH },
						-- #else
						{ 48.9, 38.1, DUN_MOROGH },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(34063, {	-- Dried Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138900, {	-- Gravil Goldbraid's Famous Sausage Hat (TOY!)
							["timeline"] = { ADDED_7_0_3 },
							["cost"] = BREWFEST_TOKEN_COST(100),
						}),
						i(33024, {	-- Pickled Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33023, {	-- Savory Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33025, {	-- Spicy Smoked Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(34064, {	-- Succulent Sausage
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33026, {	-- The Golden Link
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138884, {	-- Throwing Sausage
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(24468, {	-- Pol Amberstill <Ram Racing Apprentice>
					["sourceQuest"] = 11400,	-- Brewfest Riding Rams (A)
					["OnUpdate"] = BREWFEST_RIDING_RAMS_ONUPDATE,
					["timeline"] = { ADDED_2_2_2 },
					["coords"] = {
						-- #if AFTER CATA
						{ 53.6, 38.6, DUN_MOROGH },
						-- #else
						{ 46.4, 40.3, DUN_MOROGH },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(33977, {	-- Swift Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = { { "g", 1000000 } },	-- 100g
						}),
						i(33976, {	-- Brewfest Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1, REMOVED_2_4_3 },
							["cost"] = { { "g", 100000 } },	-- 10g
						}),
					},
				}),
				n(241300, {	-- Spritz Tinkerton <Toy Vendor>
					["coord"] = { 40.3, 17.0, DUROTAR },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						filter(TOYS, {
							i(209052, {	-- Brew Barrel (TOY!)
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(245946, {	-- Brewer's Balloon (TOY!)
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(116758, {	-- Brewfest Banner (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(71137, {	-- Brewfest Keg Pony (TOY!)
								["timeline"] = { ADDED_4_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33927, {	-- Brewfest Pony Keg (TOY!)
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
								["timeline"] = { ADDED_8_1_5 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(90427, {	-- Pandaren Brewpack (TOY!)
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(116757, {	-- Steamworks Sausage Grill (TOY!)
								["timeline"] = { ADDED_6_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
					},
				}),
				n(241196, {	-- Sylvessa Luminweave <Ensemble Vendor>
					["coord"] = { 40.2, 17.1, DUROTAR },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						filter(COSMETIC, {
							-- Brewfest Regalia
							i(33968, {	-- Blue Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33868, {	-- Brewfest Boots
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33863, {	-- Brewfest Dress
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33862, {	-- Brewfest Regalia
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33966, {	-- Brewfest Slippers
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33864, {	-- Brown Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33967, {	-- Green Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33969, {	-- Purple Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							--
							i(245947, {	-- Barrel Helm
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33047, {	-- Belbi's Eyesight Enhancing Romance Goggles
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible TODO: Look into this
								-- #endif
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
								["races"] = ALLIANCE_ONLY,
							}),
							i(169448, {	-- Bottomless Brewfest Stein
								["timeline"] = { ADDED_8_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(10),
							}),
							i(249860, {	-- Brewer's Black Belt
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(241344, {	-- Brewer's Black Beret
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241348, {	-- Brewer's Black Kilt
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241266, {	-- Brewer's Black Shoulder Cape
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(249859, {	-- Brewer's Green Belt
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(241346, {	-- Brewer's Green Beret
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241351, {	-- Brewer's Green Kilt
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241342, {	-- Brewer's Green Shoulder Cape
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(248322, {	-- Dark Iron's Ceremonial Belt
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(248323, {	-- Dark Iron's Ceremonial Boots
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(248321, {	-- Dark Iron's Ceremonial Chestplate
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248326, {	-- Dark Iron's Ceremonial Cloak
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(248319, {	-- Dark Iron's Ceremonial Crown
								["cost"] = BREWFEST_TOKEN_COST(250),
							}),
							i(248325, {	-- Dark Iron's Ceremonial Gauntlets
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248324, {	-- Dark Iron's Ceremonial Legguards
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248394, {	-- Dark Iron's Crystal Mantle
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(248320, {	-- Dark Iron's Draping Mantle
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(169461, {	-- Garland of Grain
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(227795, {	-- Homebrewer's Sampling Mantle
								["timeline"] = { ADDED_11_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(209044, {	-- Orange Brewfest Bulwark
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(138730, {	-- Synthebrew Goggles XL
								["timeline"] = { ADDED_7_0_3 },
								["cost"] = BREWFEST_TOKEN_COST(200),
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- TODO: Look into this
								-- #endif
							}),
							i(168915, {	-- Tabard of Brew
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						filter(MISC, {
							i(90426, {	-- Brewhelm
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
						}),
					},
				}),
				n(23533, {	-- T'chali's Voodoo Brewery Apprentice <Voodoo Brew Vendor>
					["coord"] = { 40.3, 16.9, DUROTAR },
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(34021, {	-- Brewdoo Magic
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(46401, {	-- Crimson Stripe
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(34020, {	-- Jungle River Water
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(138870, {	-- Spirit Spirits
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(34022, {	-- Stout Shrunken Head
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(240534, {	-- Thalira Shadowlace <Ensemble Vendor>
					["coord"] = { 56.3, 36.4, DUN_MOROGH },
					["timeline"] = { ADDED_11_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						filter(COSMETIC, {
							-- Brewfest Regalia
							i(33968, {	-- Blue Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33868, {	-- Brewfest Boots
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33863, {	-- Brewfest Dress
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33862, {	-- Brewfest Regalia
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33966, {	-- Brewfest Slippers
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(33864, {	-- Brown Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33967, {	-- Green Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(33969, {	-- Purple Brewfest Hat
								["timeline"] = { ADDED_2_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							--
							i(245947, {	-- Barrel Helm
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(33047, {	-- Belbi's Eyesight Enhancing Romance Goggles
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible TODO: Look into this
								-- #endif
								["timeline"] = { ADDED_2_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(100),
								["races"] = ALLIANCE_ONLY,
							}),
							i(169448, {	-- Bottomless Brewfest Stein
								["timeline"] = { ADDED_8_0_1 },
								["cost"] = BREWFEST_TOKEN_COST(10),
							}),
							i(249860, {	-- Brewer's Black Belt
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(241344, {	-- Brewer's Black Beret
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241348, {	-- Brewer's Black Kilt
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241266, {	-- Brewer's Black Shoulder Cape
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(249859, {	-- Brewer's Green Belt
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(241346, {	-- Brewer's Green Beret
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241351, {	-- Brewer's Green Kilt
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(241342, {	-- Brewer's Green Shoulder Cape
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(248322, {	-- Dark Iron's Ceremonial Belt
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(248323, {	-- Dark Iron's Ceremonial Boots
								["cost"] = BREWFEST_TOKEN_COST(100),
							}),
							i(248321, {	-- Dark Iron's Ceremonial Chestplate
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248326, {	-- Dark Iron's Ceremonial Cloak
								["cost"] = BREWFEST_TOKEN_COST(50),
							}),
							i(248319, {	-- Dark Iron's Ceremonial Crown
								["cost"] = BREWFEST_TOKEN_COST(250),
							}),
							i(248325, {	-- Dark Iron's Ceremonial Gauntlets
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248324, {	-- Dark Iron's Ceremonial Legguards
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(248394, {	-- Dark Iron's Crystal Mantle
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(248320, {	-- Dark Iron's Draping Mantle
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(169461, {	-- Garland of Grain
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(150),
							}),
							i(227795, {	-- Homebrewer's Sampling Mantle
								["timeline"] = { ADDED_11_0_2 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(209044, {	-- Orange Brewfest Bulwark
								["timeline"] = { ADDED_10_1_7 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
							i(138730, {	-- Synthebrew Goggles XL
								["timeline"] = { ADDED_7_0_3 },
								["cost"] = BREWFEST_TOKEN_COST(200),
								-- #if BEFORE 10.0.5
								["collectible"] = false,	-- TODO: Look into this
								-- #endif
							}),
							i(168915, {	-- Tabard of Brew
								["timeline"] = { ADDED_8_2_0 },
								["cost"] = BREWFEST_TOKEN_COST(200),
							}),
						}),
						filter(MISC, {
							i(90426, {	-- Brewhelm
								["timeline"] = { ADDED_5_0_4 },
								["cost"] = BREWFEST_TOKEN_COST(2),
							}),
						}),
					},
				}),
				n(23510, {	-- Thunderbrew Apprentice <Thunderbrew Brew Vendor>
					["coord"] = { 56.6, 37.0, DUN_MOROGH },
					["timeline"] = { ADDED_2_2_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138871, {	-- Storming Saison
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(33031, {	-- Thunder 45
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(46399, {	-- Thunder's Plunder
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(33032, {	-- Thunderbrew Ale
							["timeline"] = { ADDED_2_2_2 },
						}),
						i(33033, {	-- Thunderbrew Stout
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(23603, {	-- Uta Roughdough <Bread Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 17.8, DUROTAR },
						-- #else
						{ 44.8, 17.5, DUROTAR },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(33043, {	-- The Essential Brewfest Pretzel
							["timeline"] = { ADDED_2_2_2 },
						}),
					},
				}),
				n(152775, {	-- Vinter Mollyleux <Nightwine Vendor>
					["coord"] = { 40.3, 17.9, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(169462),	-- Boxed Nightwine
						i(169463),	-- Nightwine Cooler
						i(169464),	-- Sparkling Suramar Spritz
					},
				}),
				n(152849, {	-- Vinter Tysiel <Voidwine Vendor>
					["coord"] = { 55.1, 37.5, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(168607),	-- Bottle of Voidwine
					},
				}),
				n(152941, {	-- Verra Fireblood <Brew Vendor>
					["coord"] = { 56.2, 37.8, DUN_MOROGH },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(169439),	-- Dark Iron Ale
						i(169436),	-- Fireblood Stout
						i(170202),	-- Shwayderbrau
					},
				}),
				n(152780, {	-- Zenda <Spirit Vendor>
					["coord"] = { 40.7, 16.8, DUROTAR },
					["timeline"] = { ADDED_8_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(169460),	-- Really Really Really Old Fashioned
						i(169459),	-- Saurid Sipper
						i(169458),	-- Vol'dunshine
					},
				}),
			},
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		applyevent(EVENTS.BREWFEST, n(BREWFEST_HEADER, {
			-- This is replaced with 91894 since 11.2.0
			-- #IF AFTER 11.2.0
			q(77775, {["name"]="Has rolled for Coren Special Loot (Daily Accountwide)(DF Version)", ["isDaily"]=true}),
			-- #endif
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
		applyevent(EVENTS.BREWFEST, n(BREWFEST_HEADER, {
			q(90118),	-- Triggers when you kill Keggor the Fermented during Brewfest Banquet, 1st kill of the day
			q(91959),	-- (Sometimes) Triggers along with 90118 when you kill Keggor the Fermented during Brewfest Banquet, 1nd kill of the day
			q(91960),	-- Triggers when you kill Keggor the Fermented during Brewfest Banquet, 2nd kill of the day
		})),
	})),
});
-- #endif
