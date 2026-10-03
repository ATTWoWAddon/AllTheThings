--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- Note: This is up here to prevent the unobtainable flag from getting put on the following items:
local HEAVY_LEATHER_BALL = i(18662);
local DENSE_SHORTBOW = i(11305);
local DARING_DIRK = i(12248);
local BIG_STICK = i(12251);
local SLYVAN_SHORTBOW = i(11308);
local STURDY_RECURVE = i(11306);
local FINE_SHORTBOW = i(11303);
local TIER_ONE_MAX_REPUTATION = { 909, NEUTRAL + 500 };	-- Darkmoon Faire, must be less than 500 over Neutral
local TIER_TWO_MAX_REPUTATION = { 909, NEUTRAL + 1050 };	-- Darkmoon Faire, must be less than 1050 over Neutral
local TIER_THREE_MAX_REPUTATION = { 909, NEUTRAL + 1700 };	-- Darkmoon Faire, must be less than 1700 over Neutral
local TIER_FOUR_MAX_REPUTATION = { 909, NEUTRAL + 2500 };	-- Darkmoon Faire, must be less than 2500 over Neutral
local TIER_FIVE_MAX_REPUTATION = { 909, FRIENDLY + 2001 };	-- Darkmoon Faire, must be less than 2001 over Friendly
local TATTERED_DARKMOON_PRIZE_TICKET = i(19182, {	-- Tattered Darkmoon Faire Prize Ticket
	["pb"] = IGNORED_VALUE,
});

-- This is what every online guide ever says, but they're incorrect.
-- The "More" quests appear to be infinitely repeatable, with 0 reputation gains.
-- local TIER_FIVE_MAX_REPUTATION = { 909, HONORED - 1 };	-- Darkmoon Faire, must be less than Honored

local OnTooltipForDarkmoonFaire = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		local repPerTierTurnIn = 100;
		local tierOneMaxRep = ]] .. TIER_ONE_MAX_REPUTATION[2] .. [[;
		if reputation < tierOneMaxRep then
			addRepInfo(tooltipInfo, reputation, "Complete Tier 1 Quests", repPerTierTurnIn, tierOneMaxRep);
		else
			local tierTwoMaxRep = ]] .. TIER_TWO_MAX_REPUTATION[2] .. [[;
			if reputation < tierTwoMaxRep then
				addRepInfo(tooltipInfo, reputation, "Complete Tier 2 Quests", repPerTierTurnIn, tierTwoMaxRep);
			else
				local tierThreeMaxRep = ]] .. TIER_THREE_MAX_REPUTATION[2] .. [[;
				if reputation < tierThreeMaxRep then
					addRepInfo(tooltipInfo, reputation, "Complete Tier 3 Quests", repPerTierTurnIn, tierThreeMaxRep);
				else
					local tierFourMaxRep = ]] .. TIER_FOUR_MAX_REPUTATION[2] .. [[;
					if reputation < tierFourMaxRep then
						addRepInfo(tooltipInfo, reputation, "Complete Tier 4 Quests", repPerTierTurnIn, tierFourMaxRep);
					else
						local tierFiveMaxRep = ]] .. TIER_FIVE_MAX_REPUTATION[2] .. [[;
						if reputation < tierFiveMaxRep then
							addRepInfo(tooltipInfo, reputation, "Complete Tier 5 Quests", repPerTierTurnIn, tierFiveMaxRep);
						end
					end
				end
			end
		end
		local repPerDeckTurnIn = 150;
		addRepInfo(tooltipInfo, reputation, "Turn in Decks.", repPerDeckTurnIn, 42000);
	end
end]];

root(ROOTS.Holidays, applyevent(EVENTS.DARKMOON_FAIRE, n(DARKMOON_FAIRE_HEADER, {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["maps"] = {
		MAP.ELWYNN_FOREST,
		MAP.MULGORE,
	},
	["groups"] = {
		n(FACTIONS, {
			faction(FACTION_DARKMOON_FAIRE, {	-- Darkmoon Faire
				["icon"] = [[~_.asset("Event_dmf")]],
				["OnTooltip"] = OnTooltipForDarkmoonFaire,
			}),
		}),
		n(QUESTS, {
			q(7930, {	-- 5 Tickets - Darkmoon Flower
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 5 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["lvl"] = 6,
				["groups"] = {
					i(19295),	-- Darkmoon Flower
				},
			}),
			q(7931, {	-- 5 Tickets - Minor Darkmoon Prize
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 5 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["lvl"] = 15,
				["groups"] = {
					i(19298, {	-- Minor Darkmoon Prize
						["description"] = "Contains a level 15-25 (usually uncommon quality) item.",
					}),
				},
			}),
			q(7935, {	-- 10 Tickets - Last Month's Mutton
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 10 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19292),	-- Last Month's Mutton
				},
			}),
			q(7932, {	-- 12 Tickets - Lesser Darkmoon Prize
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 12 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19297, {	-- Lesser Darkmoon Prize
						["description"] = "Contains a level 25-40 (usually uncommon quality) item.",
					}),
				},
			}),
			q(7933, {	-- 40 Tickets - Greater Darkmoon Prize
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 40 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19296, {	-- Greater Darkmoon Prize
						["description"] = "Contains a level 40-55 (usually uncommon quality) item.",
					}),
				},
			}),
			q(9249, {	-- 40 Tickets - Schematic: Steam Tonk Controller
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["timeline"] = { CREATED_1_10_0, ADDED_2_0_3 },	-- This was not in WoW Classic.
				["cost"] = { { "i", 19182, 40 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(22729),	-- Schematic: Steam Tonk Controller (RECIPE!)
				},
			}),
			q(7934, {	-- 50 Tickets - Darkmoon Storage Box
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 50 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19291),	-- Darkmoon Storage Box
				},
			}),
			q(7936, {	-- 50 Tickets - Last Year's Mutton
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 50 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19293),	-- Last Year's Mutton
				},
			}),
			q(7981, {	-- 1200 Tickets - Amulet of the Darkmoon
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 1200 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19491),	-- Amulet of the Darkmoon
				},
			}),
			q(7940, {	-- 1200 Tickets - Orb of the Darkmoon
				["qg"] = 14828,	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MAP.MULGORE },
					{ 41.6, 68.8, MAP.ELWYNN_FOREST },
				},
				["cost"] = { { "i", 19182, 1200 } },	-- Tattered Darkmoon Faire Prize Ticket
				["repeatable"] = true,
				["groups"] = {
					i(19426),	-- Orb of the Darkmoon
				},
			}),
			q(7885, {	-- Armor Kits [Tier 5]
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
				["cost"] = { { "i", 15564, 8 } },	-- Rugged Armor Kit
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7892, {	-- Big Black Mace [Tier 4]
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
				["cost"] = { { "i", 7945, 1 } },	-- Big Black Mace
				["lvl"] = 30,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7881, {	-- Carnival Boots [Tier 1]
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_ONE_MAX_REPUTATION,
				["cost"] = { { "i", 2309, 3 } },	-- Embossed Leather Boots
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7882, {	-- Carnival Jerkins [Tier 2]
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_TWO_MAX_REPUTATION,
				["cost"] = { { "i", 2314, 3 } },	-- Toughened Leather Armor
				["lvl"] = 10,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7889, {	-- Coarse Weightstone [Tier 1]
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["maxReputation"] = TIER_ONE_MAX_REPUTATION,
				["cost"] = { { "i", 3240, 10 } },	-- Coarse Weightstone
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7894, {	-- Copper Modulator [Tier 1]
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.7, 70.7, MAP.ELWYNN_FOREST },
					{ 37.1, 37.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_ONE_MAX_REPUTATION,
				["cost"] = { { "i", 4363, 5 } },	-- Copper Modulator
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7884, {	-- Crocolisk Boy and the Bearded Murloc [Tier 4]
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
				["cost"] = { { "i", 8185, 1 } },	-- Turtle Scale Leggings
				["lvl"] = 30,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7903, {	-- Evil Bat Eyes [Tier 5]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
				["cost"] = { { "i", 11404, 10 } },	-- Evil Bat Eye
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(8222, {	-- Glowing Scorpid Blood [Tier 5]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
				["cost"] = { { "i", 19933, 10 } },	-- Glowing Scorpid Blood
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7896, {	-- Green Fireworks [Tier 3]
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.7, 70.7, MAP.ELWYNN_FOREST },
					{ 37.1, 37.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_THREE_MAX_REPUTATION,
				["cost"] = { { "i", 9313, 36 } },	-- Green Firework
				["lvl"] = 20,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7891, {	-- Green Iron Bracers [Tier 3]
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["maxReputation"] = TIER_THREE_MAX_REPUTATION,
				["cost"] = { { "i", 3835, 3 } },	-- Green Iron Bracers
				["lvl"] = 20,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7890, {	-- Heavy Grinding Stone [Tier 2]
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["maxReputation"] = TIER_TWO_MAX_REPUTATION,
				["cost"] = { { "i", 3486, 7 } },	-- Heavy Grinding Stone
				["lvl"] = 10,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7897, {	-- Mechanical Repair Kits [Tier 4]
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.7, 70.7, MAP.ELWYNN_FOREST },
					{ 37.1, 37.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
				["cost"] = { { "i", 11590, 6 } },	-- Mechanical Repair Kit
				["lvl"] = 30,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7941, {	-- More Armor Kits [Tier 5] (Not Really)
				["sourceQuest"] = 7885,	-- Armor Kits
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["cost"] = { { "i", 15564, 8 } },	-- Rugged Armor Kit
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7943, {	-- More Bat Eyes [Tier 5] (Not Really)
				["sourceQuest"] = 7903,	-- Evil Bat Eyes
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["cost"] = { { "i", 11404, 10 } },	-- Evil Bat Eye
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7939, {	-- More Dense Grinding Stones [Tier 5] (Not Really)
				["sourceQuest"] = 7893,	-- Rituals of Strength
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["cost"] = { { "i", 12644, 8 } },	-- Dense Grinding Stone
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(8223, {	-- More Glowing Scorpid Blood [Tier 5] (Not Really)
				["sourceQuest"] = 8222,	-- Glowing Scorpid Blood
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["cost"] = { { "i", 19933, 10 } },	-- Glowing Scorpid Blood
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7942, {	-- More Thorium Widgets [Tier 5] (Not Really)
				["sourceQuest"] = 7898,	-- Thorium Widget
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.7, 70.7, MAP.ELWYNN_FOREST },
					{ 37.1, 37.2, MAP.MULGORE },
				},
				["cost"] = { { "i", 15994, 6 } },	-- Thorium Widget
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7893, {	-- Rituals of Strength [Tier 5]
				["qg"] = 14832,	-- Kerri Hicks <The Strongest Woman Alive!>
				["coords"] = {
					{ 40.5, 69.9, MAP.ELWYNN_FOREST },
					{ 37.8, 39.8, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
				["cost"] = { { "i", 12644, 8 } },	-- Dense Grinding Stone
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7899, {	-- Small Furry Paws [Tier 1]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_ONE_MAX_REPUTATION,
				["cost"] = { { "i", 5134, 5 } },	-- Small Furry Paw
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7901, {	-- Soft Bushy Tails [Tier 3]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_THREE_MAX_REPUTATION,
				["cost"] = { { "i", 4582, 5 } },	-- Soft Bushy Tail
				["lvl"] = 20,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7946, {	-- Spawn of Jubjub
				["description"] = "You need to throw down a Dark Iron Ale mug near Morja in Darkmoon Faire, and wait for the jubling to come hopping to it. This might take a while. Then she'll offer the quest 'Spawn of Jubjub', which requires another mug of Dark Iron Ale. This can only be done once per character.",
				["qg"] = 14871,	-- Morja
				["coords"] = {
					{ 43.3, 70.3, MAP.ELWYNN_FOREST },
					{ 35.9, 35.3, MAP.MULGORE },
				},
				["cost"] = { { "i", 11325, 2 } },	-- Dark Iron Ale Mug
				["isMonthly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(19462, {	-- Unhatched Jubling Egg
						i(19450),	-- Jubling (PET!)
					}),
				},
			}),
			q(7905, {	-- The Darkmoon Faire [A]
				["qg"] = 14842,	-- Melnan Darkstone <Darkmoon Faire Barker>
				["qi"] = 19338,	-- Free Ticket Voucher
				["coord"] = { 29.2, 68.4, MAP.IRONFORGE },
				["lvl"] = 6,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7926, {	-- The Darkmoon Faire [H]
				["qg"] = 14843,	-- Kruban Darkblade <Darkmoon Faire Barker>
				["qi"] = 19338,	-- Free Ticket Voucher
				["coord"] = { 52.2, 66.0, MAP.ORGRIMMAR },
				["lvl"] = 6,
				["races"] = HORDE_ONLY,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7883, {	-- The World's Largest Gnome! [Tier 3]
				["qg"] = 14833,	-- Chronos <He Who Never Forgets!>
				["coords"] = {
					{ 43.5, 71.1, MAP.ELWYNN_FOREST },
					{ 36.2, 35.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_THREE_MAX_REPUTATION,
				["cost"] = { { "i", 5739, 3 } },	-- Barbaric Harness
				["lvl"] = 20,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7898, {	-- Thorium Widgets [Tier 5]
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.7, 70.7, MAP.ELWYNN_FOREST },
					{ 37.1, 37.2, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
				["cost"] = { { "i", 15994, 6 } },	-- Thorium Widget
				["lvl"] = 40,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7900, {	-- Torn Bear Pelts [Tier 2]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_TWO_MAX_REPUTATION,
				["cost"] = { { "i", 11407, 5 } },	-- Torn Bear Pelt
				["lvl"] = 10,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7902, {	-- Vibrant Plumes [Tier 4]
				["qg"] = 14829,	-- Yebb Neblegear
				["coords"] = {
					{ 40.2, 69.7, MAP.ELWYNN_FOREST },
					{ 37.5, 39.6, MAP.MULGORE },
				},
				["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
				["cost"] = { { "i", 5117, 5 } },	-- Vibrant Plume
				["lvl"] = 30,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7895, {	-- Whirring Bronze Gizmo [Tier 2]
				["qg"] = 14841,	-- Rinling
				["coords"] = {
					{ 41.6, 70.6, MAP.ELWYNN_FOREST },
					{ 37.0, 37.4, MAP.MULGORE },
				},
				["maxReputation"] = TIER_TWO_MAX_REPUTATION,
				["cost"] = { { "i", 4375, 7 } },	-- Whirring Bronze Gizmo
				["lvl"] = 10,
				["repeatable"] = true,
				["groups"] = {
					TATTERED_DARKMOON_PRIZE_TICKET,
				},
			}),
			q(7938, {	-- Your Fortune Awaits You... [Deadmines]
				["providers"] = {
					{ "i", 19424 },	-- Sayge's Fortune #24
					{ "o", 180024 },	-- Mysterious Deadmines Chest
				},
				["maps"] = { MAP.DEADMINES },
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(19425),	-- Mysterious Lockbox
				},
			}),
			q(7937, {	-- Your Fortune Awaits You... [Elwynn Forest]
				["providers"] = {
					{ "i", 19423 },	-- Sayge's Fortune #23
					{ "o", 180025 },	-- Mysterious Eastvale Haystack
				},
				["coord"] = { 84.7, 64.4, MAP.ELWYNN_FOREST },
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(19425),	-- Mysterious Lockbox
				},
			}),
			q(7945, {	-- Your Fortune Awaits You... [Mulgore]
				["providers"] = {
					{ "i",  19452 },	-- Sayge's Fortune #27
					{ "o", 180056 },	-- Mysterious Tree Stump
				},
				["coord"] = { 35.0, 61.5, MAP.MULGORE },
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(19425),	-- Mysterious Lockbox
				},
			}),
			q(7944, {	-- Your Fortune Awaits You... [Wailing Caverns]
				["providers"] = {
					{ "i",  19443 },	-- Sayge's Fortune #25
					{ "o", 180055 },	-- Mysterious Wailing Caverns Chest
				},
				["maps"] = { MAP.WAILING_CAVERNS },
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(19425),	-- Mysterious Lockbox
				},
			}),
		}),
		n(REWARDS, {
			i(19422, {	-- Darkmoon Faire Fortune
				["description"] = "This is a reward from completing the Sayge's Fortune. The answers you select to get your buff do not affect the contents of this container.\n\nSayge offers a buff if you answer his questions correctly.\n\n1:1 +10% Damage\n1:2  +25 Magical Resistance\n1:3 +10% Armor\n2:1 +10% Spirit\n2:2 +10% Int\n2:3  +25 Magical Resistance\n3:1 +10% Stamina\n3:2 +10% Strength\n3:3 +10% Agility\n4:1 +10% Int\n4:2 +10% Spirit\n4:3 +10% Armor",
				["cr"] = 14822,	-- Sayge
				["coords"] = {
					{ 36.8, 38.2, MAP.MULGORE },
					{ 42.0, 69.0, MAP.ELWYNN_FOREST },
				},
				["repeatable"] = true,
				["groups"] = {
					i(19229),	-- Sayge's Fortune #1
					i(19256),	-- Sayge's Fortune #2
					i(19238),	-- Sayge's Fortune #3
					i(19239),	-- Sayge's Fortune #4
					i(19240),	-- Sayge's Fortune #5
					i(19241),	-- Sayge's Fortune #6
					i(19242),	-- Sayge's Fortune #7
					i(19243),	-- Sayge's Fortune #8
					i(19244),	-- Sayge's Fortune #9
					i(19245),	-- Sayge's Fortune #10
					i(19246),	-- Sayge's Fortune #11
					i(19247),	-- Sayge's Fortune #12
					i(19248),	-- Sayge's Fortune #13
					i(19249),	-- Sayge's Fortune #14
					i(19250),	-- Sayge's Fortune #15
					i(19251),	-- Sayge's Fortune #16
					i(19253),	-- Sayge's Fortune #17
					i(19252),	-- Sayge's Fortune #18
					i(19237),	-- Sayge's Fortune #19
					i(19266),	-- Sayge's Fortune #20
					i(19254),	-- Sayge's Fortune #21
					i(19255),	-- Sayge's Fortune #22
					i(19423),	-- Sayge's Fortune #23
					i(19424),	-- Sayge's Fortune #24
					i(19443),	-- Sayge's Fortune #25
					i(19451),	-- Sayge's Fortune #26
					i(19452),	-- Sayge's Fortune #27
					i(19453),	-- Sayge's Fortune #28
					i(19454),	-- Sayge's Fortune #29
				},
			}),
		}),
		n(VENDORS, {
			n(14860, {	-- Flik
				["coords"] = {
					{ 36.4, 36.0, MAP.MULGORE },
					{ 37.6, 39.6, MAP.MULGORE },
					{ 42.8, 66.6, MAP.ELWYNN_FOREST },
					{ 41.4, 69.8, MAP.ELWYNN_FOREST },
					{ 43.6, 71.0, MAP.ELWYNN_FOREST },
				},
				["groups"] = {
					HEAVY_LEATHER_BALL,
					i(11026),	-- Tree Frog (PET!)
					i(11027, {	-- Wood Frog (PET!)
						["isLimited"] = true,
					}),
				},
			}),
			n(14846, {	-- Lhara <Darkmoon Faire Exotic Goods>
				["coords"] = {
					{ 36.4, 38.0, MAP.MULGORE },
					{ 41.2, 69.8, MAP.ELWYNN_FOREST },
				},
				["groups"] = {
					BIG_STICK,
					DARING_DIRK,
					i(19303),	-- Darkmoon Necklace
					i(19302),	-- Darkmoon Ring
					DENSE_SHORTBOW,
					FINE_SHORTBOW,
					STURDY_RECURVE,
					SLYVAN_SHORTBOW,
				},
			}),
			n(14845, {	-- Stamp Thunderhorn <Food Vendor>
				["coords"] = {
					{ 36.6, 38.2, MAP.MULGORE },
					{ 42.0, 70.0, MAP.ELWYNN_FOREST },
				},
				["groups"] = {
					i(19306),	-- Crunchy Frog
					i(19223),	-- Darkmoon Dog
					i(19225),	-- Deep Fried Candybar
					i(19305),	-- Pickled Kodo Foot
					i(19224),	-- Red Hot Wings
					i(19304),	-- Spiced Beef Jerky
				},
			}),
			n(14844, {	-- Sylannia <Drink Vendor>
				["coords"] = {
					{ 36.6, 38.2, MAP.MULGORE },
					{ 42.0, 70.0, MAP.ELWYNN_FOREST },
				},
				["groups"] = {
					i(19300),	-- Bottled Winterspring Water
					i(19222),	-- Cheap Beer
					i(19221),	-- Darkmoon Special Reserve
					i(19299),	-- Fizzy Faire Drink
				},
			}),
		}),
		category(3, {	-- Tarot Decks
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19228, {	-- Beasts Deck
				["cost"] = {
					{ "i", 19227, 1 },	-- Ace of Beasts
					{ "i", 19230, 1 },	-- Two of Beasts
					{ "i", 19231, 1 },	-- Three of Beasts
					{ "i", 19232, 1 },	-- Four of Beasts
					{ "i", 19233, 1 },	-- Five of Beasts
					{ "i", 19234, 1 },	-- Six of Beasts
					{ "i", 19235, 1 },	-- Seven of Beasts
					{ "i", 19236, 1 },	-- Eight of Beasts
				},
			})),
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19267, {	-- Elementals Deck
				["cost"] = {
					{ "i", 19268, 1 },	-- Ace of Elementals
					{ "i", 19269, 1 },	-- Two of Elementals
					{ "i", 19270, 1 },	-- Three of Elementals
					{ "i", 19271, 1 },	-- Four of Elementals
					{ "i", 19272, 1 },	-- Five of Elementals
					{ "i", 19273, 1 },	-- Six of Elementals
					{ "i", 19274, 1 },	-- Seven of Elementals
					{ "i", 19275, 1 },	-- Eight of Elementals
				},
			})),
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19277, {	-- Portals Deck
				["cost"] = {
					{ "i", 19276, 1 },	-- Ace of Portals
					{ "i", 19278, 1 },	-- Two of Portals
					{ "i", 19279, 1 },	-- Three of Portals
					{ "i", 19280, 1 },	-- Four of Portals
					{ "i", 19281, 1 },	-- Five of Portals
					{ "i", 19282, 1 },	-- Six of Portals
					{ "i", 19283, 1 },	-- Seven of Portals
					{ "i", 19284, 1 },	-- Eight of Portals
				},
			})),
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19257, {	-- Warlords Deck
				["cost"] = {
					{ "i", 19258, 1 },	-- Ace of Warlords
					{ "i", 19259, 1 },	-- Two of Warlords
					{ "i", 19260, 1 },	-- Three of Warlords
					{ "i", 19261, 1 },	-- Four of Warlords
					{ "i", 19262, 1 },	-- Five of Warlords
					{ "i", 19263, 1 },	-- Six of Warlords
					{ "i", 19264, 1 },	-- Seven of Warlords
					{ "i", 19265, 1 },	-- Eight of Warlords
				},
			})),
		}),
	},
})));

-- Wipe out the unobtainable states.
HEAVY_LEATHER_BALL.u = nil;
DENSE_SHORTBOW.u = nil;
DARING_DIRK.u = nil;
BIG_STICK.u = nil;
SLYVAN_SHORTBOW.u = nil;
STURDY_RECURVE.u = nil;
FINE_SHORTBOW.u = nil;
