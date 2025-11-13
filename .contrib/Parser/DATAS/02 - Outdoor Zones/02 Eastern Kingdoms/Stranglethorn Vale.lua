---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
local OnUpdateForBloodsail = [[function(t)
	if t.collectible then
		if not t.dressing then
			local f = _.SearchForField("questID", 9272);
			if f and #f > 0 then t.dressing = f[1]; end
		end
		if not t.admiral then
			local f = _.SearchForField("questID", 4621);
			if f and #f > 0 then t.admiral = f[1]; end
		end
-- #if BEFORE WRATH
		local isHuman = _.RaceIndex == 1;
		local repForDressing = isHuman and 11 or 10;
		if t.dressing.collected then repForDressing = 0; end
-- #if AFTER TBC
		local repForAdmiral = isHuman and 550 or 500;
-- #else
		local repForAdmiral = isHuman and 220 or 200;
-- #endif
		if t.admiral.collected then repForAdmiral = 0; end
		t.minReputation[2] = math.max(t.reputation, 41999) + repForDressing + repForAdmiral;
-- #endif
	end
end]];
local OnTooltipForBloodsail = [[function(t, tooltipInfo)
	if not t.collectible then return; end
	local reputation = t.reputation;
	if reputation < 41999 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		tinsert(tooltipInfo, { left = "Reminder: Do all of the Goblin quests prior to starting this grind.", r = 1, g = 0.5, b = 0.5, wrap = true });
		tinsert(tooltipInfo, { left = "Do NOT turn in the Bloodsail quests if you intend to get to Exalted!", r = 1, g = 0.5, b = 0.5, wrap = true });
		if reputation < 20999 then
			addRepInfo(tooltipInfo, reputation, "Kill Booty Bay Bruisers.", 25, 20999, ]] .. HATED .. [[);
		else
			local repPerKill, remaining = addRepInfo(tooltipInfo, reputation, "Kill Jazzrik.", 5, 41999, 21000);
			tinsert(tooltipInfo, {
				left = " 5.33 - 8.5 Minute respawn",
				right = math.floor((remaining * 5.33) / 60.0) .. " - " .. math.ceil((remaining * 8.5) / 60.0) .. " Hours to go!",
				r = 1, g = 1, b = 1
			});
			if not t.eventful then
				t.eventful = true;
				if DBM then
					local f = CreateFrame("FRAME", nil, UIParent);
					f:SetScript("OnEvent", function(self, e, ...)
						(rawget(self, e) or print)(CombatLogGetCurrentEventInfo());
					end);
					f.COMBAT_LOG_EVENT_UNFILTERED = function(ts, subevent, ...)
						if subevent == "UNIT_DIED" then
							local guid = select(6, ...);
							if select(6, ("-"):split(guid)) == "9179" then
								DBM:CreatePizzaTimer(320, "Respawn (min)");
								DBM:CreatePizzaTimer(510, "Respawn (max)");
							end
						end
					end
					f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
					f:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
					f:SetSize(1, 1);
					f:Hide();
				end
			end
		end
	else
		if not t.dressing.saved then
			_.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.dressing);
		end
		if not t.admiral.saved then
			_.Modules.FactionData.AddQuestTooltip(tooltipInfo, "Complete %s", t.admiral);
		end
	end
end]];
local OnTooltipForBootyBay = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Kill Pirates in Ratchet*", 2.5, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill Pirates in Tanaris", 2.5, 42000);
		tinsert(tooltipInfo, { left = " * PROTIP: Ratchet is faster.", r = 1, g = 0.5, b = 0.5 });
	end
end]];
-- #if SEASON_OF_DISCOVERY
local bloodicon = function(item)	-- Assign an Atal'ai Blood Icon cost to an item.
	applycost(item, { "i", 220636, 1 });
	return item;
end
local ritualicon = function(item)	-- Assign an Atal'ai Ritual Icon cost to an item.
	applycost(item, { "i", 220637, 1 });
	return item;
end

local bloodcoin_c = function(cost, item)	-- Assign a Copper Blood Coin cost to an item.
	applycost(item, { "i", 213168, cost });
	return item;
end
local bloodcoin_s = function(cost, item)	-- Assign a Silver Blood Coin cost to an item.
	applycost(item, { "i", 213169, cost });
	return item;
end
local bloodcoin_g = function(cost, item)	-- Assign a Gold Blood Coin cost to an item.
	applycost(item, { "i", 213170, cost });
	return item;
end

local massacrecoin_c = function(cost, item)	-- Assign a Copper Massacre Coin cost to an item.
	applycost(item, { "i", 221364, cost });
	return item;
end
local massacrecoin_s = function(cost, item)	-- Assign a Silver Massacre Coin cost to an item.
	applycost(item, { "i", 221365, cost });
	return item;
end
local massacrecoin_g = function(cost, item)	-- Assign a Gold Massacre Coin cost to an item.
	applycost(item, { "i", 221366, cost });
	return item;
end

local real = function(cost, item)	-- Assign a Tarnished Undermine Real cost to an item.
	applycost(item, { "i", 226404, cost });
	return item;
end
-- #endif
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(STRANGLETHORN_VALE, {
		["lore"] = "The Stranglethorn Vale is a vast jungle south of Duskwood.\n\nJungle trolls patrol this steaming rainforest. Ancient Gurubashi trolls once ruled the region, and the ruins of their great cities crumble in the jungle's heat and growth. Naga hunt along the coast and vicious animals and plants, including the eponymous strangle-thorns, make travel dangerous. The Arena, a center for gladiatorial games set in a ruined Gurubashi fighting stadium, draws shady characters of all races. The Blackwater Raiders, a vile group of pirates, make their home in Booty Bay, on the Stranglethorn's southern coast.",
		["icon"] = 236844,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(PHASE_ONE, ach(871, {	-- Avast Ye, Admiral!
					title(111, {	-- Bloodsail Admiral <Name>
						["timeline"] = { ADDED_3_0_2 },
					}),
				})),
				ach(781),	-- Explore Stranglethorn Vale
				ach(940),	-- The Green Hills of Stranglethorn
			}),
			pvp(o(179697, {	-- Arena Treasure Chest
				["description"] = "Chest is dropped in arena every 3 hours.\n\nWARNING: FREE-FOR-ALL PVP EVENT\n12AM, 3PM, 6PM, 9PM, 12PM, 3AM, 6AM, 9AM",
				["coords"] = {
					-- #if AFTER CATA
					{ 46.6, 26.1, THE_CAPE_OF_STRANGLETHORN },
					-- #else
					{ 30.5, 47.8, STRANGLETHORN_VALE },
					-- #endif
				},
				["groups"] = {
					ach(389),	-- Gurubashi Arena Master
					i(18706, {	-- Arena Master
						-- #if BEFORE WRATH
						["lore"] = "Keep this in your bank until achievements come out.\n\nProbably not a bad idea to knock this out before all the normies start farming for this.",
						-- #endif
					}),
					i(18711),	-- Arena Bands
					i(18710),	-- Arena Bracers
					i(18712),	-- Arena Vambraces
					i(18709),	-- Arena Wristguards
					i(126948, {	-- Defending Champion
						["description"] = "Once you have the Arena Grand Master achievement, the next time you open the chest on that character you can get the Defending Champion in addition to the other spoils.",
						["timeline"] = { ADDED_6_2_0 },
						["cost"] = { { "i", 19024, 1 } },	-- Arena Grand Master
					}),
					i(122222, {	-- Music Roll: Angelic
						["timeline"] = { ADDED_6_1_0 },
					}),
				},
			})),
			explorationHeader({
				exploration(123),	-- Bal'lal Ruins
				exploration(127),	-- Balia'mah Ruins
				exploration(1739),	-- Bloodsail Compound
				exploration(35),	-- Booty Bay
				exploration(310),	-- Crystalvein Mine
				exploration(117),	-- Grom'gol Base Camp
				exploration(1741),	-- Gurubashi Arena
				exploration(297),	-- Jaguero Isle
				exploration(312),	-- Janeiro's Point
				exploration(125),	-- Kal'ai Ruins
				exploration(101),	-- Kurzen's Compound
				exploration(37),	-- Lake Nazferiti
				exploration(1737),	-- Mistvale Valley
				exploration(129),	-- Mizjah Ruins
				exploration(105),	-- Mosh'Ogg Ogre Mound
				exploration(1738),	-- Nek'mani Wellspring
				exploration(100),	-- Nesingwary's Expedition
				exploration(99),	-- Rebel Camp
				exploration(311),	-- Ruins of Aboraz
				exploration(477),	-- Ruins of Jubuwal
				exploration(102),	-- Ruins of Zul'Kunda
				exploration(103),	-- Ruins of Zul'Mamwe
				exploration(104),	-- The Vile Reef
				exploration(1740),	-- Venture Co. Base Camp
				exploration(43),	-- Wild Shore
				exploration(128),	-- Ziata'jai Ruins
				exploration(19),	-- Zul'Gurub
				exploration(122),	-- Zuuldaia Ruins
			}),
			n(FACTIONS, {
				faction(FACTION_BLOODSAIL_BUCCANEERS, {	-- Bloodsail Buccaneers
					["icon"] = 133694,
					-- #if BEFORE WRATH
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, EXALTED - 1 },	-- Bloodsail Buccaneers, must be 20999 into Revered.
					-- #endif
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForBloodsail,
					["OnUpdate"] = OnUpdateForBloodsail,
					["maps"] = { BADLANDS },
					["crs"] = { 9179 },	-- Jazzrik
					-- #endif
				}),
				faction(FACTION_BOOTY_BAY, {	-- Booty Bay
					["icon"] = 133784,
					["OnTooltip"] = OnTooltipForBootyBay,
					["maps"] = {
						TANARIS,
						THE_BARRENS,
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				pvp(applyclassicphase(SOD_PHASE_TWO, faction(2634, {	-- Blood Moon
					["description"] = "This faction is probably not one that you can gain reputation with.",
					["timeline"] = { CREATED_1_15_1 },
				}))),
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(18, {	-- Booty Bay, Stranglethorn
					["cr"] = 2858,	-- Gringer <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.6, 73.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 26.8, 77.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(19, {	-- Booty Bay, Stranglethorn
					["cr"] = 2859,	-- Gyll <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 74.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.4, 77.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(20, {	-- Grom'gol, Stranglethorn
					["cr"] = 1387,	-- Thysta <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.0, 51.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.6, 29.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(195, {	-- Rebel Camp, Stranglethorn
					["crs"] = {
						-- #if AFTER CATA
						43045,	-- James Stillair <Gryphon Master>
						-- #else
						24366,	-- Nizzle <Gryphon Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 47.8, 11.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.2, 4.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(BLACKSMITHING, {
					n(2836, {	-- Brikk Keencraft <Master Blacksmith>
						["coord"] = { 29.0, 75.4, STRANGLETHORN_VALE },
						-- #if BEFORE 2.1.0
						["groups"] = ARTISAN_BLACKSMITHING,
						-- #endif
					}),
				}),
				prof(ENGINEERING, {
					n(7406, {	-- Oglethorpe Obnoticus <Master Gnome Engineer>
						["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
						["groups"] = ALL_GNOMISH_ENGINEERING,
					}),
				}),
				prof(LEATHERWORKING, {
					n(7871, {	-- Se'Jib <Master Tribal Leatherworker>
						["coord"] = { 36.6, 34.2, STRANGLETHORN_VALE },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_TBC_TRIBAL,
					}),
				}),
			}),
			n(QUESTS, {
				q(610, {	-- "Pretty Boy" Duncan
					["sourceQuest"] = 603,	-- Ansirem's Key
					["qg"] = 2542,	-- Catelyn the Blade
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Catelyn's Blade
							["provider"] = { "i", 4027 },	-- Catelyn's Blade
							["coord"] = { 27.6, 69.6, STRANGLETHORN_VALE },
							["cr"] = 2545,	-- "Pretty Boy" Duncan
						}),
					},
				}),
				q(617, {	-- Akiris by the Bundle (1/2)
					["qg"] = 2494,	-- Privateer Bloads
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Akiris Reed
							["provider"] = { "i", 4029 },	-- Akiris Reed
							["cr"] = 1907,	-- Naga Explorer
						}),
						i(4117, {	-- Scorching Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(623, {	-- Akiris by the Bundle (2/2)
					["sourceQuest"] = 617,	-- Akiris by the Bundle (1/2)
					["providers"] = {
						{ "n", 2494 },	-- Privateer Bloads
						{ "i", 4028 },	-- Bundle of Akiris Reeds
					},
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(3721, {	-- An OOX of Your Own
					["sourceQuests"] = {
						648,	-- Rescue OOX-17/TN! (Tanaris)
						836,	-- Rescue OOX-09/HL! (Hinterlands)
						-- #if AFTER CATA
						25476,	-- Rescue OOX-22/FE! (Feralas)
						-- #else
						2767,	-- Rescue OOX-22/FE! (Feralas)
						-- #endif
					},
					["qg"] = 7406,	-- Oglethorpe Obnoticus
					["coords"] = {
						-- #if AFTER CATA
						{ 43.0, 72.0, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.2, 76.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(30, 30, 10),
					["groups"] = {
						i(10398, {	-- Mechanical Chicken (PET!)
							["timeline"] = { ADDED_1_11_1 },
						}),
					},
				}),
				q(9457, {	-- An Unusual Patron
					["sourceQuest"] = 9436,	-- Bloodscalp Insight
					["qg"] = 17094,	-- Nemeth Hawkeye
					["coords"] = {
						-- #if AFTER CATA
						{ 38.1, 50.0, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32, 28.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Heart of Naias
							["providers"] = {
								{ "i",  23681 },	-- Heart of Naias
								{ "i",  23680 },	-- Gift of Naias
								{ "o", 181636 },	-- Altar of Naias
							},
							["coord"] = { 19.8, 22.6, STRANGLETHORN_VALE },
							["cr"] = 17207,	-- Naias
						}),
						i(61093, {	-- Junglewalker Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61092, {	-- Monnions of Raw Power
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61091, {	-- Blade of Exotic Magic
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131255, {	-- Shouldersguards of Raw Power
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(603, {	-- Ansirem's Key
					["sourceQuest"] = 602,	-- Magical Analysis
					["qg"] = 2543,	-- Archmage Ansirem Runeweaver
					["coord"] = { 18.8, 78.5, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				pvp(q(7838, {	-- Arena Grandmaster
					["sourceQuest"] = 7810,	-- Arena Master
					["qg"] = 14508,	-- Short John Mithril
					["coords"] = {
						-- #if AFTER CATA
						{ 45.0, 25.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 29.6, 47.4, STRANGLETHORN_VALE },
						-- #endif
					},
					["cost"] = { { "i", 18706, 12 } },	-- Arena Master (trinket)
					["repeatable"] = true,
					["groups"] = {
						ach(396, {	-- Arena Grandmaster
							["provider"] = { "i", 19024 },	-- Arena Grand Master
						}),
						i(19024, {	-- Arena Grand Master
							-- #if BEFORE WRATH
							["lore"] = "Keep it in your bank until achievements come out.\n\nProbably not a bad idea to knock this out before all the normies start farming for this.",
							-- #endif
						}),
					},
				})),
				pvp(q(7810, {	-- Arena Master
					["provider"] = { "i", 18706 },	-- Arena Master (trinket)
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 26.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 30.5, 47.8, STRANGLETHORN_VALE },
						-- #endif
					},
				})),
				q(4621, {	-- Avast Ye, Admiral!
					["description"] = "This quest also requires you to be hated or lower with Booty Bay.",
					["sourceQuest"] = 1036,	-- Avast Ye, Scallywag
					["qg"] = 2546,	-- Fleet Master Firallon
					["coords"] = {
						-- #if AFTER CATA
						{ 46.7, 95.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 30.6, 90.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["lvl"] = lvlsquish(55, 55, 10),
					["groups"] = {
						i(12185),	-- Bloodsail Admiral's Hat
					},
				}),
				q(1036, {	-- Avast Ye, Scallywag
					["qg"] = 2545,	-- "Pretty Boy" Duncan
					["coords"] = {
						-- #if AFTER CATA
						{ 44.4, 92.6, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.4, 69.4, STRANGLETHORN_VALE },
						-- #endif
					},
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(55, 55, 10),
				}),
				q(204, {	-- Bad Medicine
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2633, 7 } },	-- Jungle Remedy
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/1 Venom Fern Extract
							["providers"] = {
								{ "i", 2634 },	-- Venom Fern Extract
								{ "o", 263 },	-- Kurzen Supplies
								{ "o", 264 },	-- Kurzen Supplies
							},
							["coord"] = { 44.5, 9.8, STRANGLETHORN_VALE },
						}),
						i(4126, {	-- Guerrilla Cleaver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4140, {	-- Palm Frond Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(208, {	-- Big Game Hunter
					["sourceQuests"] = {
						193,	-- Panther Mastery
						197,	-- Raptor Mastery
						188,	-- Tiger Mastery
					},
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Bangalash
							["provider"] = { "i", 3880 },	-- Head of Bangalash
							["coord"] = { 38.6, 35.6, STRANGLETHORN_VALE },
							["cr"] = 731,	-- King Bangalash
						}),
						i(61127, {	-- Gloves of the Jungle King
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61126, {	-- Mantle of the White Tiger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61125, {	-- Nesingwary's Sash
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61124, {	-- Bangalash's Claw
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131202, {	-- Monnion of the White Tiger
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(17686, {	-- Master Hunter's Bow
							["timeline"] = { ADDED_1_2_0, REMOVED_4_0_3 },
						}),
						i(17687, {	-- Master Hunter's Rifle
							["timeline"] = { ADDED_1_2_0, REMOVED_4_0_3 },
						}),
						i(4110, {	-- Master Hunter's Bow
							["timeline"] = { REMOVED_1_2_0 },
							["collectible"] = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
							-- If anything, it should match the sourceID of the other item by that name. (7170)
							-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
						}),
						i(4111, {	-- Master Hunter's Rifle
							["timeline"] = { REMOVED_1_2_0 },
							["collectible"] = false,	-- CRIEVE NOTE: This item doesn't have a sourceID, it is 100% invalid.
							-- If anything, it should match the sourceID of the other item by that name. (7171)
							-- However, since Classic deals with itemID based tracking, it would not track correctly anyways.
						}),
					},
				}),
				q(584, {	-- Bloodscalp Clan Heads
					["sourceQuest"] = 582,	-- Headhunting
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Gan'zulah's Head
							["provider"] = { "i", 3904 },	-- Gan'zulah's Head
							["coord"] = { 23.8, 8.6, STRANGLETHORN_VALE },
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
						}),
						objective(2, {	-- 0/1 Nezzliok's Head
							["provider"] = { "i", 3905 },	-- Nezzliok's Head
							["coord"] = { 23.6, 9.6, STRANGLETHORN_VALE },
							["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
						}),
					},
				}),
				q(189, {	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Bloodscalp Ear
							["provider"] = { "i", 1519 },	-- Bloodscalp Ear
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						i(4598, {	-- Goblin Fishing Pole
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(9436, {	-- Bloodscalp Insight (H)
					-- #if AFTER CATA
					["sourceQuest"] = 26321,	-- I Think She's Hungry
					-- #endif
					["qg"] = 17094,	-- Nemeth Hawkeye
					["coords"] = {
						-- #if AFTER CATA
						{ 38.1, 50.0, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32, 28.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodscalp Totem
							["provider"] = { "i", 23679 },	-- Bloodscalp Totem
							["coord"] = { 30.8, 19, STRANGLETHORN_VALE },
							["cr"] = 697,	-- Bloodscalp Shaman
						}),
					},
				}),
				q(596, {	-- Bloody Bone Necklaces
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/25 Bloody Bone Necklace
							["provider"] = { "i", 3915 },	-- Bloody Bone Necklace
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
						i(4135, {	-- Bloodbone Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(200, {	-- Bookie Herod
					["sourceQuest"] = 215,	-- Jungle Secrets
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(339, {	-- Chapter I
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2725, 1 },	-- Green Hills of Stranglethorn - Page 1
						{ "i", 2728, 1 },	-- Green Hills of Stranglethorn - Page 4
						{ "i", 2730, 1 },	-- Green Hills of Stranglethorn - Page 6
						{ "i", 2732, 1 },	-- Green Hills of Stranglethorn - Page 8
					},
					["lvl"] = 30,
					["groups"] = {
						i(2756, {	-- Green Hills of Stranglethorn - Chapter I
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(340, {	-- Chapter II
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2734, 1 },	-- Green Hills of Stranglethorn - Page 10
						{ "i", 2735, 1 },	-- Green Hills of Stranglethorn - Page 11
						{ "i", 2738, 1 },	-- Green Hills of Stranglethorn - Page 14
						{ "i", 2740, 1 },	-- Green Hills of Stranglethorn - Page 16
					},
					["lvl"] = 30,
					["groups"] = {
						i(2757, {	-- Green Hills of Stranglethorn - Chapter II
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(341, {	-- Chapter III
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2742, 1 },	-- Green Hills of Stranglethorn - Page 18
						{ "i", 2744, 1 },	-- Green Hills of Stranglethorn - Page 20
						{ "i", 2745, 1 },	-- Green Hills of Stranglethorn - Page 21
						{ "i", 2748, 1 },	-- Green Hills of Stranglethorn - Page 24
					},
					["lvl"] = 30,
					["groups"] = {
						i(2758, {	-- Green Hills of Stranglethorn - Chapter III
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(342, {	-- Chapter IV
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2749, 1 },	-- Green Hills of Stranglethorn - Page 25
						{ "i", 2750, 1 },	-- Green Hills of Stranglethorn - Page 26
						{ "i", 2751, 1 },	-- Green Hills of Stranglethorn - Page 27
					},
					["lvl"] = 30,
					["groups"] = {
						i(2759, {	-- Green Hills of Stranglethorn - Chapter IV
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79236, {	-- Cherry for Your Thoughts?
					["sourceQuest"] = 79235,	-- On The Lam
					["qg"] = 215643,	-- Tokal
					["coord"] = { 27.0, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Cherry Grog
							["provider"] = { "i", 4600 },	-- Cherry Grog
							["cr"] = 2832,	-- Nixxrax Fillamug <Food and Drink>
						}),
					},
				})),
				-- #endif
				q(202, {	-- Colonel Kurzen
					["sourceQuest"] = 574,	-- Special Forces
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/6 Kurzen Elite slain
							["provider"] = { "n", 939 },	-- Kurzen Elite
						}),
						objective(2, {	-- 0/4 Kurzen Subchief slain
							["provider"] = { "n", 978 },	-- Kurzen Subchief
						}),
						objective(3, {	-- 0/1 Kurzen's Head
							["provider"] = { "n", 3615 },	-- Kurzen's Head
							["coord"] = { 49.6, 4.0, STRANGLETHORN_VALE },
							["cr"] = 813,	-- Colonel Kurzen
						}),
						i(4127, {	-- Shrapnel Blaster
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(624, {	-- Cortello's Riddle (1/3)
					["providers"] = {
						{ "i", 4056 },	-- Cortello's Riddle
						{ "o", 2554 },	-- Cortello's Riddle
					},
					["coords"] = {
						{ 29.5, 89.3, STRANGLETHORN_VALE },
						{ 33.6, 88.3, STRANGLETHORN_VALE },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 35,
				}),
				q(625, {	-- Cortello's Riddle (2/3)
					["sourceQuest"] = 624,	-- Cortello's Riddle (1/3)
					["provider"] = { "o", 2553 },	-- A Soggy Scroll
					["coord"] = { 22.8, 48.1, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSTWALLOW_MARSH },
					["lvl"] = 35,
				}),
				q(626, {	-- Cortello's Riddle (3/3)
					["sourceQuest"] = 625,	-- Cortello's Riddle (2/3)
					["provider"] = { "o", 2555 },	-- Musty Scroll
					["coord"] = { 31.1, 66.1, DUSTWALLOW_MARSH },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 35,
					["groups"] = {
						i(11324, {	-- Explorer's Knapsack
							["coord"] = { 80.8, 46.8, THE_HINTERLANDS },
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(613, {	-- Cracking Maury's Foot
					["sourceQuest"] = 609,	-- Voodoo Dues
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Maury's Key
							["provider"] = { "i", 3930 },	-- Maury's Key
							["crs"] = {
								723,	-- Mosh'Ogg Butcher
								680,	-- Mosh'Ogg Lord
								678,	-- Mosh'Ogg Mauler
								679,	-- Mosh'Ogg Shaman
								710,	-- Mosh'Ogg Spellcrafter
								709,	-- Mosh'Ogg Warmonger
							},
						}),
						i(4129, {	-- Collection Plate
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["sourceQuest"] = 1115,	-- The Rumormonger
					["qg"] = 773,	-- Krazek
					["coord"] = { 27, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Speck of Dream Dust
							["provider"] = { "i", 5803 },	-- Speck of Dream Dust
							["crs"] = {
								740,	-- Adolescent Whelp
								741,	-- Dreaming Whelp
								746,	-- Elder Dragonkin
								744,	-- Green Scalebane
								742,	-- Green Wyrmkin
								14445,	-- Lord Captain Wyrmak
								745,	-- Scalebane Captain
							},
						}),
					},
				}),
				q(9272, {	-- Dressing the Part
					["qg"] = 2546,	-- Fleet Master Firallon
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 95.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 30.6, 90.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, NEUTRAL },	-- Bloodsail Buccaneers, Neutral.
					["lvl"] = lvlsquish(49, 49, 10),
					["groups"] = {
						i(22746, {	-- Buccaneer's Uniform
							i(22742),	-- Bloodsail Shirt
							i(22743),	-- Bloodsail Sash
							i(22745),	-- Bloodsail Pants
							i(22744),	-- Bloodsail Boots
						}),
					},
				}),
				q(3625, {	-- Enchanted Azsharite Fel Weaponry
					["sourceQuest"] = 3621,	-- The Formation of Felbane
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
					["groups"] = {
						i(10697, {	-- Enchanted Azsharite Felbane Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10698, {	-- Enchanted Azsharite Felbane Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10696, {	-- Enchanted Azsharite Felbane Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(628, {	-- Excelsior
					["sourceQuest"] = 577,	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/1 Elder Crocolisk Skin
							["provider"] = { "i", 4105 },	-- Elder Crocolisk Skin
							["cr"] = 2635,	-- Elder Saltwater Crocolisk
						}),
						i(4109, {	-- Excelsior Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2765, {	-- Expert Blacksmith!
					["sourceQuests"] = {
						2761,	-- Smelt On, Smelt Off
						2762,	-- The Great Silver Deceiver
						2763,	-- The Art of the Imbue
					},
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["lvl"] = 40,
					["groups"] = {
						i(8703,	{	-- Signet of Expertise
							["timeline"] = { REMOVED_4_0_3 },
							["groups"] = {
								i(8708, {	-- Hammer of Expertise
									["timeline"] = { REMOVED_4_0_3 },
									["collectible"] = false,
								}),
							},
						}),
					},
				}),
				q(8554, {	-- Facing Negolash
					["sourceQuest"] = 8553,	-- The Captain's Cutlass
					["altQuests"] = { 618 },	-- Facing Negolash [Old]
					["qg"] = 2594,	-- Sprogger
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						q(619, {	-- Enticing Negolash
							["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Facing Negolash\" in your quest log.",
							["provider"] = { "o", 2289 },	-- Ruined Lifeboat
							["timeline"] = { REMOVED_4_0_3 },
							["cost"] = {{ "i", 4457, 10 }},	-- Barbecued Buzzard Wing
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Smotts' Cutlass
									["questID"] = 8554,	-- Facing Negolash
									["provider"] = { "i", 3935 },	-- Smotts' Cutlass
									["coord"] = { 32.5, 81.9, STRANGLETHORN_VALE },
									["cr"] = 1494,	-- Negolash
								}),
								objective(2, {	-- 0/5 Junglevine Wine
									["provider"] = { "i", 4595 },	-- Junglevine Wine
									["coord"] = { 40.8, 73.6, STRANGLETHORN_VALE },
									["cr"] = 2832,	-- Nixxrax Fillamug <Food & Drink>
								}),
							},
						}),
						i(4130, {	-- Smotts' Compass
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(627, {	-- Favor for Krazek
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 4278, 4 } },	-- Lesser Bloodstone Ore
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(4785, {	-- Fine Gold Thread
					["qg"] = 2670,	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["repeatable"] = true,
					["lvl"] = 31,
					["groups"] = {
						i(12293, {	-- Fine Gold Thread
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2764, {	-- Galvan's Finest Pupil
					["sourceQuests"] = {
						2761,	-- Smelt On, Smelt Off
						2762,	-- The Great Silver Deceiver
						2763,	-- The Art of the Imbue
					},
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
				}),
				q(2932, {	-- Grim Message
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Place the grim message.
							["provider"] = { "i", 9319 },	-- Nimboya's Laden Pike
							["coord"] = { 32, 58, THE_HINTERLANDS },
							["cost"] = {
								{ "i", 15002, 1 },	-- Nimboya's Pike
								{ "i", 9320, 20 },	-- Witherbark Skull x20
							},
						}),
						i(9320, {	-- Witherbark Skull
							["crs"] = {
								2654,	-- Witherbark Caller
								2651,	-- Witherbark Hideskinner
								2653,	-- Witherbark Sadist
								2649,	-- Witherbark Scalper
								2652,	-- Witherbark Venomblood
								2650,	-- Witherbark Zealot
							},
						}),
					},
				}),
				q(582, {	-- Headhunting
					["sourceQuest"] = 581,	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/20 Shrunken Head
							["provider"] = { "i", 1532 },	-- Shrunken Head
							["cr"] = 671,	-- Bloodscalp Headhunter
						}),
						i(4133, {	-- Darkspear Cuffs
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4132, {	-- Darkspear Armsplints
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(213, {	-- Hostile Takeover
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- Tumbled Crystal
							["provider"] = { "i", 4106 },	-- Tumbled Crystal
							["cr"] = 1096,	-- Venture Co. Geologist
						}),
						i(4121, {	-- Gemmed Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(581, {	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Bloodscalp Tusk
							["provider"] = { "i", 3901 },	-- Bloodscalp Tusk
							["crs"] = {
								694,	-- Bloodscalp Axe Thrower
								699,	-- Bloodscalp Beastmaster
								597,	-- Bloodscalp Berserker
								671,	-- Bloodscalp Headhunter
								595,	-- Bloodscalp Hunter
								701,	-- Bloodscalp Mystic
								702,	-- Bloodscalp Scavenger
								588,	-- Bloodscalp Scout
								697,	-- Bloodscalp Shaman
								587,	-- Bloodscalp Warrior
								660,	-- Bloodscalp Witch Doctor
							},
						}),
					},
				}),
				q(201, {	-- Investigate the Camp
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
				}),
				q(215, {	-- Jungle Secrets
					-- #if BEFORE 4.0.3
					["description"] = "Every so often, Thorsen will go on patrol. If you follow him, he will be ambushed by two of Kurzen's lackeys - if he survives, he will offer you this quest.",
					-- #endif
					["qg"] = 738,	-- Private Thorsen
					["coord"] = { 40, 8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(576, {	-- Keep An Eye Out
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
					["qg"] = 2493,	-- Dizzy One-Eye
					["coord"] = { 28.6, 75.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- Dizzy's Eye
							["provider"] = { "i", 3897 },	-- Dizzy's Eye
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
							},
						}),
						i(4114),	-- Darktide Cape
					},
				}),
				q(210, {	-- Krazek's Cookery
					["providers"] = {
						{ "n", 770 },	-- Corporal Kaleb
						{ "i", 4085 },	-- Krazek's Crock Pot
					},
					["coord"] = { 37.7, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(207, {	-- Kurzen's Mystery
					["qg"] = 739,	-- Brother Nimetz
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 The First Troll Legend
							["providers"] = {
								{ "i", 2005 },	-- The First Troll Legend
								{ "o", 57 },	-- Moon Over the Vale
							},
							["coord"] = { 29.5, 19.2, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 The Second Troll Legend
							["providers"] = {
								{ "i", 2006 },	-- The Second Troll Legend
								{ "o", 58 },	-- Gri'lek the Wanderer
							},
							["coords"] = {
								{ 24.8, 22.8, STRANGLETHORN_VALE },
								{ 24.8, 23.1, STRANGLETHORN_VALE },
							},
						}),
						objective(3, {	-- 0/1 The Third Troll Legend
							["providers"] = {
								{ "i", 2007 },	-- The Third Troll Legend
								{ "o", 52 },	-- Fall of Gurubashi
							},
							["coord"] = { 23.0, 12.0, STRANGLETHORN_VALE },
						}),
						objective(4, {	-- 0/1 The Fourth Troll Legend
							["providers"] = {
								{ "i", 2008 },	-- The Fourth Troll Legend
								{ "o", 54 },	-- The Emperor's Tomb
							},
							["coord"] = { 23.7, 9.0, STRANGLETHORN_VALE },
						}),
					},
				}),
				q(602, {	-- Magical Analysis
					["sourceQuest"] = 601,	-- Water Elementals
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 3960 },	-- Bag of Water Elemental Bracers
					},
					["coord"] = { 27.2, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(206, {	-- Mai'Zoth
					["sourceQuests"] = {
						202,	-- Colonel Kurzen
						205,	-- Troll Witchery
					},
					["qg"] = 739,	-- Brother Nimetz
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["cr"] = 818,	-- Mai'Zoth
						}),
						i(4125, {	-- Tranquil Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(594, {	-- Message in a Bottle (1/2)
					["providers"] = {
						{ "i", 4098 },	-- Carefully Folded Note
						{ "o", 2560 },	-- Half-Buried Bottle
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 45,
				}),
				q(630, {	-- Message in a Bottle (2/2)
					["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
					["qg"] = 2634,	-- Princess Poobah
					["coord"] = { 38.4, 80.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Shackle Key
							["provider"] = { "i", 4103 },	-- Shackle Key
							["coord"] = { 40.8, 83.2, STRANGLETHORN_VALE },
							["cr"] = 1559,	-- King Mukla
						}),
						i(4118, {	-- Poobah's Nose Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(570, {	-- Mok'thardin's Enchantment (1/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/8 Shadowmaw Claw
							["provider"] = { "i", 3838 },	-- Shadowmaw Claw
							["crs"] = {
								1713,	-- Elder Shadowmaw Panther
								684,	-- Shadowmaw Panther
							},
						}),
						objective(2, {	-- 0/1 Pristine Tigress Fang
							["provider"] = { "i", 3839 },	-- Pristine Tigress Fang
							["cr"] = 772,	-- Stranglethorn Tigress
						}),
					},
				}),
				q(572, {	-- Mok'thardin's Enchantment (2/4)
					["sourceQuest"] = 570,	-- Mok'thardin's Enchantment (1/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Stalker Feather
							["provider"] = { "i", 3863 },	-- Jungle Stalker Feather
							["cr"] = 687,	-- Jungle Stalker
						}),
					},
				}),
				q(571, {	-- Mok'thardin's Enchantment (3/4)
					["sourceQuest"] = 572,	-- Mok'thardin's Enchantment (2/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/1 Aged Gorilla Sinew
							["provider"] = { "i", 3862 },	-- Aged Gorilla Sinew
							["cr"] = 1557,	-- Elder Mistvale Gorilla
						}),
					},
				}),
				q(573, {	-- Mok'thardin's Enchantment (4/4)
					["sourceQuest"] = 571,	-- Mok'thardin's Enchantment (3/4)
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Naga Explorer slain
							["provider"] = { "n", 1907 },	-- Naga Explorer
						}),
						objective(2, {	-- 0/1 Holy Spring Water
							["providers"] = {
								{ "i", 737 },	-- Holy Spring Water
								{ "o", 759 },	-- The Holy Spring
							},
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						}),
						i(4112, {	-- Choker of the High Shaman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(190, {	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Young Panther slain
							["provider"] = { "n", 683 },	-- Young Panther
						}),
					},
				}),
				q(193, {	-- Panther Mastery (4/4)
					["sourceQuest"] = 192,	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Fang of Bhag'thera
							["provider"] = { "i", 3876 },	-- Fang of Bhag'thera
							["coords"] = {
								{ 49.0, 20.6, STRANGLETHORN_VALE },
								{ 49.8, 24.6, STRANGLETHORN_VALE },
								{ 47.8, 28.0, STRANGLETHORN_VALE },
							},
							["cr"] = 728,	-- Bhag'thera
						}),
						i(61109, {	-- Bhag'thera's Roar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61108, {	-- Shield of the Panther
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61107, {	-- Mantle of the Panther
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(4108, {	-- Panther Hunter Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(192, {	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
					["sourceQuest"] = 191,	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Shadowmaw Panther slain
							["provider"] = { "n", 684 },	-- Shadowmaw Panther
						}),
					},
				}),
				q(191, {	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
					["sourceQuest"] = 190,	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Panther slain
							["provider"] = { "n", 736 },	-- Panther
						}),
					},
				}),
				q(330, {	-- Patrol Schedules
					["sourceQuest"] = 329,	-- The Spy Revealed!
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(194, {	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Stranglethorn Raptor slain
							["provider"] = { "n", 685 },	-- Stranglethorn Raptor
						}),
					},
				}),
				q(197, {	-- Raptor Mastery (4/4)
					["sourceQuest"] = 196,	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Talon of Tethis
							["provider"] = { "i", 3877 },	-- Talon of Tethis
							["coord"] = { 29.6, 44.8, STRANGLETHORN_VALE },
							["cr"] = 730,	-- Tethis
						}),
						i(61111, {	-- Belt of the Raptor
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61112, {	-- Raptor Slayer's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61110, {	-- Tethis' Skull
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131201, {	-- Scale-Cord of the Raptor
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(4119, {	-- Raptor Hunter Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(196, {	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
					["sourceQuest"] = 195,	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Stalker slain
							["provider"] = { "n", 687 },	-- Jungle Stalker
						}),
					},
				}),
				q(195, {	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
					["sourceQuest"] = 194,	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
					["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 22.9, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Lashtail Raptor slain
							["provider"] = { "n", 686 },	-- Lashtail Raptor
						}),
					},
				}),
				q(331, {	-- Report to Doren
					["sourceQuest"] = 330,	-- Patrol Schedules
					["qg"] = 1422,	-- Corporal Sethman
					["coord"] = { 37.7, 3.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4123, {	-- Frost Metal Pauldrons
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4139, {	-- Junglewalker Sandals
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(622, {	-- Return to Corporal Kaleb
					["sourceQuest"] = 627,	-- Favor for Krazek
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 1987 },	-- Krazek's Fixed Pot
					},
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(4124),	-- Cap of Harmony
					},
					-- #endif
				}),
				q(607, {	-- Return to MacKinley
					["sourceQuest"] = 606,	-- Scaring Shaky
					["providers"] = {
						{ "n", 2502 },	-- \"Shaky\" Phillipe
						{ "i", 3922 },	-- Shaky's Payment
					},
					["coord"] = { 26.9, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(3626, {	-- Return to the Blasted Lands
					["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(592, {	-- Saving Yenniku
					["sourceQuest"] = 591,	-- The Mind's Eye
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						q(593, {	-- Filling the Soul Gem
							["qg"] = 2530,	-- Yenniku <Darkspear Hostage>
							["coord"] = { 39, 58.2, STRANGLETHORN_VALE },
							["cost"] = { { "i", 3912, 1 } },	-- Soul Gem
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Filled Soul Gem
									["questID"] = 592,	-- Saving Yenniku
									["provider"] = { "i", 3913 },	-- Filled Soul Gem
								}),
							},
						}),
						i(4134, {	-- Nimboya's Mystical Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6723, {	-- Medal of Courage
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(606, {	-- Scaring Shaky
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.78, 77.07, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/5 Mistvale Giblets
							["provider"] = { "i", 3919 },	-- Mistvale Giblets
							["cr"] = 1557,	-- Elder Mistvale Gorilla
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(83934, {	-- Show Me The Money!
					["qg"] = 227853,	-- Pix Xizzix
					["coord"] = { 28.4, 75.8, STRANGLETHORN_VALE },
					["timeline"] = { ADDED_1_15_3 },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Tarnished Undermine Real
							["provider"] = { "i", 226404 },	-- Tarnished Undermine Real
						}),
					},
				})),
				-- #endif
				q(3643, {	-- Show Your Work
					["sourceQuest"] = 3642,	-- The Pledge of Secrecy
					["altQuests"] = { 3639, 3641 },	-- The Pledge of Secrecy
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(605, {	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.12, 77.22, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Singing Crystal Shard
							["provider"] = { "i", 3918 },	-- Singing Crystal Shard
							["crs"] = {
								690,	-- Cold Eye Basilisk
								689,	-- Crystal Spine Basilisk
								1551,	-- Ironjaw Basilisk
								688,	-- Stone Maw Basilisk
								1550,	-- Thrashtail Basilisk
							},
						}),
					},
				}),
				q(209, {	-- Skullsplitter Tusks
					["sourceQuest"] = 189,	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/18 Skullsplitter Tusk
							["provider"] = { "i", 1524 },	-- Skullsplitter Tusk
							["crs"] = {
								1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
								696,	-- Skullsplitter Axe Thrower
								784,	-- Skullsplitter Beastmaster
								783,	-- Skullsplitter Berserker
								781,	-- Skullsplitter Headhunter
								669,	-- Skullsplitter Hunter
								780,	-- Skullsplitter Mystic
								782,	-- Skullsplitter Scout
								672,	-- Skullsplitter Spiritchaser
								667,	-- Skullsplitter Warrior
								670,	-- Skullsplitter Witch Doctor
							},
						}),
					},
				}),
				q(2761, {	-- Smelt On, Smelt Off
					["sourceQuest"] = 2760,	-- The Mithril Order
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 3575, 40 },	-- Iron Bar
						{ "i", 3860, 40 },	-- Mithril Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						i(7983, {	-- Plans: Ornate Mithril Pants (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(577, {	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/5 Snapjaw Crocolisk Skin
							["provider"] = { "i", 4104 },	-- Snapjaw Crocolisk Skin
							["cr"] = 1152,	-- Snapjaw Crocolisk
						}),
					},
				}),
				q(586, {	-- Speaking with Gan'zulah
					["sourceQuest"] = 584,	-- Bloodscalp Clan Heads
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Skullsplitter Hunter slain
							["provider"] = { "n", 669 },	-- Skullsplitter Hunter
						}),
						objective(2, {	-- 0/8 Skullsplitter Headhunter slain
							["provider"] = { "n", 781 },	-- Skullsplitter Headhunter
						}),
						objective(3, {	-- 0/8 Skullsplitter Berserker slain
							["provider"] = { "n", 783 },	-- Skullsplitter Berserker
						}),
						objective(4, {	-- 0/1 Broken Armor of Ana'thek
							["provider"] = { "i", 3909 },	-- Broken Armor of Ana'thek
							["coord"] = { 44.6, 44.2, STRANGLETHORN_VALE },
							["cr"] = 1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
						}),
					},
				}),
				q(585, {	-- Speaking with Nezzliok
					["sourceQuest"] = 584,	-- Bloodscalp Clan Heads
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Balia'mah Trophy
							["providers"] = {
								{ "i", 3906 },	-- Balia'mah Trophy
								{ "o", 2891 },	-- Balia'mah Trophy Skulls
							},
							["coord"] = { 46.1, 32.4, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 Ziata'jai Trophy
							["providers"] = {
								{ "i", 3907 },	-- Ziata'jai Trophy
								{ "o", 2892 },	-- Ziata'jai Trophy Skulls
							},
							["coord"] = { 42.2, 36.1, STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Zul'Mamwe Trophy
							["providers"] = {
								{ "i", 3908 },	-- Zul'Mamwe Trophy
								{ "o", 2893 },	-- Zul'Mamwe Trophy Skulls
							},
							["coord"] = { 47.6, 39.5, STRANGLETHORN_VALE },
						}),
					},
				}),
				q(574, {	-- Special Forces
					["sourceQuests"] = {
						204,	-- Bad Medicine
						203,	-- The Second Rebellion
					},
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Kurzen Commando slain
							["provider"] = { "n", 938 },	-- Kurzen Commando
						}),
						objective(2, {	-- 0/6 Kurzen Headshrinker slain
							["provider"] = { "n", 941 },	-- Kurzen Headshrinker
						}),
					},
				}),
				q(598, {	-- Split Bone Necklace
					["sourceQuests"] = {
						596,	-- Bloody Bone Necklaces
						629,	-- The Vile Reef
					},
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/25 Split Bone Necklace
							["provider"] = { "i", 3916 },	-- Split Bone Necklace
							["crs"] = {
								1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
								696,	-- Skullsplitter Axe Thrower
								784,	-- Skullsplitter Beastmaster
								783,	-- Skullsplitter Berserker
								781,	-- Skullsplitter Headhunter
								669,	-- Skullsplitter Hunter
								780,	-- Skullsplitter Mystic
								782,	-- Skullsplitter Scout
								672,	-- Skullsplitter Spiritchaser
								667,	-- Skullsplitter Warrior
								670,	-- Skullsplitter Witch Doctor
							},
						}),
						i(4137, {	-- Darkspear Shoes
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4136, {	-- Darkspear Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(348, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 27.6, 76.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						q(349, {	-- Stranglethorn Fever
							["qg"] = 1449,	-- Witch Doctor Unbagwa
							["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
							["cost"] = { { "i", 2799, 10 } },	-- Gorilla Fang
							["repeatable"] = true,
							["lvl"] = 32,
							["groups"] = {
								objective(1, {	-- 0/1 Heart of Mokk
									["questID"] = 348,	-- Stranglethorn Fever
									["provider"] = { "i", 2797 },	-- Heart of Mokk
									["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
									["cr"] = 1514,	-- Mokk the Savage
								}),
							},
						}),
						i(4113, {	-- Medicine Blanket
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(198, {	-- Supplies to Private Thorsen
					["providers"] = {
						{ "n", 773 },	-- Krazek
						{ "i", 2252 },	-- Miscellaneous Goblin Supplies
					},
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(575, {	-- Supply and Demand
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.29, 77.59, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/2 Large River Crocolisk Skin
							["provider"] = { "i", 4053 },	-- Large River Crocolisk Skin
							["cr"] = 1150,	-- River Crocolisk
						}),
					},
				}),
				q(2763, {	-- The Art of the Imbue
					["sourceQuest"] = 2760,	-- The Mithril Order
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 3860, 40 },	-- Iron Bar
						{ "i", 3864, 4 },	-- Citrine
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						i(7985, {	-- Plans: Ornate Mithril Shoulder (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(595, {	-- The Bloodsail Buccaneers (1/5)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(597, {	-- The Bloodsail Buccaneers (2/5)
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
					["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
					["coord"] = { 27.3, 69.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(599, {	-- The Bloodsail Buccaneers (3/5)
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2/5)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
				}),
				q(604, {	-- The Bloodsail Buccaneers (4/5)
					["sourceQuest"] = 599,	-- The Bloodsail Buccaneers (3/5)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodsail Swashbuckler slain
							["provider"] = { "n", 1563 },	-- Bloodsail Swashbuckler
						}),
						objective(2, {	-- 0/1 Bloodsail Charts
							["providers"] = {
								{ "i", 3920 },	-- Bloodsail Charts
								{ "o", 2086 },	-- Bloodsail Charts
							},
							["coords"] = {
								{ 29.6, 80.8, STRANGLETHORN_VALE },
								{ 27.2, 82.7, STRANGLETHORN_VALE },
							},
						}),
						objective(3, {	-- 0/1 Bloodsail Orders
							["providers"] = {
								{ "i", 3921 },	-- Bloodsail Orders
								{ "o", 2087 },	-- Bloodsail Orders
							},
							["coords"] = {
								{ 29.6, 80.9, STRANGLETHORN_VALE },
								{ 27.0, 82.4, STRANGLETHORN_VALE },
							},
						}),
					},
				}),
				q(608, {	-- The Bloodsail Buccaneers (5/5)
					["sourceQuest"] = 604,	-- The Bloodsail Buccaneers (4/5)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Captain Stillwater slain
							["provider"] = { "n", 2550 },	-- Captain Stillwater
							["coord"] = { 33.0, 88.2, STRANGLETHORN_VALE },
						}),
						objective(2, {	-- 0/1 Captain Keelhaul slain
							["provider"] = { "n", 2548 },	-- Captain Keelhaul
							["coord"] = { 29.2, 88.6, STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Fleet Master Firallon slain
							["provider"] = { "n", 2546 },	-- Fleet Master Firallon
							["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
						}),
						i(4138, {	-- Blackwater Tunic
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(8551, {	-- The Captain's Chest
					["altQuests"] = { 614 },	-- The Captain's Chest [Old]
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Smotts' Chest
							["provider"] = { "i", 3932 },	-- Smotts' Chest
							["coord"] = { 36.6, 69.6, STRANGLETHORN_VALE },
							["cr"] = 1492,	-- Gorlash
						}),
						i(11469, {	-- Bloodband Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(8553, {	-- The Captain's Cutlass
					["sourceQuest"] = 8552,	-- The Monogrammed Sash
					["altQuests"] = { 615 },	-- The Captain's Cutlass [Old]
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 26.6, 73.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(1041, {	-- The Caravan Road
					["sourceQuest"] = 1040,	-- Passage to Booty Bay(The Barrens)
					["qg"] = 3945,	-- Caravaneer Ruzzgot
					["coord"] = { 27.4, 74.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(611, {	-- The Curse of the Tides
					["sourceQuest"] = 610,	-- "Pretty Boy" Duncan
					["qg"] = 2542,	-- Catelyn the Blade
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Stone of the Tides
							["providers"] = {
								{ "i", 4034 },	-- Stone of the Tides
								{ "i", 4027 },	-- Catelyn's Blade
								{ "o", 2576 },	-- Altar of the Tides
							},
							["coord"] = { 25, 23.6, STRANGLETHORN_VALE },
							["cr"] = 2624,	-- Gazban
						}),
						i(4120, {	-- Robe of Crystal Waters
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(568, {	-- The Defense of Grom'gol (1/2)
					["qg"] = 2464,	-- Commander Aggro'gosh
					["coord"] = { 32.2, 28.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/15 Lashtail Raptor slain
							["provider"] = { "n", 686 },	-- Lashtail Raptor
						}),
					},
				}),
				q(569, {	-- The Defense of Grom'gol (2/2)
					["sourceQuest"] = 568,	-- The Defense of Grom'gol (1/2)
					["qg"] = 2464,	-- Commander Aggro'gosh
					["coord"] = { 32.2, 28.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/10 Mosh'Ogg Brute slain
							["provider"] = { "n", 1142 },	-- Mosh'Ogg Brute
						}),
						objective(2, {	-- 0/5 Mosh'Ogg Witch Doctor slain
							["provider"] = { "n", 1144 },	-- Mosh'Ogg Witch Doctor
						}),
						i(4115, {	-- Grom'gol Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(588, {	-- The Fate of Yenniku
					["sourceQuests"] = {
						586,	-- Speaking with Gan'zulah
						585,	-- Speaking with Nezzliok
					},
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(2762, {	-- The Great Silver Deceiver
					["sourceQuest"] = 2760,	-- The Mithril Order
					["qg"] = 7802,	-- Galvan the Ancient
					["coord"] = { 50.6, 20.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 3860, 40 },	-- Iron Bar
						{ "i", 6037, 5 },	-- Truesilver Bar
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						i(7984, {	-- Plans: Ornate Mithril Gloves (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(338, {	-- The Green Hills of Stranglethorn
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 2756, 1 },	-- Green Hills of Stranglethorn - Chapter I
						{ "i", 2757, 1 },	-- Green Hills of Stranglethorn - Chapter II
						{ "i", 2758, 1 },	-- Green Hills of Stranglethorn - Chapter III
						{ "i", 2759, 1 },	-- Green Hills of Stranglethorn - Chapter IV
					},
					["lvl"] = 30,
					["groups"] = {
						i(4116, {	-- Olmann Sewar
							["timeline"] = { REMOVED_1_2_0 },
						}),
						i(17688, {	-- Jungle Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #if BEFORE 4.0.3
						i(3928),	-- Superior Healing Potion
						i(8173),	-- Thick Armor Kit
						-- #endif
					},
				}),
				q(616, {	-- The Haunted Isle
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(328, {	-- The Hidden Key
					["sourceQuest"] = 200,	-- Bookie Herod
					["providers"] = {
						{ "o", 287 },	-- Bookie Herod's Records
						{ "i", 2719 },	-- Small Brass Key
					},
					["coord"] = { 43.7, 9.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4122, {	-- Bookmaker's Scepter
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(591, {	-- The Mind's Eye
					["sourceQuest"] = 589,	-- The Singing Crystals
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Mind's Eye
							["provider"] = { "i", 3616 },	-- Mind's Eye
							["cr"] = 818,	-- Mai'Zoth
						}),
					},
				}),
				q(2760, {	-- The Mithril Order
					["sourceQuests"] = {
						2757,	-- Booty Bay or Bust!
						2759,	-- In Search of Galvan
					},
					["providers"] = {
						{ "n", 7794 },	-- McGavan
						{ "i", 8686 },	-- Mithril Pendant
					},
					["coord"] = { 28.8, 75.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
				}),
				q(8552, {	-- The Monogrammed Sash
					["altQuests"] = { 620 },	-- The Monogrammed Sash [Old]
					["provider"] = { "i", 3985 },	-- Monogrammed Sash
					["coord"] = { 23.0, 71.4, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 1493,	-- Mok'rash
					["lvl"] = 35,
				}),
				q(3642, {	-- The Pledge of Secrecy
					["sourceQuests"] = {
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
					},
					["altQuests"] = { 3638, 3640 },	-- The Pledge of Secrecy
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Oglethorpe's Signed Pledge
							["providers"] = {
								{ "i", 11282 },	-- Oglethorpe's Signed Pledge
								{ "i", 10794 },	-- Oglethorpe's Pledge of Secrecy
							},
						}),
					},
				}),
				q(203, {	-- The Second Rebellion
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Kurzen Jungle Fighter slain
							["provider"] = { "n", 937 },	-- Kurzen Jungle Fighter
						}),
					},
				}),
				q(589, {	-- The Singing Crystals
					["sourceQuest"] = 588,	-- The Fate of Yenniku
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Pulsing Blue Shard
							["provider"] = { "i", 3911 },	-- Pulsing Blue Shard
							["cr"] = 1551,	-- Ironjaw Basilisk
						}),
					},
				}),
				q(329, {	-- The Spy Revealed!
					["sourceQuest"] = 328,	-- The Hidden Key
					["providers"] = {
						{ "o", 288 },	-- Bookie Herod's Strongbox
						{ "i", 2720 },	-- Muddy Note
					},
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(578, {	-- The Stone of the Tides
					["sourceQuest"] = 616,	-- The Haunted Isle
					["providers"] = {
						{ "n", 2496 },	-- Baron Revilgaz
						{ "i", 3898 },	-- Library Scrip
					},
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(629, {	-- The Vile Reef
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet Shard
							["providers"] = {
								{ "i", 4094 },	-- Tablet Shard
								{ "o", 58 },	-- Gri'lek the Wanderer
							},
							["coords"] = {
								{ 24.8, 22.8, STRANGLETHORN_VALE },
								{ 24.8, 23.1, STRANGLETHORN_VALE },
							},
						}),
					},
				}),
				q(185, {	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
					["sourceQuest"] = 583,	-- Welcome to the Jungle
					["qg"] = 717,	-- Ajeck Rouack
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Young Stranglethorn Tiger slain
							["provider"] = { "n", 681 },	-- Young Stranglethorn Tiger
						}),
					},
				}),
				q(188, {	-- Tiger Mastery (4/4)
					["sourceQuest"] = 187,	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
					["qg"] = 717,	-- Ajeck Rouack
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Paw of Sin'Dall
							["provider"] = { "i", 3879 },	-- Paw of Sin'Dall
							["coord"] = { 32.6, 17.2, STRANGLETHORN_VALE },
							["cr"] = 729,	-- Sin'Dall
						}),
						i(61116, {	-- Tiger Strangler's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61115, {	-- Paws of Sin'Dall
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61114, {	-- Cat Lover's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(61113, {	-- Sin'Dall's Femur
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131200, {	-- Footpads of Sin'Dall
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(4107, {	-- Tiger Hunter Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(187, {	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
					["sourceQuest"] = 186,	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
					["qg"] = 717,	-- Ajeck Rouack
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Elder Stranglethorn Tiger slain
							["provider"] = { "n", 1085 },	-- Elder Stranglethorn Tiger
						}),
					},
				}),
				q(186, {	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
					["sourceQuest"] = 185,	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
					["qg"] = 717,	-- Ajeck Rouack
					["coords"] = {
						-- #if AFTER CATA
						{ 44.5, 22.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.6, 10.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
					["groups"] = {
						objective(1, {	-- 0/10 Stranglethorn Tiger slain
							["provider"] = { "n", 682 },	-- Stranglethorn Tiger
						}),
					},
				}),
				q(9259, {	-- Traitor to the Bloodsail
					["qg"] = 16399,	-- Bloodsail Traitor
					["coords"] = {
						-- #if AFTER CATA
						{ 48.4, 63.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 31.8, 70.9, STRANGLETHORN_VALE },
						-- #endif
					},
					["maxReputation"] = { FACTION_BOOTY_BAY, NEUTRAL },	-- Booty Bay, must be less than Neutral
					["cost"] = {
						{ "i", 4306, 40 },	-- Silk Cloth
						{ "i", 2604, 4 },	-- Red Dye
					},
					["repeatable"] = true,
					["lvl"] = lvlsquish(30, 30, 1),
				}),
				q(205, {	-- Troll Witchery
					["sourceQuest"] = 207,	-- Kurzen's Mystery
					["qg"] = 739,	-- Brother Nimetz
					["coord"] = { 37.8, 3.6, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/4 Skullsplitter Fetish
							["provider"] = { "i", 2466 },	-- Skullsplitter Fetish
							["crs"] = {
								780,	-- Skullsplitter Mystic
								670,	-- Skullsplitter Witch Doctor
							},
						}),
					},
				}),
				q(587, {	-- Up to Snuff
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2/5)
					["qg"] = 2488,	-- Deeg
					["coord"] = { 26.9, 77.3, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/15 Snuff
							["provider"] = { "i", 3910 },	-- Snuff
							["crs"] = {
								2545,	-- "Pretty Boy" Duncan
								4505,	-- Bloodsail Deckhand
								1653,	-- Bloodsail Elder Magus
								1562,	-- Bloodsail Mage
								1561,	-- Bloodsail Raider
								1565,	-- Bloodsail Sea Dog
								4506,	-- Bloodsail Swabby
								1563,	-- Bloodsail Swashbuckler
								1564,	-- Bloodsail Warlock
								2551,	-- Brutus
								2548,	-- Captain Keelhaul
								2550,	-- Captain Stillwater
								2546,	-- Fleet Master Firallon
								2549,	-- Garr Salthoof
								2547,	-- Ironpatch
							},
						}),
					},
				}),
				q(600, {	-- Venture Company Mining
					["sourceQuest"] = 605,	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Singing Blue Crystal
							["provider"] = { "i", 3917 },	-- Singing Blue Crystal
							["crs"] = {
								4723,	-- Foreman Cozzle
								675,	-- Venture Co. Foreman
								674,	-- Venture Co. Strip Miner
								676,	-- Venture Co. Surveyor
								677,	-- Venture Co. Tinkerer
								14492,	-- Verifonix <The Surveyor>
							},
						}),
						i(5253, {	-- Goblin Igniter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4128, {	-- Silver Spade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(609, {	-- Voodoo Dues
					["sourceQuest"] = 607,	-- Return to MacKinley
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Maury's Clubbed Foot
							["provider"] = { "i", 3924 },	-- Maury's Clubbed Foot
							["coord"] = { 35.2, 51.0, STRANGLETHORN_VALE },
							["cr"] = 2535,	-- Maury "Club Foot" Wilkins
						}),
						objective(2, {	-- Jon-Jon's Golden Spyglass
							["provider"] = { "i", 3925 },	-- Jon-Jon's Golden Spyglass
							["coord"] = { 34.8, 51.8, STRANGLETHORN_VALE },
							["cr"] = 2536,	-- Jon-Jon the Crow
						}),
						objective(3, {	-- Chucky's Huge Ring
							["provider"] = { "i", 3926 },	-- Chucky's Huge Ring
							["coord"] = { 40.2, 58.6, STRANGLETHORN_VALE },
							["cr"] = 2537,	-- Chucky "Ten Thumbs"
						}),
					},
				}),
				q(601, {	-- Water Elementals
					["sourceQuest"] = 578,	-- The Stone of the Tides
					["qg"] = 2496,	-- Baron Revilgaz
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/6 Water Elemental Bracers
							["provider"] = { "i", 3923 },	-- Water Elemental Bracers
							["cr"] = 691,	-- Lesser Water Elemental
						}),
					},
				}),
				q(583, {	-- Welcome to the Jungle
					-- #if AFTER CATA
					["sourceQuest"] = 26340,	-- The Hunt
					-- #endif
					["qg"] = 716,	-- Barnil Stonepot
					["coords"] = {
						-- #if AFTER CATA
						{ 44.2, 22.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.7, 10.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["lvl"] = lvlsquish(28, 28, 10),
				}),
				q(580, {	-- Whiskey Slim's Lost Grog
					["qg"] = 2491,	-- Whiskey Slim
					["coord"] = { 27.1, 77.5, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/12 Pupellyverbos Port
							["providers"] = {
								{ "i", 3900 },	-- Pupellyverbos Port
								{ "o", 2068 },	-- Pupellyverbos Port
							},
							["coords"] = {
								{ 81.7, 49.3, THE_HINTERLANDS },
								{ 80.0, 59.8, THE_HINTERLANDS },
								{ 79.4, 70.4, THE_HINTERLANDS },
								{ 79.6, 81.5, THE_HINTERLANDS },
								{ 73.3, 96.9, THE_HINTERLANDS },
							},
						}),
						-- #if BEFORE 4.0.3
						i(17048),	-- Rumsey Rum
						-- #endif
					},
				}),
				q(621, {	-- Zanzil's Secret
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/12 Zanzil's Mixture
							["provider"] = { "i", 4016 },	-- Zanzil's Mixture
							["crs"] = {
								2537,	-- Chucky "Ten Thumbs"
								2536,	-- Jon-Jon the Crow
								2535,	-- Maury "Club Foot" Wilkins
								2530,	-- Yenniku <Darkspear Hostage>
								1489,	-- Zanzil Hunter
								1491,	-- Zanzil Naga
								2534,	-- Zanzil the Outcast
								1490,	-- Zanzil Witch Doctor
								1488,	-- Zanzil Zombie
							},
						}),
						i(4131, {	-- Belt of Corruption
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(14487, {	-- Gluggl [CATA+] / Gluggle
					["coords"] = {
						-- #if AFTER CATA
						{ 43.6, 43.4, NORTHERN_STRANGLETHORN },
						{ 43.1, 41.7, NORTHERN_STRANGLETHORN },
						{ 42.0, 41.2, NORTHERN_STRANGLETHORN },
						{ 40.0, 38.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 34.4, 22.4, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(11383, {	-- High Priestess Hai'watna
					["coords"] = {
						-- #if AFTER CATA
						{ 67.0, 34.0, NORTHERN_STRANGLETHORN },
						{ 67.0, 31.6, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.4, 16.6, STRANGLETHORN_VALE },
						{ 51.6, 18.6, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(14491, {	-- Kurmokk
					["coords"] = {
						-- #if AFTER CATA
						{ 58.0, 47.8, THE_CAPE_OF_STRANGLETHORN },
						{ 54.4, 52.2, THE_CAPE_OF_STRANGLETHORN },
						{ 51.0, 54.4, THE_CAPE_OF_STRANGLETHORN },
						{ 48.0, 58.0, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 31.8, 68.2, STRANGLETHORN_VALE },
						{ 35.8, 63.8, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(2541, {	-- Lord Sakrasis
					["coords"] = {
						-- #if AFTER CATA
						{ 43.8, 49.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.6, 62.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(5028, {	-- Lord Sakrasis' Scepter
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5029, {	-- Talisman of the Naga Lord
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				-- #if BEFORE CATA
				n(723, {	-- Mosh'Ogg Butcher
					["coords"] = {
						-- #if AFTER CATA
						{ 67.0, 54.0, NORTHERN_STRANGLETHORN },
						{ 66.6, 53.4, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 31.8, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(1680, {	-- Headchopper
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
					},
				}),
				-- #endif
				n(14490, {	-- Rippa
					["coords"] = {
						-- #if AFTER CATA
						{ 41.4, 71.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 24.2, 58.0, STRANGLETHORN_VALE },
						{ 25.4, 73.6, STRANGLETHORN_VALE },
						{ 26.8, 85.0, STRANGLETHORN_VALE },
						{ 30.4, 86.0, STRANGLETHORN_VALE },
						{ 34.0, 83.6, STRANGLETHORN_VALE },
						{ 35.6, 74.8, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(14488, {	-- Roloch
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 45.4, NORTHERN_STRANGLETHORN },
						{ 45.8, 51.0, NORTHERN_STRANGLETHORN },
						{ 45.2, 54.4, NORTHERN_STRANGLETHORN },
						{ 46.8, 55.8, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.0, 24.8, STRANGLETHORN_VALE },
						{ 27.0, 31.8, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				n(1552, {	-- Scale Belly
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 25.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 44.0, 48.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(1604, {	-- Chromatic Sword
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
						i(4478, {	-- Iridescent Scale Leggings
							["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
						}),
					},
				}),
				n(14492, {	-- Verifonix <The Surveyor>
					["coords"] = {
						-- #if AFTER CATA
						{ 53.2, 27.6, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 36.8, 56.0, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_TWO, pvp(n(createHeader({	-- Blood Moon
				readable = "Blood Moon",
				icon = 237513,
				text = {
					en = "Blood Moon",
					es = "Luna Sangrienta",
					mx = "Luna de sangre",
					de = "Blutmond",
					fr = "Lune de sang",
					it = "Blood Moon",
					pt = "Lua Sangrenta",
					ru = "Кровавая луна",
					ko = "핏빛 달",
					cn = "鲜血之月",
					tw = "血月",
				},
				description = {
					en = "This is a free-for-all PvP event that takes place in Stranglethorn Vale for 30 minutes once every 3 hours starting at midnight server time.\n\nKill players to receive the stacking buff Blood for the Blood Loa. This stacks 255 times.\nYou receive 5 stacks of blood per kill.\nYou can lose blood from dying.\nTravel to blood altars |cffffffff(red flag on map)|r to exchange Blood for the Blood Loa stacks for Copper Blood Coin, Silver Blood Coin, Gold Blood Coin. You simply walk up to the altar and the coins will automatically appear in your bags.\n\nYou can opt out of the event by speaking to a Zandalarian Emissary.",
					es = "Este es un evento JcJ todos contra todos que se lleva a cabo en la Vega de Tuercespina durante 30 minutos, una vez cada 3 horas, a partir de la medianoche (hora del servidor).\n\nMata jugadores para recibir la mejora acumulable Sangre para el Loa de Sangre. Esta se acumula hasta 255 veces.\nRecibes 5 acumulaciones de Sangre por cada muerte.\nPuedes perder Sangre al morir.\nViaja a los altares de sangre |cffffffff(bandera roja en el mapa)|r para intercambiar acumulaciones de Sangre para el Loa de Sangre por Monedas de Sangre de Cobre, Plata y Oro. Simplemente acércate al altar y las monedas aparecerán automáticamente en tu inventario.\n\nPuedes optar por no participar en el evento hablando con un Emisario Zandalariano.",	
					mx = "Este es un evento JcJ todos contra todos que se lleva a cabo en la Vega de Tuercespina durante 30 minutos, una vez cada 3 horas, a partir de la medianoche (hora del servidor).\n\nMata jugadores para recibir la mejora acumulable Sangre para el Loa de Sangre. Esta se acumula hasta 255 veces.\nRecibes 5 acumulaciones de Sangre por cada muerte.\nPuedes perder Sangre al morir.\nViaja a los altares de sangre |cffffffff(bandera roja en el mapa)|r para intercambiar acumulaciones de Sangre para el Loa de Sangre por Monedas de Sangre de Cobre, Plata y Oro. Simplemente acércate al altar y las monedas aparecerán automáticamente en tu inventario.\n\nPuedes optar por no participar en el evento hablando con un Emisario Zandalar.",	
				},
			}), {
				i(213168, {	-- Copper Blood Coin
					["description"] = "Bring Blood for the Loa stacks to a blood altar on the map to exchange for this coin.\n\nThe ratio is 1 Copper Blood Coin per 1 blood stack.",
					["timeline"] = { REMOVED_1_15_2 },
				}),
				bloodcoin_c(100, i(213169)),	-- Silver Blood Coin
				bloodcoin_s(100, i(213170)),	-- Gold Blood Coin
				applyclassicphase(SOD_PHASE_THREE, i(221364, {	-- Copper Massacre Coin
					["description"] = "Bring Blood for the Loa stacks to a blood altar on the map to exchange for this coin.\n\nThe ratio is 1 Copper Massacre Coin per 1 blood stack.",
				})),
				applyclassicphase(SOD_PHASE_THREE, massacrecoin_c(100, i(221365))),	-- Silver Massacre Coin
				applyclassicphase(SOD_PHASE_THREE, massacrecoin_s(100, i(221366))),	-- Gold Massacre Coin
				i(216884, {	-- Bloodthirst Blade
					["description"] = "This drops from the troll boss during the Blood Moon event. It sadly cannot be equipped.",
					["cr"] = 218690,	-- Kha'damu <Chosen of the Blood Loa>
				}),
			}))),
			-- #endif
			n(TREASURES, {
				o(2744, {	-- Giant Clam
					["coords"] = {
						{ 28.1, 45.9, NORTHERN_STRANGLETHORN },	-- The Vile Reef
					},
					["groups"] = {
						i(4611),	-- Blue Pearl
						i(4655),	-- Giant Clam Meat
					},
				}),
			}),
			n(VENDORS, {
				n(2846, {	-- Blixrez Goodstitch <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.8, 74.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.2, 77.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["sym"] = {{"select", "itemID",
						2846,	-- Pattern: Thick Murloc Armor (RECIPE!)
						5788,	-- Pattern: Murloc Scale Bracers (RECIPE!)
					}},
				}),
				n(734, {	-- Corporal Bluth <Camp Trader>
					["coords"] = {
						-- #if AFTER CATA
						{ 47.2, 10.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 38.0, 3.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12231),	-- Recipe: Jungle Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(2672, {	-- Cowardly Crosby <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.8, 82.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.0, 82.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(10318, {	-- Pattern: Admiral's Hat (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2838, {	-- Crazk Sparks <Fireworks Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.0, 72.7, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.2, 76.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(18648, {	-- Schematic: Green Firework (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2845, {	-- Fargon Mortalak <Superior Armorer>
					["coords"] = {
						-- #if AFTER CATA
						{ 44.1, 70.0, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 29.0, 75.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(12257, {	-- Heavy Notched Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(2848, {	-- Glyx Brewright <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.7, 75.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.0, 78.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(6056, {	-- Recipe: Frost Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2687, {	-- Gnaz Blunderflame <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.5, 61.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 35.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(13311, {	-- Schematic: Mechanical Dragonling (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2839, {	-- Haren Kanmae <Superior Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.9, 69.3, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.3, 74.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(2483, {	-- Jaquilina Dramet <Superior Axecrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.7, 23.2, NORTHERN_STRANGLETHORN },
						-- #else
						{ 35.8, 10.7, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
						i(12164, {	-- Plans: Massive Iron Axe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2843, {	-- Jutak <Blade Trader>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 74.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.5, 77.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2664, {	-- Kelsey Yance <Cook>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.8, 69.0, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.2, 74.4, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(13940),	-- Recipe: Cooked Glossy Mightfish (RECIPE!)
						i(13941),	-- Recipe: Filet of Redgill (RECIPE!)
						i(6039),	-- Recipe: Giant Clam Scorcho (RECIPE!)
						i(13943),	-- Recipe: Hot Smoked Bass (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2840, {	-- Kizz Bluntstrike <Macecrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.9, 70.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.3, 75.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
				}),
				n(8679, {	-- Knaz Blunderflame <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 61.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 51.0, 35.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, pvp(n(218115, {	-- Mai'zin <Gurubashi Bloodchanger>
					["coord"] = { 31.2, 48.4, STRANGLETHORN_VALE },
					["lvl"] = 40,
					["groups"] = {
						applyclassicphase(SOD_PHASE_THREE, massacrecoin_s(1, i(213169))),	-- Silver Blood Coin
						applyclassicphase(SOD_PHASE_THREE, massacrecoin_g(1, i(213170))),	-- Gold Blood Coin
						bloodcoin_g(1, i(216972, {	-- Satchel of Silver Blood Coins
							["sym"] = {{ "select","itemID", 213169 }},	-- Silver Blood Coin
							-- TODO: Check if this is still there.
						})),
						bloodcoin_s(1, i(216971, {	-- Satchel of Copper Blood Coins
							["sym"] = {{ "select","itemID", 213168 }},	-- Copper Blood Coin
							-- TODO: Check if this is still there.
						})),
						applyclassicphase(SOD_PHASE_THREE, massacrecoin_g(1, i(221368, {	-- Satchel of Silver Massacre Coins
							["sym"] = {{ "select","itemID", 221365 }},	-- Silver Massacre Coin
						}))),
						applyclassicphase(SOD_PHASE_THREE, massacrecoin_s(1, i(221367, {	-- Satchel of Copper Massacre Coins
							["sym"] = {{ "select","itemID", 221364 }},	-- Copper Massacre Coin
						}))),
						applyclassicphase(SOD_PHASE_THREE, massacrecoin_s(1, i(223283))),	-- Bloodstained Commendation
						bloodcoin_c(25, i(216914, {	-- Bloodstained Commendation / Tarnished Commendation
							["timeline"] = { REMOVED_1_15_2 },
						})),
						bloodcoin_s(1, i(216491)),	-- Shipment of Stranglethorn Lumber
						bloodcoin_g(1, i(216570)),	-- Reins of the Golden Sabercat
						bloodcoin_g(1, i(216492)),	-- Whistle of the Mottled Blood Raptor

						-- Phase 2
						bloodcoin_s(2, i(216621)),	-- Blooddrenched Drape
						bloodcoin_s(2, i(216620)),	-- Bloodrot Cloak
						bloodcoin_s(2, i(216623)),	-- Cape of Hemostasis
						bloodcoin_s(2, i(216622)),	-- Coagulated Cloak

						-- Class Items (Blood Harvest)
						applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(220173, {	-- Parasomnia
							["classes"] = { WARRIOR, PALADIN },
							["lvl"] = 50,
						}))),
						cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221446))),	-- Ritualist's Hammer
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221447))),	-- Ritualist's Bloodmoon Grimoire
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221448))),	-- Talisman of the Corrupted Grove
							bloodcoin_s(15, i(216499)),	-- Bloodbark Crusher
							bloodcoin_s(5, i(216498)),	-- Enchanted Sanguine Grimoire
							bloodcoin_s(5, i(216500)),	-- Bloodbonded Grove Talisman
						})),
						cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221451))),	-- Bloodthirst Crossbow
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221450))),	-- Gurubashi Pit Fighter's Bow
							bloodcoin_s(5, i(216516)),	-- Bloodlash Bow
							bloodcoin_s(5, i(216513)),	-- Tigerblood Talisman
							bloodcoin_s(3, i(216515)),	-- Sanguine Ammo Pouch
							bloodcoin_s(3, i(216514)),	-- Sanguine Quiver
						})),
						cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221453))),	-- Band of Boiling Blood
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221452))),	-- Bloodfocused Arcane Band
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221454))),	-- Glacial Blood Band
							bloodcoin_s(5, i(216510)),	-- Blood Resonance Circle
							bloodcoin_s(5, i(216511)),	-- Emberblood Seal
							bloodcoin_s(5, i(216512)),	-- Loop of Chilled Veins
						})),
						cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221456))),	-- Eclipsed Sanguine Saber
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221457))),	-- Libram of Draconic Destruction
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221455))),	-- Bloodlight Reverence
							bloodcoin_s(15, i(216506)),	-- Bloodlight Avenger's Edge
							bloodcoin_s(15, i(216504)),	-- Eclipsed Bloodlight Saber
							bloodcoin_s(5, i(216505)),	-- Bloodlight Crusader's Radiance
							bloodcoin_s(5, i(216607)),	-- Bloodlight Offering
						})),
						cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221459))),	-- Seal of the Sacrificed
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221458))),	-- Shadowy Band of Victory
							bloodcoin_s(5, i(216518)),	-- Blood Covenant Seal
							bloodcoin_s(5, i(216517)),	-- Sanguine Sanctuary
							bloodcoin_s(5, i(216519)),	-- Sanguine Shadow Band
						})),
						cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221462))),	-- Bloodied Sword of Speed
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221460))),	-- Gurubashi Backstabber
							bloodcoin_s(10, i(216520)),	-- Bloodharvest Blade
							bloodcoin_s(5, i(216522)),	-- Blood Spattered Stiletto
							bloodcoin_s(5, i(216521)),	-- Swift Sanguine Strikers
						})),
						cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221465))),	-- Corrupted Smashbringer
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221464))),	-- Totem of Fiery Precision
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221463))),	-- Ancestral Voodoo Doll
							bloodcoin_s(15, i(216502)),	-- Bloodstorm War Totem
							bloodcoin_s(5, i(216501)),	-- Bloodstorm Barrier
							bloodcoin_s(5, i(216615)),	-- Ancestral Bloodstorm Beacon
							bloodcoin_s(5, i(216503)),	-- Bloodstorm Jewel
						})),
						cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221467))),	-- Eye of the Bloodmoon
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221466))),	-- Loop of Burning Blood
							bloodcoin_s(5, i(216508)),	-- Infernal Bloodcoil Band
							bloodcoin_s(5, i(216507)),	-- Umbral Bloodseal
							bloodcoin_s(5, i(216509)),	-- Infernal Pact Essence
						})),
						cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(25, i(221469))),	-- Headhunter's Barbed Spear
							applyclassicphase(SOD_PHASE_THREE, bloodcoin_s(15, i(221468))),	-- Wall of Whispers
							bloodcoin_s(15, i(216497)),	-- Exsanguinar
							bloodcoin_s(15, i(216495)),	-- Sanguine Crusher
							bloodcoin_s(10, i(216496)),	-- Sanguine Skullcrusher
						})),
					},
				}))),
				-- #endif
				n(2685, {	-- Mazk Snipeshot <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.2, 70.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.5, 75.1, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(13310, {	-- Schematic: Accurate Scope (RECIPE!)
							["timeline"] = { REMOVED_5_0_4 },	-- Now taught by trainer, recipe removed from the game.
						}),
						i(18651, {	-- Schematic: Truesilver Transformer (RECIPE!)
							["timeline"] = { REMOVED_2_0_1 },	-- Now taught by trainer, recipe removed from the game.
						}),
					},
				}),
				n(2663, {	-- Narkk <Pirate Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 69.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.1, 74.4, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(8496),	-- Cockatiel (PET!)
						i(8495),	-- Senegal (PET!)
						i(10728, {	-- Pattern: Black Swashbuckler's Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(1148, {	-- Nerrist <Trade Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.3, 51.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.6, 29.2, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(21943, {	-- Design: Truesilver Crab (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
						i(12231),	-- Recipe: Jungle Stew (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(2626, {	-- Old Man Heming <Fisherman>
					["coords"] = {
						-- #if AFTER CATA
						{ 41.6, 73.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 27.4, 77.1, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(16083, {	-- Expert Fishing - The Bass and You
							["timeline"] = { REMOVED_3_1_0 },
							["rank"] = 3,
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, n(227853, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_3 } }, {	-- Pix Xizzix <Undermine Trader>
					["sourceQuest"] = 83934,	-- Show Me The Money!
					["coord"] = { 28.4, 75.8, STRANGLETHORN_VALE },
					["groups"] = {
						cl(DRUID, {
							real(50, i(226708)),	-- Wildheart Cowl
							real(25, i(226710)),	-- Wildheart Spaulders
							real(50, i(226715)),	-- Wildheart Vest
							real(15, i(226714)),	-- Wildheart Bracers
							real(25, i(226711)),	-- Wildheart Gloves
							real(25, i(226712)),	-- Wildheart Belt
							real(50, i(226709)),	-- Wildheart Kilt
							real(25, i(226713)),	-- Wildheart Boots
						}),
						cl(HUNTER, {
							real(50, i(226720)),	-- Beaststalker's Cap
							real(25, i(226716)),	-- Beaststalker's Mantle
							real(50, i(226723)),	-- Beaststalker's Tunic
							real(15, i(226717)),	-- Beaststalker's Bindings
							real(25, i(226721)),	-- Beaststalker's Gloves
							real(25, i(226718)),	-- Beaststalker's Belt
							real(50, i(226719)),	-- Beaststalker's Pants
							real(25, i(226722)),	-- Beaststalker's Boots
						}),
						cl(MAGE, {
							real(50, i(226728)),	-- Magister's Crown
							real(25, i(226726)),	-- Magister's Mantle
							real(50, i(226729)),	-- Magister's Robes
							real(15, i(226725)),	-- Magister's Bindings
							real(25, i(226731)),	-- Magister's Gloves
							real(25, i(226724)),	-- Magister's Belt
							real(50, i(226727)),	-- Magister's Leggings
							real(25, i(226730)),	-- Magister's Boots
						}),
						cl(PALADIN, {
							real(50, i(226733)),	-- Lightforge Helm
							real(25, i(226735)),	-- Lightforge Spaulders
							real(50, i(226734)),	-- Lightforge Breastplate
							real(15, i(226739)),	-- Lightforge Bracers
							real(25, i(226737)),	-- Lightforge Gauntlets
							real(25, i(226732)),	-- Lightforge Belt
							real(50, i(226736)),	-- Lightforge Legplates
							real(25, i(226738)),	-- Lightforge Boots
						}),
						cl(PRIEST, {
							real(50, i(226746)),	-- Devout Crown
							real(25, i(226741)),	-- Devout Mantle
							real(50, i(226745)),	-- Devout Robe
							real(15, i(226742)),	-- Devout Bracers
							real(25, i(226740)),	-- Devout Gloves
							real(25, i(226744)),	-- Devout Belt
							real(50, i(226747)),	-- Devout Skirt
							real(25, i(226743)),	-- Devout Sandals
						}),
						cl(ROGUE, {
							real(50, i(226707)),	-- Shadowcraft Cap
							real(25, i(226706)),	-- Shadowcraft Spaulders
							real(50, i(226700)),	-- Shadowcraft Tunic
							real(15, i(226704)),	-- Shadowcraft Bracers
							real(25, i(226702)),	-- Shadowcraft Gloves
							real(25, i(226701)),	-- Shadowcraft Belt
							real(50, i(226705)),	-- Shadowcraft Pants
							real(25, i(226703)),	-- Shadowcraft Boots
						}),
						cl(SHAMAN, {
							real(50, i(226755)),	-- Coif of Elements
							real(25, i(226753)),	-- Pauldrons of Elements
							real(50, i(226749)),	-- Vest of Elements
							real(15, i(226751)),	-- Bindings of Elements
							real(25, i(226748)),	-- Gauntlets of Elements
							real(25, i(226754)),	-- Cord of Elements
							real(50, i(226750)),	-- Kilt of Elements
							real(25, i(226752)),	-- Boots of Elements
						}),
						cl(WARLOCK, {
							real(50, i(226762)),	-- Dreadmist Mask
							real(25, i(226756)),	-- Dreadmist Mantle
							real(50, i(226757)),	-- Dreadmist Robe
							real(15, i(226759)),	-- Dreadmist Bracers
							real(25, i(226758)),	-- Dreadmist Wraps
							real(25, i(226761)),	-- Dreadmist Belt
							real(50, i(226760)),	-- Dreadmist Leggings
							real(25, i(226763)),	-- Dreadmist Sandals
						}),
						cl(WARRIOR, {
							real(50, i(226769)),	-- Helm of Valor
							real(25, i(226768)),	-- Spaulders of Valor
							real(50, i(226770)),	-- Breastplate of Valor
							real(15, i(226766)),	-- Bracers of Valor
							real(25, i(226771)),	-- Gauntlets of Valor
							real(25, i(226765)),	-- Belt of Valor
							real(50, i(226767)),	-- Legplates of Valor
							real(25, i(226764)),	-- Boots of Valor
						}),

						-- Toys
						real(25, i(228189)),	-- Gift of Gob (TOY!)

						-- Weapons
						real(50, i(228185)),	-- Broken Bottle of Goblino Noir
						real(50, i(228168)),	-- Goblin Gear Grinder
						real(50, i(228170)),	-- Makeshift South Sea Oar
						real(50, i(228169)),	-- The Attitude Adjustor
						real(50, i(220599)),	-- Drakestone of the Blood Prophet
						real(50, i(220597)),	-- Drakestone of the Dream Harbinger
						real(50, i(220598)),	-- Drakestone of the Nightmare Harbinger
						real(50, i(228187)),	-- Stick of the South Sea

						-- Armor
						real(25, i(228184)),	-- Goblin Clothesline

						-- Rings
						real(25, i(228186)),	-- Abandoned Wedding Band
						real(50, i(227284)),	-- Band of the Beast
						real(50, i(227280)),	-- Craft of the Shadows
						real(50, i(227279)),	-- Loop of the Magister
						real(50, i(227282)),	-- Ring of the Dreaded Mist

						-- Trinkets
						real(50, i(227990)),	-- Hand of Injustice
						real(50, i(228432)),	-- Whistle of the Beast

						-- Librams
						real(15, i(228182)),	-- Idol of Exsanguination (Bear)
						real(15, i(228181)),	-- Idol of Exsanguination (Cat)
						real(15, i(228183)),	-- Idol of the Grove
						real(15, i(228180)),	-- Idol of the Swarm
						real(15, i(228175)),	-- Libram of Holy Alacrity
						real(15, i(228173)),	-- Libram of the Consecrated
						real(15, i(228174)),	-- Libram of the Devoted
						real(15, i(228178)),	-- Totem of Earthen Vitality
						real(15, i(228177)),	-- Totem of Raging Fire
						real(15, i(228179)),	-- Totem of the Plains
						real(15, i(228176)),	-- Totem of Thunder

						-- Bags
						real(25, i(228171)),	-- Kezan Cash Carrier

						-- Recipes
						real(50, i(228121)),	-- Pattern: Leather-Reinforced Runecloth Bag (RECIPE!)
						real(50, i(13522)),	-- Recipe: Flask of Chromatic Resistance (RECIPE!)
						real(50, i(13520)),	-- Recipe: Flask of Distilled Wisdom (RECIPE!)
						real(50, i(13518)),	-- Recipe: Flask of Petrification (RECIPE!)
						real(50, i(13521)),	-- Recipe: Flask of Supreme Power (RECIPE!)
						real(50, i(13519)),	-- Recipe: Flask of the Titans (RECIPE!)

						-- Reagents
						real(5, i(226405, {	-- Damaged Undermine Supply Crate
							["description"] = "Contains random max level crafting materials.",
						})),
						real(10, i(17012)),	-- Core Leather
						real(15, i(17010)),	-- Fiery Core
						real(15, i(17011)),	-- Lava Core
					},
				}))),
				-- #endif
				n(2849, {	-- Qixdi Goodstitch <Cloth Armor & Accessories>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.7, 74.2, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.2, 77.6, STRANGLETHORN_VALE },
						-- #endif
					},
					["sym"] = {{"select","itemID",
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
					["groups"] = sharedData({
						["collectible"] = false,
						["providers"] = {
							{ "n", 2849},	-- Qixdi Goodstitch <Cloth Armor & Accessories>
							-- #if AFTER TBC
							{ "n", 17512},	-- Arred <Jewelcrafting Supplies>
							{ "n", 16624},	-- Gelanthis <Jewelcrafting Supplies>
							-- #endif
							-- #if AFTER CATA
							{ "n", 49887}, 	-- Gappy Silvertooth <Bling Merchant>
							-- #endif
						},
					}, {
						i(7341),	-- Cubic Zirconia Ring
						i(7340),	-- Flawless Diamond Solitaire
						i(7339),	-- Miniscule Diamond Ring
						i(7338),	-- Mood Ring
						i(7342),	-- Silver Piffeny Band
						i(7337),	-- The Rock
					}),
				}),
				n(2699, {	-- Rikqiz <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.2, 71.7, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.4, 76.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(14635, {	-- Pattern: Gem-Studded Leather Belt (RECIPE!)
							["isLimited"] = true,
						}),
						i(18239, {	-- Pattern: Shadowskin Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(214954, {	-- Rix Xizzix <Lost and Found>
					["coord"] = { 28.4, 75.8, STRANGLETHORN_VALE },
					["groups"] = {
						applyclassicphase(SOD_PHASE_THREE, i(220688, {	-- Inert Mantle of Nightmares
							["sourceQuest"] = 81986,	-- Waking the Nightmare
							["cost"] = 100000,	-- 10g
						})),
						applyclassicphase(SOD_PHASE_THREE, i(219147, {	-- Rune of Grace
							["description"] = "You need to complete the Frix Xizzix quest first. (Crieve TODO: Document the quest chain!)",
							--["sourceQuest"] = ,	--
							["cost"] = 10000,	-- 1g
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(429242),	-- Engrave Bracers - Light's Grace
							},
						})),
						applyclassicphase(SOD_PHASE_THREE, i(19141, {	-- Luffa
							["sourceQuest"] = 7727,	-- Incendosaurs? Whateverosaur is More Like It
							["cost"] = 66451,	-- 6g 64s 51c
						})),
						applyclassicphase(SOD_PHASE_THREE, i(221418, {	-- Agamaggan's Roar
							["sourceQuest"] = 82043,	-- The Wild Gods
							["cost"] = 11500,	-- 1g 15s
						})),
						applyclassicphase(SOD_PHASE_THREE, i(11122, {	-- Carrot on a Stick
							["sourceQuest"] = 2770,	-- Gahz'rilla
							["cost"] = 28650,	-- 2g 86s 50c
						})),
						applyclassicphase(SOD_PHASE_THREE, i(10418, {	-- Glimmering Mithril Insignia
							["sourceQuest"] = 3321,	-- Did You Lose This?
							["cost"] = 65859,	-- 6g 58s 59c
						})),
						applyclassicphase(SOD_PHASE_TWO, i(2820, {	-- Nifty Stopwatch
							["sourceQuest"] = 778,	-- This Is Going to Be Hard
							["cost"] = 18650,	-- 1g 86s 50c
						})),
						applyclassicphase(SOD_PHASE_TWO, i(4984, {	-- Skull of Impending Doom
							["sourceQuest"] = 737,	-- Forbidden Knowledge
							["cost"] = 22520,	-- 2g 25s 20c
						})),
						i(211451, {	-- Acolyte's Void Pearl
							["sourceQuests"] = {
								78916,	-- The Heart of the Void (A)
								78917,	-- The Heart of the Void (H)
							},
							["cost"] = 750000,	-- 75g
						}),
						i(211449, {	-- Avenger's Void Pearl
							["sourceQuests"] = {
								78916,	-- The Heart of the Void (A)
								78917,	-- The Heart of the Void (H)
							},
							["cost"] = 750000,	-- 75g
						}),
						i(211450, {	-- Invoker's Void Pearl
							["sourceQuests"] = {
								78916,	-- The Heart of the Void (A)
								78917,	-- The Heart of the Void (H)
							},
							["cost"] = 750000,	-- 75g
						}),
						i(211420, {	-- Shifting Scale Talisman
							["sourceQuest"] = 78909,	-- Shifting Scale Talisman
							["cost"] = 25000,	-- 2g 50s
						}),
					},
				})),
				-- #endif
				n(1149, {	-- Uthok <General Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 37.5, 49.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 31.6, 28.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
					},
				}),
				n(1146, {	-- Vharr <Superior Weaponsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 38.7, 49.1, NORTHERN_STRANGLETHORN },
						-- #else
						{ 32.2, 28.0, STRANGLETHORN_VALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12250, {	-- Midnight Axe
							["isLimited"] = true,
						}),
						i(12248, {	-- Daring Dirk
							["isLimited"] = true,
						}),
						i(12164, {	-- Plans: Massive Iron Axe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2670, {	-- Xizk Goodstitch <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.6, 73.1, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.7, 76.9, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(7087, {	-- Pattern: Crimson Silk Cloak (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_TWO, i(217258, {	-- Pattern: Enchanter's Cowl (RECIPE!)
							["timeline"] = { ADDED_1_15_1 },
							["isLimited"] = true,
						})),
						-- #endif
						i(14630, {	-- Pattern: Enchanter's Cowl (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_1 },
							-- #endif
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(222413, {	-- Zalgo the Explorer <Purveyor of Lost Goods>
					["coord"] = { 28.4, 75.8, STRANGLETHORN_VALE },
					["groups"] = {
						i(224409, {	-- Serpent's Striker (2.6 speed)
							["cost"] = {{ "i", 220589, 1 }},	-- Serpent's Striker (1.5 speed)
						}),
						--[[
						-- CRIEVE NOTE: Yeah, this is on the vendor, but also causes a stack overflow. Let's not.
						i(220589, {	-- Serpent's Striker (1.5 speed)
							["cost"] = {{ "i", 224409, 1 }},	-- Serpent's Striker (2.6 speed)
						}),
						]]
						bloodicon(i(220642)),	-- Banished Martyr's Plate Armor
						bloodicon(i(220643)),	-- Banished Martyr's Plate Legguards
						bloodicon(i(220648)),	-- Banished Martyr's Plate Boots
						ritualicon(i(220683)),	-- Benevolent Prophet's Vest
						ritualicon(i(220684)),	-- Benevolent Prophet's Leggings
						ritualicon(i(220685)),	-- Benevolent Prophet's Sandals
						bloodicon(i(220676)),	-- Blood Corrupted Tunic
						bloodicon(i(220678)),	-- Blood Corrupted Pants
						bloodicon(i(220677)),	-- Blood Corrupted Boots
						ritualicon(i(220779)),	-- Coagulated Bloodguard Tunic
						ritualicon(i(220778)),	-- Coagulated Bloodguard Pants
						ritualicon(i(220780)),	-- Coagulated Bloodguard Boots
						bloodicon(i(220665)),	-- Corrupted Spiritweaver's Breastplate
						bloodicon(i(220663)),	-- Corrupted Spiritweaver's Leggings
						bloodicon(i(220664)),	-- Corrupted Spiritweaver's Sabatons
						bloodicon(i(220666)),	-- Dread Hunter's Chainmail
						bloodicon(i(220667)),	-- Dread Hunter's Chausses
						bloodicon(i(220668)),	-- Dread Hunter's Greaves
						ritualicon(i(220669)),	-- Exiled Prophet's Jerkin
						ritualicon(i(220671)),	-- Exiled Prophet's Leather Pants
						ritualicon(i(220670)),	-- Exiled Prophet's Slippers
						ritualicon(i(220672)),	-- Lost Worshipper's Harness
						ritualicon(i(220673)),	-- Lost Worshipper's Leggings
						ritualicon(i(220675)),	-- Lost Worshipper's Treads
						ritualicon(i(220680)),	-- Malevolent Prophet's Vest
						ritualicon(i(220679)),	-- Malevolent Prophet's Leggings
						ritualicon(i(220681)),	-- Malevolent Prophet's Sandals
						ritualicon(i(220783)),	-- Nightmare Prophet's Vestments
						ritualicon(i(220781)),	-- Nightmare Prophet's Leggings
						ritualicon(i(220784)),	-- Nightmare Prophet's Sandals
						bloodicon(i(220650)),	-- Obsessed Prophet's Chestplate
						bloodicon(i(220651)),	-- Obsessed Prophet's Legguards
						bloodicon(i(220652)),	-- Obsessed Prophet's Ornate Boots
						bloodicon(i(220657)),	-- Ostracized Berserker's Hauberk
						bloodicon(i(220658)),	-- Ostracized Berserker's Legplates
						bloodicon(i(220659)),	-- Ostracized Berserker's Chain Greaves
						bloodicon(i(220660)),	-- Shunned Devotee's Chainshirt
						bloodicon(i(220661)),	-- Shunned Devotee's Legguards
						bloodicon(i(220662)),	-- Shunned Devotee's Scale Boots
						bloodicon(i(220653)),	-- Wailing Berserker's Chestplate
						bloodicon(i(220654)),	-- Wailing Berserker's Legplates
						bloodicon(i(220656)),	-- Wailing Berserker's Battleboots
					},
				})),
				-- #endif
				n(2482, {	-- Zarena Cromwind <Superior Weaponsmith>
					["coords"] = {
						-- #if AFTER CATA
						{ 43.0, 70.8, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 28.3, 75.5, STRANGLETHORN_VALE },
						-- #endif
					},
					["groups"] = {
						i(12251, {	-- Big Stick
							["isLimited"] = true,
						}),
						i(12163, {	-- Plans: Moonsteel Broadsword (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							["timeline"] = { REMOVED_1_15_1 },
							-- #endif
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_TWO, i(217282, {	-- Plans: Moonsteel Broadsword (RECIPE!)
							["timeline"] = { ADDED_1_15_1 },
							["isLimited"] = true,
						})),
						-- #endif
						i(12252, {	-- Staff of Protection
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1998, {	-- Bloodscalp Channeling Staff
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 697,	-- Bloodscalp Shaman
				}),
				-- #if BEFORE CATA
				i(4611, {	-- Blue Pearl
					["crs"] = {
						877,	-- Saltscale Forager
						879,	-- Saltscale Hunter
						871,	-- Saltscale Warrior
					},
				}),
				-- #endif
				i(5079, {	-- Cold Basilisk Eye
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 690,	-- Cold Eye Basilisk
				}),
				i(1703, {	-- Crystal Basilisk Spine
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 689,	-- Crystal Spine Basilisk
				}),
				i(1677, {	-- Drake-scale Vest
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 680,	-- Mosh'Ogg Lord
				}),
				i(1659, {	-- Engineering Gloves
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 677,	-- Venture Co. Tinkerer
				}),
				i(2955, {	-- First Mate Hat
					-- #if BEFORE CATA
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
				}),
				i(11203, {	-- Formula: Enchant Gloves - Advanced Mining (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 674,	-- Venture Co. Strip Miner
				}),
				i(1991, {	-- Goblin Power Shovel
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["crs"] = {
						1094,	-- Venture Co. Miner
						-- #if AFTER 7.3.5
						674,	-- Venture Co. Strip Miner
						-- #endif
					},
				}),
				i(1986, {	-- Gutrender
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 709,	-- Mosh'Ogg Warmonger
				}),
				i(1522, {	-- Headhunting Spear
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 671,	-- Bloodscalp Headhunter
				}),
				i(1523, {	-- Huge Stone Club
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 597,	-- Bloodscalp Berserker
				}),
				-- #if BEFORE CATA
				i(2633, {	-- Jungle Remedy
					["crs"] = {
						941,	-- Kurzen Headshrinker
						942,	-- Kurzen Witch Doctor
						940,	-- Kurzen Medicine Man
					},
				}),
				-- #endif
				i(1679, {	-- Korg Bat
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 1142,	-- Mosh'Ogg Brute
				}),
				i(5755, {	-- Onyx Shredder Plate
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 4260,	-- Venture Co. Shredder
				}),
				i(8494, {	-- Hyacinth Macaw (PET!)
					-- #if BEFORE CATA
					["crs"] = {
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2546,	-- Fleet Master Firallon
					},
					-- #else
					["description"] = "This item has a chance to drop from any killed creature in the zone.",
					-- #endif
					["timeline"] = { ADDED_1_11_1 },
				}),
				i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
					["cr"] = 1561,	-- Bloodsail Raider
				}),
				-- #if BEFORE CATA
				i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
					["cr"] = 938,	-- Kurzen Commando
				}),
				-- #endif
				i(1997, {	-- Pressed Felt Robe
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 701,	-- Bloodscalp Mystic
				}),
				-- #if BEFORE 4.0.3
				i(9294, {	-- Recipe: Wildvine Potion (RECIPE!)
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				-- #endif
				i(1624, {	-- Skullsplitter Helm
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["crs"] = {
						783,	-- Skullsplitter Berserker
						781,	-- Skullsplitter Headhunter
					},
				}),
				i(1664, {	-- Spellforce Rod
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 676,	-- Venture Co. Surveyor
				}),
				i(1652, {	-- Sturdy Lunchbox
					-- #if AFTER 10.1.7
					["coords"] = {
						{ 55.6, 35.6, NORTHERN_STRANGLETHORN },
						{ 55.4, 34.4, NORTHERN_STRANGLETHORN },
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["crs"] = {
						-- #if AFTER 10.1.7
						921,	-- Venture Co. Lumberjack
						-- #else
						675,	-- Venture Co. Foreman
						14492,	-- Verifonix <The Surveyor>
						-- #endif
					},
				}),
				i(1996, {	-- Voodoo Band
					["timeline"] = { REMOVED_4_0_3, ADDED_7_3_5 },
					["cr"] = 660,	-- Bloodscalp Witch Doctor
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CLASSIC, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_1 } }, {
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			q(7908, {["timeline"] = { ADDED_1_12_1 }}),	-- Arena Master [Old] - completed with quest 7810
			q(618),		-- Facing Negolash [Old] - completed with quest 8554
			q(614),		-- The Captain's Chest [Old] - completed with quest 8551
			q(615, {["timeline"] = { ADDED_1_12_1 }}),		-- The Captain's Cutlass [Old] - completed with quest 8553
			q(620, {["timeline"] = { ADDED_1_12_1 }}),		-- The Monogrammed Sash [Old] - completed with quest 8552
		}),
	}),
})));
-- #endif
