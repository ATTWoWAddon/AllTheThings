---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

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
		local isHuman = _.RaceIndex == 1;
		local repForDressing = isHuman and 11 or 10;
		if t.dressing.collected then repForDressing = 0; end
		local repForAdmiral = isHuman and 220 or 200;
		if t.admiral.collected then repForAdmiral = 0; end
		t.maxPossibleReputation = math.max(t.reputation, 41999) + repForDressing + repForAdmiral;
		if t.maxPossibleReputation < 42000 then
			t.locked = true;
		end
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
		if t.maxPossibleReputation < 42000 then
			tinsert(tooltipInfo, { left = "You mistakenly completed both quests before reaching max Revered and are unable to complete Exalted Bloodsail until Wrath. For shame!", r = 1, g = 0.5, b = 0.5, wrap = true });
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

maproot(MAP.EASTERN_KINGDOMS, MAP.STRANGLETHORN_VALE, {
	["lore"] = "The Stranglethorn Vale is a vast jungle south of Duskwood.\n\nJungle trolls patrol this steaming rainforest. Ancient Gurubashi trolls once ruled the region, and the ruins of their great cities crumble in the jungle's heat and growth. Naga hunt along the coast and vicious animals and plants, including the eponymous strangle-thorns, make travel dangerous. The Arena, a center for gladiatorial games set in a ruined Gurubashi fighting stadium, draws shady characters of all races. The Blackwater Raiders, a vile group of pirates, make their home in Booty Bay, on the Stranglethorn's southern coast.",
	["icon"] = 236844,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(781),	-- Explore Stranglethorn Vale
		}),
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
				["OnTooltip"] = OnTooltipForBloodsail,
				["OnUpdate"] = OnUpdateForBloodsail,
				["maps"] = { MAP.BADLANDS },
				["crs"] = { 9179 },	-- Jazzrik
			}),
			faction(FACTION_BOOTY_BAY, {	-- Booty Bay
				["icon"] = 133784,
				["OnTooltip"] = OnTooltipForBootyBay,
				["maps"] = {
					MAP.TANARIS,
					MAP.THE_BARRENS,
				},
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(18, {	-- Booty Bay, Stranglethorn
				["cr"] = 2858,	-- Gringer <Wind Rider Master>
				["coord"] = { 26.8, 77.0, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
			}),
			fp(19, {	-- Booty Bay, Stranglethorn
				["cr"] = 2859,	-- Gyll <Gryphon Master>
				["coord"] = { 27.4, 77.6, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(20, {	-- Grom'gol, Stranglethorn
				["cr"] = 1387,	-- Thysta <Wind Rider Master>
				["coord"] = { 32.6, 29.2, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			prof(BLACKSMITHING, {
				n(2836, {	-- Brikk Keencraft <Master Blacksmith>
					["coord"] = { 29.0, 75.4, MAP.STRANGLETHORN_VALE },
					["groups"] = BLACKSMITHING_RECIPES.ARTISAN,
				}),
			}),
			prof(ENGINEERING, {
				n(7406, {	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, MAP.STRANGLETHORN_VALE },
					["groups"] = ALL_GNOMISH_ENGINEERING,
				}),
			}),
			prof(LEATHERWORKING, {
				n(7871, {	-- Se'Jib <Master Tribal Leatherworker>
					["coord"] = { 36.6, 34.2, MAP.STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["groups"] = CLASSIC_TBC_TRIBAL,
				}),
			}),
		}),
		n(QUESTS, {
			q(610, {	-- "Pretty Boy" Duncan
				["sourceQuest"] = 603,	-- Ansirem's Key
				["qg"] = 2542,	-- Catelyn the Blade
				["coord"] = { 27.3, 77.5, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					objective(1, {	-- 0/1 Catelyn's Blade
						["provider"] = { "i", 4027 },	-- Catelyn's Blade
						["coord"] = { 27.6, 69.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 2545,	-- "Pretty Boy" Duncan
					}),
				},
			}),
			q(617, {	-- Akiris by the Bundle (1/2)
				["qg"] = 2494,	-- Privateer Bloads
				["coord"] = { 27.4, 76.8, MAP.STRANGLETHORN_VALE },
				["lvl"] = 38,
				["groups"] = {
					objective(1, {	-- 0/10 Akiris Reed
						["provider"] = { "i", 4029 },	-- Akiris Reed
						["cr"] = 1907,	-- Naga Explorer
					}),
					i(4117),	-- Scorching Sash
				},
			}),
			q(623, {	-- Akiris by the Bundle (2/2)
				["sourceQuest"] = 617,	-- Akiris by the Bundle (1/2)
				["qg"] = 2494,	-- Privateer Bloads
				["qi"] = 4028,	-- Bundle of Akiris Reeds
				["coord"] = { 27.4, 76.8, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.DUSTWALLOW_MARSH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 38,
			}),
			q(3721, {	-- An OOX of Your Own
				["sourceQuests"] = {
					648,	-- Rescue OOX-17/TN! (Tanaris)
					836,	-- Rescue OOX-09/HL! (Hinterlands)
					2767,	-- Rescue OOX-22/FE! (Feralas)
				},
				["qg"] = 7406,	-- Oglethorpe Obnoticus
				["coord"] = { 28.2, 76.2, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
				["groups"] = {
					i(10398),	-- Mechanical Chicken (PET!)
				},
			}),
			q(603, {	-- Ansirem's Key
				["sourceQuest"] = 602,	-- Magical Analysis
				["qg"] = 2543,	-- Archmage Ansirem Runeweaver
				["coord"] = { 18.8, 78.5, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			pvp(q(7838, {	-- Arena Grandmaster
				["sourceQuest"] = 7810,	-- Arena Master
				["qg"] = 14508,	-- Short John Mithril
				["coord"] = { 29.6, 47.4, MAP.STRANGLETHORN_VALE },
				["cost"] = { { "i", 18706, 12 } },	-- Arena Master (trinket)
				["repeatable"] = true,
				["groups"] = {
					i(19024),	-- Arena Grand Master
				},
			})),
			pvp(q(7810, {	-- Arena Master
				["provider"] = { "i", 18706 },	-- Arena Master (trinket)
				["coord"] = { 30.5, 47.8, MAP.STRANGLETHORN_VALE },
			})),
			q(4621, {	-- Avast Ye, Admiral!
				["description"] = "This quest also requires you to be hated or lower with Booty Bay.",
				["sourceQuest"] = 1036,	-- Avast Ye, Scallywag
				["qg"] = 2546,	-- Fleet Master Firallon
				["coord"] = { 30.6, 90.6, MAP.STRANGLETHORN_VALE },
				["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
				["lvl"] = 55,
				["groups"] = {
					i(12185),	-- Bloodsail Admiral's Hat
				},
			}),
			q(1036, {	-- Avast Ye, Scallywag
				["qg"] = 2545,	-- "Pretty Boy" Duncan
				["coord"] = { 27.4, 69.4, MAP.STRANGLETHORN_VALE },
				["minReputation"] = { FACTION_BLOODSAIL_BUCCANEERS, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
				["isBreadcrumb"] = true,
				["lvl"] = 55,
			}),
			q(204, {	-- Bad Medicine
				["qg"] = 733,	-- Sergeant Yohwa
				["coord"] = { 38.0, 3.3, MAP.STRANGLETHORN_VALE },
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
						["coord"] = { 44.5, 9.8, MAP.STRANGLETHORN_VALE },
					}),
					i(4126),	-- Guerrilla Cleaver
					i(4140),	-- Palm Frond Mantle
				},
			}),
			q(208, {	-- Big Game Hunter
				["sourceQuests"] = {
					193,	-- Panther Mastery
					197,	-- Raptor Mastery
					188,	-- Tiger Mastery
				},
				["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
				["coord"] = { 35.7, 10.8, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/1 Head of Bangalash
						["provider"] = { "i", 3880 },	-- Head of Bangalash
						["coord"] = { 38.6, 35.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 731,	-- King Bangalash
					}),
					i(17686),	-- Master Hunter's Bow
					i(17687),	-- Master Hunter's Rifle
				},
			}),
			q(584, {	-- Bloodscalp Clan Heads
				["sourceQuest"] = 582,	-- Headhunting
				["qg"] = 2497,	-- Nimboya
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Gan'zulah's Head
						["provider"] = { "i", 3904 },	-- Gan'zulah's Head
						["coord"] = { 23.8, 8.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
					}),
					objective(2, {	-- 0/1 Nezzliok's Head
						["provider"] = { "i", 3905 },	-- Nezzliok's Head
						["coord"] = { 23.6, 9.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
					}),
				},
			}),
			q(189, {	-- Bloodscalp Ears
				["qg"] = 737,	-- Kebok
				["coord"] = { 27.00, 77.13, MAP.STRANGLETHORN_VALE },
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
					i(4598),	-- Goblin Fishing Pole
				},
			}),
			q(596, {	-- Bloody Bone Necklaces
				["qg"] = 2519,	-- Kin'weelay
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
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
					i(4135),	-- Bloodbone Band
				},
			}),
			q(200, {	-- Bookie Herod
				["sourceQuest"] = 215,	-- Jungle Secrets
				["qg"] = 469,	-- Lieutenant Doren
				["coord"] = { 38.0, 3.0, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(339, {	-- Chapter I
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 2725, 1 },	-- Green Hills of Stranglethorn - Page 1
					{ "i", 2728, 1 },	-- Green Hills of Stranglethorn - Page 4
					{ "i", 2730, 1 },	-- Green Hills of Stranglethorn - Page 6
					{ "i", 2732, 1 },	-- Green Hills of Stranglethorn - Page 8
				},
				["lvl"] = 30,
				["groups"] = {
					i(2756),	-- Green Hills of Stranglethorn - Chapter I
				},
			}),
			q(340, {	-- Chapter II
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 2734, 1 },	-- Green Hills of Stranglethorn - Page 10
					{ "i", 2735, 1 },	-- Green Hills of Stranglethorn - Page 11
					{ "i", 2738, 1 },	-- Green Hills of Stranglethorn - Page 14
					{ "i", 2740, 1 },	-- Green Hills of Stranglethorn - Page 16
				},
				["lvl"] = 30,
				["groups"] = {
					i(2757),	-- Green Hills of Stranglethorn - Chapter II
				},
			}),
			q(341, {	-- Chapter III
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 2742, 1 },	-- Green Hills of Stranglethorn - Page 18
					{ "i", 2744, 1 },	-- Green Hills of Stranglethorn - Page 20
					{ "i", 2745, 1 },	-- Green Hills of Stranglethorn - Page 21
					{ "i", 2748, 1 },	-- Green Hills of Stranglethorn - Page 24
				},
				["lvl"] = 30,
				["groups"] = {
					i(2758),	-- Green Hills of Stranglethorn - Chapter III
				},
			}),
			q(342, {	-- Chapter IV
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 2749, 1 },	-- Green Hills of Stranglethorn - Page 25
					{ "i", 2750, 1 },	-- Green Hills of Stranglethorn - Page 26
					{ "i", 2751, 1 },	-- Green Hills of Stranglethorn - Page 27
				},
				["lvl"] = 30,
				["groups"] = {
					i(2759),	-- Green Hills of Stranglethorn - Chapter IV
				},
			}),
			q(202, {	-- Colonel Kurzen
				["sourceQuest"] = 574,	-- Special Forces
				["qg"] = 469,	-- Lieutenant Doren
				["coord"] = { 38.0, 3.0, MAP.STRANGLETHORN_VALE },
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
						["provider"] = { "i", 3615 },	-- Kurzen's Head
						["coord"] = { 49.6, 4.0, MAP.STRANGLETHORN_VALE },
						["cr"] = 813,	-- Colonel Kurzen
					}),
					i(4127),	-- Shrapnel Blaster
				},
			}),
			q(624, {	-- Cortello's Riddle (1/3)
				["providers"] = {
					{ "i", 4056 },	-- Cortello's Riddle
					{ "o", 2554 },	-- Cortello's Riddle
				},
				["coords"] = {
					{ 29.5, 89.3, MAP.STRANGLETHORN_VALE },
					{ 33.6, 88.3, MAP.STRANGLETHORN_VALE },
				},
				["maps"] = { MAP.SWAMP_OF_SORROWS },
				["lvl"] = 35,
			}),
			q(625, {	-- Cortello's Riddle (2/3)
				["sourceQuest"] = 624,	-- Cortello's Riddle (1/3)
				["provider"] = { "o", 2553 },	-- A Soggy Scroll
				["coord"] = { 22.8, 48.1, MAP.SWAMP_OF_SORROWS },
				["maps"] = { MAP.DUSTWALLOW_MARSH },
				["lvl"] = 35,
			}),
			q(626, {	-- Cortello's Riddle (3/3)
				["sourceQuest"] = 625,	-- Cortello's Riddle (2/3)
				["providers"] = {
					{ "o", 2555 },	-- Musty Scroll
					{ "o", 2556 },	-- Cortello's Treasure
				},
				["coords"] = {
					{ 31.1, 66.1, MAP.DUSTWALLOW_MARSH },
					{ 80.8, 46.8, MAP.THE_HINTERLANDS },
				},
				["lvl"] = 35,
				["groups"] = {
					i(11324, {	-- Explorer's Knapsack
						["coord"] = { 80.8, 46.8, MAP.THE_HINTERLANDS },
					}),
				},
			}),
			q(613, {	-- Cracking Maury's Foot
				["sourceQuest"] = 609,	-- Voodoo Dues
				["qg"] = 2501,	-- "Sea Wolf" MacKinley
				["coord"] = { 27.8, 77.1, MAP.STRANGLETHORN_VALE },
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
					i(4129),	-- Collection Plate
				},
			}),
			q(1116, {	-- Dream Dust in the Swamp
				["sourceQuest"] = 1115,	-- The Rumormonger
				["qg"] = 773,	-- Krazek
				["coord"] = { 27.0, 77.2, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.SWAMP_OF_SORROWS },
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
				["coord"] = { 30.6, 90.6, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["lvl"] = 45,
				["groups"] = {
					i(10697),	-- Enchanted Azsharite Felbane Dagger
					i(10698),	-- Enchanted Azsharite Felbane Staff
					i(10696),	-- Enchanted Azsharite Felbane Sword
				},
			}),
			q(628, {	-- Excelsior
				["sourceQuest"] = 577,	-- Some Assembly Required
				["qg"] = 2495,	-- Drizzlik
				["coord"] = { 28.2, 77.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 31,
				["groups"] = {
					objective(1, {	-- 0/1 Elder Crocolisk Skin
						["provider"] = { "i", 4105 },	-- Elder Crocolisk Skin
						["cr"] = 2635,	-- Elder Saltwater Crocolisk
					}),
					i(4109),	-- Excelsior Boots
				},
			}),
			q(2765, {	-- Expert Blacksmith!
				["sourceQuests"] = {
					2761,	-- Smelt On, Smelt Off
					2762,	-- The Great Silver Deceiver
					2763,	-- The Art of the Imbue
				},
				["qg"] = 7802,	-- Galvan the Ancient
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["requireSkill"] = BLACKSMITHING,
				["lvl"] = 40,
				["groups"] = {
					i(8703,	{	-- Signet of Expertise
						i(8708, {	-- Hammer of Expertise
							["collectible"] = false,
						}),
					}),
				},
			}),
			q(8554, {	-- Facing Negolash
				["sourceQuest"] = 8553,	-- The Captain's Cutlass
				["altQuests"] = { 618 },	-- Facing Negolash [Old]
				["qg"] = 2594,	-- Sprogger
				["coord"] = { 26.7, 73.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 35,
				["groups"] = {
					q(619, {	-- Enticing Negolash
						["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Facing Negolash\" in your quest log.",
						["provider"] = { "o", 2289 },	-- Ruined Lifeboat
						["cost"] = {
							{ "i", 4457, 10 },	-- Barbecued Buzzard Wing
							{ "i", 4595, 5 },	-- Junglevine Wine
						},
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Smotts' Cutlass
								["questID"] = 8554,	-- Facing Negolash
								["provider"] = { "i", 3935 },	-- Smotts' Cutlass
								["coord"] = { 32.5, 81.9, MAP.STRANGLETHORN_VALE },
								["cr"] = 1494,	-- Negolash
							}),
						},
					}),
					i(4130),	-- Smotts' Compass
				},
			}),
			q(627, {	-- Favor for Krazek
				["qg"] = 773,	-- Krazek
				["coord"] = { 26.95, 77.21, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.ARATHI_HIGHLANDS },
				["cost"] = { { "i", 4278, 4 } },	-- Lesser Bloodstone Ore
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			q(4785, {	-- Fine Gold Thread
				["qg"] = 2670,	-- Xizk Goodstitch <Tailoring Supplies>
				["coord"] = { 28.6, 76.8, MAP.STRANGLETHORN_VALE },
				["classes"] = { WARLOCK },
				["repeatable"] = true,
				["lvl"] = 31,
				["groups"] = {
					i(12293),	-- Fine Gold Thread
				},
			}),
			q(2764, {	-- Galvan's Finest Pupil
				["sourceQuests"] = {
					2761,	-- Smelt On, Smelt Off
					2762,	-- The Great Silver Deceiver
					2763,	-- The Art of the Imbue
				},
				["qg"] = 7802,	-- Galvan the Ancient
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["lvl"] = 40,
			}),
			q(2932, {	-- Grim Message
				["qg"] = 2497,	-- Nimboya
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.THE_HINTERLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- Place the grim message.
						["provider"] = { "i", 9319 },	-- Nimboya's Laden Pike
						["coord"] = { 32.0, 58.0, MAP.THE_HINTERLANDS },
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
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/20 Shrunken Head
						["provider"] = { "i", 1532 },	-- Shrunken Head
						["cr"] = 671,	-- Bloodscalp Headhunter
					}),
					i(4133),	-- Darkspear Cuffs
					i(4132),	-- Darkspear Armsplints
				},
			}),
			q(213, {	-- Hostile Takeover
				["qg"] = 737,	-- Kebok
				["coord"] = { 27.00, 77.13, MAP.STRANGLETHORN_VALE },
				["lvl"] = 31,
				["groups"] = {
					objective(1, {	-- Tumbled Crystal
						["provider"] = { "i", 4106 },	-- Tumbled Crystal
						["cr"] = 1096,	-- Venture Co. Geologist
					}),
					i(4121),	-- Gemmed Gloves
				},
			}),
			q(581, {	-- Hunt for Yenniku
				["qg"] = 2497,	-- Nimboya
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 26.95, 77.21, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
			}),
			q(215, {	-- Jungle Secrets
				["description"] = "Every so often, Thorsen will go on patrol. If you follow him, he will be ambushed by two of Kurzen's lackeys - if he survives, he will offer you this quest.",
				["qg"] = 738,	-- Private Thorsen
				["coord"] = { 40.0, 8.0, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(576, {	-- Keep An Eye Out
				["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
				["qg"] = 2493,	-- Dizzy One-Eye
				["coord"] = { 28.6, 75.9, MAP.STRANGLETHORN_VALE },
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
				["qg"] = 770,	-- Corporal Kaleb
				["qi"] = 4085,	-- Krazek's Crock Pot
				["coord"] = { 37.7, 3.3, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			q(207, {	-- Kurzen's Mystery
				["qg"] = 739,	-- Brother Nimetz
				["coord"] = { 37.8, 3.6, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 The First Troll Legend
						["providers"] = {
							{ "i", 2005 },	-- The First Troll Legend
							{ "o", 57 },	-- Moon Over the Vale
						},
						["coord"] = { 29.5, 19.2, MAP.STRANGLETHORN_VALE },
					}),
					objective(2, {	-- 0/1 The Second Troll Legend
						["providers"] = {
							{ "i", 2006 },	-- The Second Troll Legend
							{ "o", 58 },	-- Gri'lek the Wanderer
						},
						["coords"] = {
							{ 24.8, 22.8, MAP.STRANGLETHORN_VALE },
							{ 24.8, 23.1, MAP.STRANGLETHORN_VALE },
						},
					}),
					objective(3, {	-- 0/1 The Third Troll Legend
						["providers"] = {
							{ "i", 2007 },	-- The Third Troll Legend
							{ "o", 52 },	-- Fall of Gurubashi
						},
						["coord"] = { 23.0, 12.0, MAP.STRANGLETHORN_VALE },
					}),
					objective(4, {	-- 0/1 The Fourth Troll Legend
						["providers"] = {
							{ "i", 2008 },	-- The Fourth Troll Legend
							{ "o", 54 },	-- The Emperor's Tomb
						},
						["coord"] = { 23.7, 9.0, MAP.STRANGLETHORN_VALE },
					}),
				},
			}),
			q(602, {	-- Magical Analysis
				["sourceQuest"] = 601,	-- Water Elementals
				["qg"] = 2496,	-- Baron Revilgaz
				["qi"] = 3960,	-- Bag of Water Elemental Bracers
				["coord"] = { 27.2, 76.8, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			q(206, {	-- Mai'Zoth
				["sourceQuests"] = {
					202,	-- Colonel Kurzen
					205,	-- Troll Witchery
				},
				["qg"] = 739,	-- Brother Nimetz
				["coord"] = { 37.8, 3.6, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Mind's Eye
						["provider"] = { "i", 3616 },	-- Mind's Eye
						["cr"] = 818,	-- Mai'Zoth
					}),
					i(4125),	-- Tranquil Orb
				},
			}),
			q(3645, {	-- Membership Card Renewal [H]
				["sourceQuest"] = 3643,	-- Show Your Work
				["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
				["coord"] = { 28.2, 76.2, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["cost"] = { { "g", 20000 } },	-- 2g
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["repeatable"] = true,
				["lvl"] = 30,
				["groups"] = {
					i(10790),	-- Gnome Engineer Membership Card
				},
			}),
			q(594, {	-- Message in a Bottle (1/2)
				["provider"] = { "i", 4098 },	-- Carefully Folded Note
				["lvl"] = 45,
			}),
			q(630, {	-- Message in a Bottle (2/2)
				["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
				["qg"] = 2634,	-- Princess Poobah
				["coord"] = { 38.4, 80.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 42,
				["groups"] = {
					objective(1, {	-- 0/1 Shackle Key
						["provider"] = { "i", 4103 },	-- Shackle Key
						["coord"] = { 40.8, 83.2, MAP.STRANGLETHORN_VALE },
						["cr"] = 1559,	-- King Mukla
					}),
					i(4118),	-- Poobah's Nose Ring
				},
			}),
			q(570, {	-- Mok'thardin's Enchantment (1/4)
				["qg"] = 2465,	-- Far Seer Mok'thardin
				["coord"] = { 32.0, 29.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.0, 29.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.0, 29.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.0, 29.2, MAP.STRANGLETHORN_VALE },
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
						["coord"] = { 28.9, 62.0, MAP.STRANGLETHORN_VALE },
					}),
					i(4112),	-- Choker of the High Shaman
				},
			}),
			q(190, {	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
				["sourceQuest"] = 583,	-- Welcome to the Jungle
				["qg"] = 718,	-- Sir S. J. Erlgadin
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Young Panther slain
						["provider"] = { "n", 683 },	-- Young Panther
					}),
				},
			}),
			q(193, {	-- Panther Mastery (4/4)
				["sourceQuest"] = 192,	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
				["qg"] = 718,	-- Sir S. J. Erlgadin
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/1 Fang of Bhag'thera
						["provider"] = { "i", 3876 },	-- Fang of Bhag'thera
						["coords"] = {
							{ 49.0, 20.6, MAP.STRANGLETHORN_VALE },
							{ 49.8, 24.6, MAP.STRANGLETHORN_VALE },
							{ 47.8, 28.0, MAP.STRANGLETHORN_VALE },
						},
						["cr"] = 728,	-- Bhag'thera
					}),
					i(4108),	-- Panther Hunter Leggings
				},
			}),
			q(192, {	-- Panther Prowess [CATA+] / Panther Mastery (3/4)
				["sourceQuest"] = 191,	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
				["qg"] = 718,	-- Sir S. J. Erlgadin
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Shadowmaw Panther slain
						["provider"] = { "n", 684 },	-- Shadowmaw Panther
					}),
				},
			}),
			q(191, {	-- Panther Stalking [CATA+] / Panther Mastery (2/4)
				["sourceQuest"] = 190,	-- Panther Hunting [CATA+] / Panther Mastery (1/4)
				["qg"] = 718,	-- Sir S. J. Erlgadin
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Panther slain
						["provider"] = { "n", 736 },	-- Panther
					}),
				},
			}),
			q(330, {	-- Patrol Schedules
				["sourceQuest"] = 329,	-- The Spy Revealed!
				["qg"] = 469,	-- Lieutenant Doren
				["coord"] = { 38.0, 3.0, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(194, {	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
				["sourceQuest"] = 583,	-- Welcome to the Jungle
				["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
				["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Stranglethorn Raptor slain
						["provider"] = { "n", 685 },	-- Stranglethorn Raptor
					}),
				},
			}),
			q(197, {	-- Raptor Mastery (4/4)
				["sourceQuest"] = 196,	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
				["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
				["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/1 Talon of Tethis
						["provider"] = { "i", 3877 },	-- Talon of Tethis
						["coord"] = { 29.6, 44.8, MAP.STRANGLETHORN_VALE },
						["cr"] = 730,	-- Tethis
					}),
					i(4119),	-- Raptor Hunter Tunic
				},
			}),
			q(196, {	-- Raptor Prowess [CATA+] / Raptor Mastery (3/4)
				["sourceQuest"] = 195,	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
				["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
				["coord"] = { 35.7, 10.8, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Jungle Stalker slain
						["provider"] = { "n", 687 },	-- Jungle Stalker
					}),
				},
			}),
			q(195, {	-- Raptor Stalking [CATA+] / Raptor Mastery (2/4)
				["sourceQuest"] = 194,	-- Raptor Hunting [CATA+] / Raptor Mastery (1/4)
				["qg"] = 715,	-- Hemet Nesingwary Jr. [TBC+] / Hemet Nesingwary
				["coord"] = { 35.7, 10.8, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Lashtail Raptor slain
						["provider"] = { "n", 686 },	-- Lashtail Raptor
					}),
				},
			}),
			q(331, {	-- Report to Doren
				["sourceQuest"] = 330,	-- Patrol Schedules
				["qg"] = 1422,	-- Corporal Sethman
				["coord"] = { 37.7, 3.4, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(4123),	-- Frost Metal Pauldrons
					i(4139),	-- Junglewalker Sandals
				},
			}),
			q(622, {	-- Return to Corporal Kaleb
				["sourceQuest"] = 627,	-- Favor for Krazek
				["qg"] = 773,	-- Krazek
				["qi"] = 1987,	-- Krazek's Fixed Pot
				["coord"] = { 26.95, 77.21, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					i(4124),	-- Cap of Harmony
				},
			}),
			q(607, {	-- Return to MacKinley
				["sourceQuest"] = 606,	-- Scaring Shaky
				["qg"] = 2502,	-- \"Shaky\" Phillipe
				["qi"] = 3922,	-- Shaky's Payment
				["coord"] = { 26.9, 73.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
			}),
			q(3626, {	-- Return to the Blasted Lands
				["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
				["qg"] = 7802,	-- Galvan the Ancient
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.SWAMP_OF_SORROWS },
				["lvl"] = 45,
			}),
			q(592, {	-- Saving Yenniku
				["sourceQuest"] = 591,	-- The Mind's Eye
				["qg"] = 2519,	-- Kin'weelay
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					q(593, {	-- Filling the Soul Gem
						["qg"] = 2530,	-- Yenniku <Darkspear Hostage>
						["coord"] = { 39.0, 58.2, MAP.STRANGLETHORN_VALE },
						["cost"] = { { "i", 3912, 1 } },	-- Soul Gem
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Filled Soul Gem
								["questID"] = 592,	-- Saving Yenniku
								["provider"] = { "i", 3913 },	-- Filled Soul Gem
							}),
						},
					}),
					i(4134),	-- Nimboya's Mystical Staff
					i(6723),	-- Medal of Courage
				},
			}),
			q(606, {	-- Scaring Shaky
				["qg"] = 2501,	-- "Sea Wolf" MacKinley
				["coord"] = { 27.78, 77.07, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/5 Mistvale Giblets
						["provider"] = { "i", 3919 },	-- Mistvale Giblets
						["cr"] = 1557,	-- Elder Mistvale Gorilla
					}),
				},
			}),
			q(3643, {	-- Show Your Work
				["sourceQuest"] = 3642,	-- The Pledge of Secrecy
				["altQuests"] = { 3639, 3641 },	-- The Pledge of Secrecy
				["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
				["coord"] = { 28.2, 76.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 27.12, 77.22, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 27.00, 77.13, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 3575, 40 },	-- Iron Bar
					{ "i", 3860, 40 },	-- Mithril Bar
				},
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["lvl"] = 40,
				["groups"] = {
					i(7983),	-- Plans: Ornate Mithril Pants (RECIPE!)
				},
			}),
			q(577, {	-- Some Assembly Required
				["qg"] = 2495,	-- Drizzlik
				["coord"] = { 28.2, 77.6, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.2, 27.7, MAP.STRANGLETHORN_VALE },
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
						["coord"] = { 44.6, 44.2, MAP.STRANGLETHORN_VALE },
						["cr"] = 1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
					}),
				},
			}),
			q(585, {	-- Speaking with Nezzliok
				["sourceQuest"] = 584,	-- Bloodscalp Clan Heads
				["provider"] = { "o", 2076 },	-- Bubbling Cauldron
				["coord"] = { 32.2, 27.7, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Balia'mah Trophy
						["providers"] = {
							{ "i", 3906 },	-- Balia'mah Trophy
							{ "o", 2891 },	-- Balia'mah Trophy Skulls
						},
						["coord"] = { 46.1, 32.4, MAP.STRANGLETHORN_VALE },
					}),
					objective(2, {	-- 0/1 Ziata'jai Trophy
						["providers"] = {
							{ "i", 3907 },	-- Ziata'jai Trophy
							{ "o", 2892 },	-- Ziata'jai Trophy Skulls
						},
						["coord"] = { 42.2, 36.1, MAP.STRANGLETHORN_VALE },
					}),
					objective(3, {	-- 0/1 Zul'Mamwe Trophy
						["providers"] = {
							{ "i", 3908 },	-- Zul'Mamwe Trophy
							{ "o", 2893 },	-- Zul'Mamwe Trophy Skulls
						},
						["coord"] = { 47.6, 39.5, MAP.STRANGLETHORN_VALE },
					}),
				},
			}),
			q(574, {	-- Special Forces
				["sourceQuests"] = {
					204,	-- Bad Medicine
					203,	-- The Second Rebellion
				},
				["qg"] = 733,	-- Sergeant Yohwa
				["coord"] = { 38.0, 3.3, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
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
					i(4137),	-- Darkspear Shoes
					i(4136),	-- Darkspear Boots
				},
			}),
			q(348, {	-- Stranglethorn Fever
				["qg"] = 2486,	-- Fin Fizracket
				["coord"] = { 27.6, 76.7, MAP.STRANGLETHORN_VALE },
				["lvl"] = 40,
				["groups"] = {
					q(349, {	-- Stranglethorn Fever
						["qg"] = 1449,	-- Witch Doctor Unbagwa
						["coord"] = { 35.2, 60.4, MAP.STRANGLETHORN_VALE },
						["cost"] = { { "i", 2799, 10 } },	-- Gorilla Fang
						["repeatable"] = true,
						["lvl"] = 32,
						["groups"] = {
							objective(1, {	-- 0/1 Heart of Mokk
								["questID"] = 348,	-- Stranglethorn Fever
								["provider"] = { "i", 2797 },	-- Heart of Mokk
								["coord"] = { 35.2, 60.4, MAP.STRANGLETHORN_VALE },
								["cr"] = 1514,	-- Mokk the Savage
							}),
						},
					}),
					i(4113),	-- Medicine Blanket
				},
			}),
			q(198, {	-- Supplies to Private Thorsen
				["qg"] = 773,	-- Krazek
				["qi"] = 2252,	-- Miscellaneous Goblin Supplies
				["coord"] = { 26.95, 77.21, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(575, {	-- Supply and Demand
				["qg"] = 2495,	-- Drizzlik
				["coord"] = { 28.29, 77.59, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 3860, 40 },	-- Iron Bar
					{ "i", 3864, 4 },	-- Citrine
				},
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["lvl"] = 40,
				["groups"] = {
					i(7985),	-- Plans: Ornate Mithril Shoulders (RECIPE!)
				},
			}),
			q(595, {	-- The Bloodsail Buccaneers (1/5)
				["qg"] = 2490,	-- First Mate Crazz
				["coord"] = { 28.1, 76.2, MAP.STRANGLETHORN_VALE },
				["lvl"] = 37,
			}),
			q(597, {	-- The Bloodsail Buccaneers (2/5)
				["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1/5)
				["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
				["coord"] = { 27.3, 69.5, MAP.STRANGLETHORN_VALE },
				["lvl"] = 37,
			}),
			q(599, {	-- The Bloodsail Buccaneers (3/5)
				["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2/5)
				["qg"] = 2490,	-- First Mate Crazz
				["coord"] = { 28.1, 76.2, MAP.STRANGLETHORN_VALE },
				["lvl"] = 37,
			}),
			q(604, {	-- The Bloodsail Buccaneers (4/5)
				["sourceQuest"] = 599,	-- The Bloodsail Buccaneers (3/5)
				["qg"] = 2487,	-- Fleet Master Seahorn
				["coord"] = { 27.2, 77.0, MAP.STRANGLETHORN_VALE },
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
							{ 29.6, 80.8, MAP.STRANGLETHORN_VALE },
							{ 27.2, 82.7, MAP.STRANGLETHORN_VALE },
						},
					}),
					objective(3, {	-- 0/1 Bloodsail Orders
						["providers"] = {
							{ "i", 3921 },	-- Bloodsail Orders
							{ "o", 2087 },	-- Bloodsail Orders
						},
						["coords"] = {
							{ 29.6, 80.9, MAP.STRANGLETHORN_VALE },
							{ 27.0, 82.4, MAP.STRANGLETHORN_VALE },
						},
					}),
				},
			}),
			q(608, {	-- The Bloodsail Buccaneers (5/5)
				["sourceQuest"] = 604,	-- The Bloodsail Buccaneers (4/5)
				["qg"] = 2487,	-- Fleet Master Seahorn
				["coord"] = { 27.2, 77.0, MAP.STRANGLETHORN_VALE },
				["lvl"] = 37,
				["groups"] = {
					objective(1, {	-- 0/1 Captain Stillwater slain
						["provider"] = { "n", 2550 },	-- Captain Stillwater
						["coord"] = { 33.0, 88.2, MAP.STRANGLETHORN_VALE },
					}),
					objective(2, {	-- 0/1 Captain Keelhaul slain
						["provider"] = { "n", 2548 },	-- Captain Keelhaul
						["coord"] = { 29.2, 88.6, MAP.STRANGLETHORN_VALE },
					}),
					objective(3, {	-- 0/1 Fleet Master Firallon slain
						["provider"] = { "n", 2546 },	-- Fleet Master Firallon
						["coord"] = { 30.6, 90.6, MAP.STRANGLETHORN_VALE },
					}),
					i(4138),	-- Blackwater Tunic
				},
			}),
			q(8551, {	-- The Captain's Chest
				["altQuests"] = { 614 },	-- The Captain's Chest [Old]
				["qg"] = 2500,	-- Captain Hecklebury Smotts
				["coord"] = { 26.7, 73.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Smotts' Chest
						["provider"] = { "i", 3932 },	-- Smotts' Chest
						["coord"] = { 36.6, 69.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 1492,	-- Gorlash
					}),
					i(11469),	-- Bloodband Bracers
				},
			}),
			q(8553, {	-- The Captain's Cutlass
				["sourceQuest"] = 8552,	-- The Monogrammed Sash
				["altQuests"] = { 615 },	-- The Captain's Cutlass [Old]
				["qg"] = 2500,	-- Captain Hecklebury Smotts
				["coord"] = { 26.6, 73.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 35,
			}),
			q(1041, {	-- The Caravan Road
				["sourceQuest"] = 1040,	-- Passage to Booty Bay(The Barrens)
				["qg"] = 3945,	-- Caravaneer Ruzzgot
				["coord"] = { 27.4, 74.1, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(611, {	-- The Curse of the Tides
				["sourceQuest"] = 610,	-- "Pretty Boy" Duncan
				["qg"] = 2542,	-- Catelyn the Blade
				["coord"] = { 27.3, 77.5, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					objective(1, {	-- 0/1 Stone of the Tides
						["providers"] = {
							{ "i", 4034 },	-- Stone of the Tides
							{ "i", 4027 },	-- Catelyn's Blade
							{ "o", 2576 },	-- Altar of the Tides
						},
						["coord"] = { 25.0, 23.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 2624,	-- Gazban
					}),
					i(4120),	-- Robe of Crystal Waters
				},
			}),
			q(568, {	-- The Defense of Grom'gol (1/2)
				["qg"] = 2464,	-- Commander Aggro'gosh
				["coord"] = { 32.2, 28.8, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.2, 28.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 33,
				["groups"] = {
					objective(1, {	-- 0/10 Mosh'Ogg Brute slain
						["provider"] = { "n", 1142 },	-- Mosh'Ogg Brute
					}),
					objective(2, {	-- 0/5 Mosh'Ogg Witch Doctor slain
						["provider"] = { "n", 1144 },	-- Mosh'Ogg Witch Doctor
					}),
					i(4115),	-- Grom'gol Buckler
				},
			}),
			q(588, {	-- The Fate of Yenniku
				["sourceQuests"] = {
					586,	-- Speaking with Gan'zulah
					585,	-- Speaking with Nezzliok
				},
				["provider"] = { "o", 2076 },	-- Bubbling Cauldron
				["coord"] = { 32.2, 27.7, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(2762, {	-- The Great Silver Deceiver
				["sourceQuest"] = 2760,	-- The Mithril Order
				["qg"] = 7802,	-- Galvan the Ancient
				["coord"] = { 50.6, 20.4, MAP.STRANGLETHORN_VALE },
				["cost"] = {
					{ "i", 3860, 40 },	-- Iron Bar
					{ "i", 6037, 5 },	-- Truesilver Bar
				},
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["lvl"] = 40,
				["groups"] = {
					i(7984),	-- Plans: Ornate Mithril Gloves (RECIPE!)
				},
			}),
			q(338, {	-- The Green Hills of Stranglethorn
				["sourceQuest"] = 583,	-- Welcome to the Jungle
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
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
					i(17688),	-- Jungle Boots
					i(3928),	-- Superior Healing Potion
					i(8173),	-- Thick Armor Kit
				},
			}),
			q(616, {	-- The Haunted Isle
				["qg"] = 773,	-- Krazek
				["coord"] = { 26.95, 77.21, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			q(328, {	-- The Hidden Key
				["sourceQuest"] = 200,	-- Bookie Herod
				["providers"] = {
					{ "o", 287 },	-- Bookie Herod's Records
					{ "i", 2719 },	-- Small Brass Key
				},
				["coord"] = { 43.7, 9.4, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(4122),	-- Bookmaker's Scepter
				},
			}),
			q(591, {	-- The Mind's Eye
				["sourceQuest"] = 589,	-- The Singing Crystals
				["qg"] = 2519,	-- Kin'weelay
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
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
				["qg"] = 7794,	-- McGavan
				["qi"] = 8686,	-- Mithril Pendant
				["coord"] = { 28.8, 75.4, MAP.STRANGLETHORN_VALE },
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["lvl"] = 40,
			}),
			q(8552, {	-- The Monogrammed Sash
				["altQuests"] = { 620 },	-- The Monogrammed Sash [Old]
				["provider"] = { "i", 3985 },	-- Monogrammed Sash
				["lvl"] = 35,
			}),
			q(3642, {	-- The Pledge of Secrecy
				["sourceQuests"] = {
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
				},
				["altQuests"] = { 3638, 3640 },	-- The Pledge of Secrecy
				["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
				["coord"] = { 28.2, 76.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 38.0, 3.3, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(578, {	-- The Stone of the Tides
				["sourceQuest"] = 616,	-- The Haunted Isle
				["qg"] = 2496,	-- Baron Revilgaz
				["qi"] = 3898,	-- Library Scrip
				["coord"] = { 27.2, 76.9, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 32,
			}),
			q(629, {	-- The Vile Reef
				["qg"] = 2519,	-- Kin'weelay
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Tablet Shard
						["providers"] = {
							{ "i", 4094 },	-- Tablet Shard
							{ "o", 58 },	-- Gri'lek the Wanderer
						},
						["coords"] = {
							{ 24.8, 22.8, MAP.STRANGLETHORN_VALE },
							{ 24.8, 23.1, MAP.STRANGLETHORN_VALE },
						},
					}),
				},
			}),
			q(185, {	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
				["sourceQuest"] = 583,	-- Welcome to the Jungle
				["qg"] = 717,	-- Ajeck Rouack
				["coords"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Young Stranglethorn Tiger slain
						["provider"] = { "n", 681 },	-- Young Stranglethorn Tiger
					}),
				},
			}),
			q(188, {	-- Tiger Mastery (4/4)
				["sourceQuest"] = 187,	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
				["qg"] = 717,	-- Ajeck Rouack
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/1 Paw of Sin'Dall
						["provider"] = { "i", 3879 },	-- Paw of Sin'Dall
						["coord"] = { 32.6, 17.2, MAP.STRANGLETHORN_VALE },
						["cr"] = 729,	-- Sin'Dall
					}),
					i(4107),	-- Tiger Hunter Gloves
				},
			}),
			q(187, {	-- Tiger Prowess [CATA+] / Tiger Mastery (3/4)
				["sourceQuest"] = 186,	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
				["qg"] = 717,	-- Ajeck Rouack
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Elder Stranglethorn Tiger slain
						["provider"] = { "n", 1085 },	-- Elder Stranglethorn Tiger
					}),
				},
			}),
			q(186, {	-- Tiger Stalking [CATA+] / Tiger Mastery (2/4)
				["sourceQuest"] = 185,	-- Tiger Hunting [CATA+] / Tiger Mastery (1/4)
				["qg"] = 717,	-- Ajeck Rouack
				["coord"] = { 35.6, 10.6, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/10 Stranglethorn Tiger slain
						["provider"] = { "n", 682 },	-- Stranglethorn Tiger
					}),
				},
			}),
			q(9259, {	-- Traitor to the Bloodsail
				["qg"] = 16399,	-- Bloodsail Traitor
				["coord"] = { 31.8, 70.9, MAP.STRANGLETHORN_VALE },
				["maxReputation"] = { FACTION_BOOTY_BAY, NEUTRAL },	-- Booty Bay, must be less than Neutral
				["cost"] = {
					{ "i", 4306, 40 },	-- Silk Cloth
					{ "i", 2604, 4 },	-- Red Dye
				},
				["repeatable"] = true,
				["lvl"] = 30,
			}),
			q(205, {	-- Troll Witchery
				["sourceQuest"] = 207,	-- Kurzen's Mystery
				["qg"] = 739,	-- Brother Nimetz
				["coord"] = { 37.8, 3.6, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 26.9, 77.3, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 27.1, 77.2, MAP.STRANGLETHORN_VALE },
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
					i(5253),	-- Goblin Igniter
					i(4128),	-- Silver Spade
				},
			}),
			q(609, {	-- Voodoo Dues
				["sourceQuest"] = 607,	-- Return to MacKinley
				["qg"] = 2501,	-- "Sea Wolf" MacKinley
				["coord"] = { 27.8, 77.1, MAP.STRANGLETHORN_VALE },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- Maury's Clubbed Foot
						["provider"] = { "i", 3924 },	-- Maury's Clubbed Foot
						["coord"] = { 35.2, 51.0, MAP.STRANGLETHORN_VALE },
						["cr"] = 2535,	-- Maury "Club Foot" Wilkins
					}),
					objective(2, {	-- Jon-Jon's Golden Spyglass
						["provider"] = { "i", 3925 },	-- Jon-Jon's Golden Spyglass
						["coord"] = { 34.8, 51.8, MAP.STRANGLETHORN_VALE },
						["cr"] = 2536,	-- Jon-Jon the Crow
					}),
					objective(3, {	-- Chucky's Huge Ring
						["provider"] = { "i", 3926 },	-- Chucky's Huge Ring
						["coord"] = { 40.2, 58.6, MAP.STRANGLETHORN_VALE },
						["cr"] = 2537,	-- Chucky "Ten Thumbs"
					}),
				},
			}),
			q(601, {	-- Water Elementals
				["sourceQuest"] = 578,	-- The Stone of the Tides
				["qg"] = 2496,	-- Baron Revilgaz
				["coord"] = { 27.2, 76.9, MAP.STRANGLETHORN_VALE },
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
				["qg"] = 716,	-- Barnil Stonepot
				["coord"] = { 35.7, 10.5, MAP.STRANGLETHORN_VALE },
				["lvl"] = 28,
			}),
			q(580, {	-- Whiskey Slim's Lost Grog
				["qg"] = 2491,	-- Whiskey Slim
				["coord"] = { 27.1, 77.5, MAP.STRANGLETHORN_VALE },
				["maps"] = { MAP.THE_HINTERLANDS },
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/12 Pupellyverbos Port
						["providers"] = {
							{ "i", 3900 },	-- Pupellyverbos Port
							{ "o", 2068 },	-- Pupellyverbos Port
						},
						["coords"] = {
							{ 81.7, 49.3, MAP.THE_HINTERLANDS },
							{ 80.0, 59.8, MAP.THE_HINTERLANDS },
							{ 79.4, 70.4, MAP.THE_HINTERLANDS },
							{ 79.6, 81.5, MAP.THE_HINTERLANDS },
							{ 73.3, 96.9, MAP.THE_HINTERLANDS },
						},
					}),
					i(17048),	-- Rumsey Rum
				},
			}),
			q(621, {	-- Zanzil's Secret
				["qg"] = 2498,	-- Crank Fizzlebub
				["coord"] = { 27.1, 77.2, MAP.STRANGLETHORN_VALE },
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
					i(4131),	-- Belt of Corruption
				},
			}),
		}),
		n(RARES, {
			n(14487, {	-- Gluggl [CATA+] / Gluggle
				["coord"] = { 34.4, 22.4, MAP.STRANGLETHORN_VALE },
			}),
			n(11383, {	-- High Priestess Hai'watna
				["coords"] = {
					{ 51.4, 16.6, MAP.STRANGLETHORN_VALE },
					{ 51.6, 18.6, MAP.STRANGLETHORN_VALE },
				},
			}),
			n(14491, {	-- Kurmokk
				["coords"] = {
					{ 31.8, 68.2, MAP.STRANGLETHORN_VALE },
					{ 35.8, 63.8, MAP.STRANGLETHORN_VALE },
				},
			}),
			n(2541, {	-- Lord Sakrasis
				["coord"] = { 28.6, 62.2, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(5028),	-- Lord Sakrasis' Scepter
					i(5029),	-- Talisman of the Naga Lord
				},
			}),
			n(723, {	-- Mosh'Ogg Butcher
				["coord"] = { 51.0, 31.8, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(1680),	-- Headchopper
				},
			}),
			n(14490, {	-- Rippa
				["coords"] = {
					{ 24.2, 58.0, MAP.STRANGLETHORN_VALE },
					{ 25.4, 73.6, MAP.STRANGLETHORN_VALE },
					{ 26.8, 85.0, MAP.STRANGLETHORN_VALE },
					{ 30.4, 86.0, MAP.STRANGLETHORN_VALE },
					{ 34.0, 83.6, MAP.STRANGLETHORN_VALE },
					{ 35.6, 74.8, MAP.STRANGLETHORN_VALE },
				},
			}),
			n(14488, {	-- Roloch
				["coords"] = {
					{ 38.0, 24.8, MAP.STRANGLETHORN_VALE },
					{ 27.0, 31.8, MAP.STRANGLETHORN_VALE },
				},
			}),
			n(1552, {	-- Scale Belly
				["coord"] = { 44.0, 48.2, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(1604),	-- Chromatic Sword
					i(4478),	-- Iridescent Scale Leggings
				},
			}),
			n(14492, {	-- Verifonix <The Surveyor>
				["coord"] = { 36.8, 56.0, MAP.STRANGLETHORN_VALE },
			}),
		}),
		n(TREASURES, {
			pvp(o(179697, {	-- Arena Treasure Chest
				["description"] = "Chest is dropped in arena every 3 hours.\n\nWARNING: FREE-FOR-ALL PVP EVENT\n12AM, 3PM, 6PM, 9PM, 12PM, 3AM, 6AM, 9AM",
				["coord"] = { 30.5, 47.8, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(18706),	-- Arena Master
					i(18711),	-- Arena Bands
					i(18710),	-- Arena Bracers
					i(18712),	-- Arena Vambraces
					i(18709),	-- Arena Wristguards
				},
			})),
			o(2744, {	-- Giant Clam
				["coord"] = { 25.8, 28.0, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(4611),	-- Blue Pearl
					i(4655),	-- Giant Clam Meat
				},
			}),
			o(2560, {	-- Half-Buried Bottle
				["coords"] = {
					{ 40.4, 60.6, MAP.STRANGLETHORN_VALE },
					{ 37.0, 65.4, MAP.STRANGLETHORN_VALE },
					{ 36.0, 71.1, MAP.STRANGLETHORN_VALE },
					{ 33.7, 75.0, MAP.STRANGLETHORN_VALE },
					{ 32.8, 78.7, MAP.STRANGLETHORN_VALE },
					{ 36.4, 78.5, MAP.STRANGLETHORN_VALE },
				},
				["lvl"] = 45,
				["groups"] = {
					i(4098),	-- Carefully Folded Note
				},
			}),
		}),
		n(VENDORS, {
			n(2846, {	-- Blixrez Goodstitch <Leatherworking Supplies>
				["coord"] = { 28.2, 77.5, MAP.STRANGLETHORN_VALE },
				["sym"] = {{"select", "itemID",
					2846,	-- Pattern: Thick Murloc Armor (RECIPE!)
					5788,	-- Pattern: Murloc Scale Bracers (RECIPE!)
				}},
			}),
			n(734, {	-- Corporal Bluth <Camp Trader>
				["coord"] = { 38.0, 3.0, MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(12231),	-- Recipe: Jungle Stew (RECIPE!)
					i(12228),	-- Recipe: Roast Raptor (RECIPE!)
				},
			}),
			n(2672, {	-- Cowardly Crosby <Tailoring Supplies>
				["coord"] = { 27.0, 82.5, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(10318, {	-- Pattern: Admiral's Hat (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2838, {	-- Crazk Sparks <Fireworks Merchant>
				["coord"] = { 28.2, 76.6, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(18648, {	-- Schematic: Green Firework (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2845, {	-- Fargon Mortalak <Superior Armorer>
				["coord"] = { 29.0, 75.0, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(12257, {	-- Heavy Notched Belt
						["isLimited"] = true,
					}),
				},
			}),
			n(265575, {	-- Gezzy Gunkgear <Booty Bay Quartermaster>
				coord = { 28.2, 74.8, MAP.STRANGLETHORN_VALE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = bubbleDownClassicRep(FACTION_BOOTY_BAY, {
					{	-- Neutral
						
					}, {	-- Friendly
						i(274745),	-- Deckswabber's Mitts
						i(274746),	-- Sea Giant's Toe Ring
						i(274747),	-- Soggy Boots
					}, {	-- Honored
						i(274748),	-- Booty Bay Bruiser's Buckshot
						i(274749),	-- Souvenier Sea Shell
					}, {	-- Revered
						i(274022),	-- Tough Guy's Eyepatch
					}, {	-- Exalted
					},
				}),
			}),
			n(2848, {	-- Glyx Brewright <Alchemy Supplies>
				["coord"] = { 28.0, 78.0, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 51.0, 35.2, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(13311, {	-- Schematic: Mechanical Dragonling (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2839, {	-- Haren Kanmae <Superior Bowyer>
				["coord"] = { 28.3, 74.6, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(11305, {	-- Dense Shortbow
						["isLimited"] = true,
					}),
				},
			}),
			n(2483, {	-- Jaquilina Dramet <Superior Axecrafter>
				["coord"] = { 35.8, 10.7, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 27.5, 77.5, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 28.2, 74.4, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 28.3, 75.2, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 51.0, 35.2, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(10602, {	-- Schematic: Deadly Scope (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2685, {	-- Mazk Snipeshot <Engineering Supplies>
				["coord"] = { 28.5, 75.1, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(13310),	-- Schematic: Accurate Scope (RECIPE!)
					i(18651),	-- Schematic: Truesilver Transformer (RECIPE!)
				},
			}),
			n(2663, {	-- Narkk <Pirate Supplies>
				["coord"] = { 28.1, 74.4, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(8496),	-- Cockatiel (PET!)
					i(8495),	-- Senegal (PET!)
					i(10728, {	-- Pattern: Black Swashbuckler's Shirt (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1148, {	-- Nerrist <Trade Goods>
				["coord"] = { 32.6, 29.2, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
					i(12231),	-- Recipe: Jungle Stew (RECIPE!)
					i(12228),	-- Recipe: Roast Raptor (RECIPE!)
				},
			}),
			n(2832, {	-- Nixxrax Fillamug <Food & Drink>
				["coord"] = { 40.8, 73.6, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(4595),	-- Junglevine Wine
				},
			}),
			n(2626, {	-- Old Man Heming <Fisherman>
				["coord"] = { 27.4, 77.1, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(16083, {	-- Expert Fishing - The Bass and You
						["rank"] = 3,
					}),
				},
			}),
			n(2849, {	-- Qixdi Goodstitch <Cloth Armor & Accessories>
				["coord"] = { 28.2, 77.6, MAP.STRANGLETHORN_VALE },
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
				["coords"] = { 28.4, 76.0, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(14635, {	-- Pattern: Gem-Studded Leather Belt (RECIPE!)
						["isLimited"] = true,
					}),
					i(18239, {	-- Pattern: Shadowskin Gloves (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1149, {	-- Uthok <General Supplies>
				["coord"] = { 31.6, 28.0, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(16111),	-- Recipe: Spiced Chili Crab (RECIPE!)
				},
			}),
			n(1146, {	-- Vharr <Superior Weaponsmith>
				["coord"] = { 32.2, 28.0, MAP.STRANGLETHORN_VALE },
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
				["coord"] = { 28.7, 76.9, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(7087, {	-- Pattern: Crimson Silk Cloak (RECIPE!)
						["isLimited"] = true,
					}),
					i(14630, {	-- Pattern: Enchanter's Cowl (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2482, {	-- Zarena Cromwind <Superior Weaponsmith>
				["coord"] = { 28.3, 75.5, MAP.STRANGLETHORN_VALE },
				["groups"] = {
					i(12251, {	-- Big Stick
						["isLimited"] = true,
					}),
					i(12163, {	-- Plans: Moonsteel Broadsword (RECIPE!)
						["isLimited"] = true,
					}),
					i(12252, {	-- Staff of Protection
						["isLimited"] = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(1998, {	-- Bloodscalp Channeling Staff
				["cr"] = 697,	-- Bloodscalp Shaman
			}),
			i(5079, {	-- Cold Basilisk Eye
				["cr"] = 690,	-- Cold Eye Basilisk
			}),
			i(1703, {	-- Crystal Basilisk Spine
				["cr"] = 689,	-- Crystal Spine Basilisk
			}),
			i(1677, {	-- Drake-scale Vest
				["cr"] = 680,	-- Mosh'Ogg Lord
			}),
			i(1659, {	-- Engineering Gloves
				["cr"] = 677,	-- Venture Co. Tinkerer
			}),
			i(2955, {	-- First Mate Hat
				["crs"] = {
					2545,	-- "Pretty Boy" Duncan
					4505,	-- Bloodsail Deckhand
					1653,	-- Bloodsail Elder Magus
					1562,	-- Bloodsail Mage
					1561,	-- Bloodsail Raider
					1563,	-- Bloodsail Swashbuckler
					1564,	-- Bloodsail Warlock
				},
			}),
			i(11203, {	-- Formula: Enchant Gloves - Advanced Mining (RECIPE!)
				["cr"] = 674,	-- Venture Co. Strip Miner
			}),
			i(1991, {	-- Goblin Power Shovel
				["crs"] = {
					1094,	-- Venture Co. Miner
				},
			}),
			i(2799),	-- Gorilla Fang
			i(1986, {	-- Gutrender
				["cr"] = 709,	-- Mosh'Ogg Warmonger
			}),
			i(1522, {	-- Headhunting Spear
				["cr"] = 671,	-- Bloodscalp Headhunter
			}),
			i(1523, {	-- Huge Stone Club
				["cr"] = 597,	-- Bloodscalp Berserker
			}),
			i(2633, {	-- Jungle Remedy
				["crs"] = {
					941,	-- Kurzen Headshrinker
					942,	-- Kurzen Witch Doctor
					940,	-- Kurzen Medicine Man
				},
			}),
			i(1679, {	-- Korg Bat
				["cr"] = 1142,	-- Mosh'Ogg Brute
			}),
			i(3985, {	-- Monogrammed Sash
				["coord"] = { 23.0, 71.4, MAP.STRANGLETHORN_VALE },
				["cr"] = 1493,	-- Mok'rash
				["lvl"] = 35,
			}),
			i(5755, {	-- Onyx Shredder Plate
				["cr"] = 4260,	-- Venture Co. Shredder
			}),
			i(8494, {	-- Hyacinth Macaw (PET!)
				["crs"] = {
					4505,	-- Bloodsail Deckhand
					1653,	-- Bloodsail Elder Magus
					4506,	-- Bloodsail Swabby
					1563,	-- Bloodsail Swashbuckler
					1564,	-- Bloodsail Warlock
					2546,	-- Fleet Master Firallon
				},
			}),
			i(5789, {	-- Pattern: Murloc Scale Bracers (RECIPE!)
				["cr"] = 1561,	-- Bloodsail Raider
			}),
			i(5788, {	-- Pattern: Thick Murloc Armor (RECIPE!)
				["cr"] = 938,	-- Kurzen Commando
			}),
			i(1997, {	-- Pressed Felt Robe
				["cr"] = 701,	-- Bloodscalp Mystic
			}),
			i(9294, {	-- Recipe: Wildvine Potion (RECIPE!)
				["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
			}),
			i(1624, {	-- Skullsplitter Helm
				["crs"] = {
					783,	-- Skullsplitter Berserker
					781,	-- Skullsplitter Headhunter
				},
			}),
			i(1664, {	-- Spellforce Rod
				["cr"] = 676,	-- Venture Co. Surveyor
			}),
			i(1652, {	-- Sturdy Lunchbox
				["crs"] = {
					675,	-- Venture Co. Foreman
					14492,	-- Verifonix <The Surveyor>
				},
			}),
			i(1996, {	-- Voodoo Band
				["cr"] = 660,	-- Bloodscalp Witch Doctor
			}),
			i(8153, {	-- Wildvine
				["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
			}),
		}),
	},
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CLASSIC, {
	m(MAP.EASTERN_KINGDOMS, {
		m(MAP.STRANGLETHORN_VALE, {
			q(7908, {["timeline"] = { ADDED_1_12_1 }}),	-- Arena Master [Old] - completed with quest 7810
			q(618),	-- Facing Negolash [Old] - completed with quest 8554
			q(614),	-- The Captain's Chest [Old] - completed with quest 8551
			q(615, {["timeline"] = { ADDED_1_12_1 }}),	-- The Captain's Cutlass [Old] - completed with quest 8553
			q(620, {["timeline"] = { ADDED_1_12_1 }}),	-- The Monogrammed Sash [Old] - completed with quest 8552
		}),
	}),
}));
