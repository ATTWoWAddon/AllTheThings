-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

ExportDB.OnTooltipDB.ForAlteracValley = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Concerted Efforts", 150, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill the General", 389, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill a Captain", 125, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill a Commander", 12, 42000);
		addRepInfo(tooltipInfo, reputation, "Kill an Air Master", 5, 42000);
		if reputation < 21000 then
			addRepInfo(tooltipInfo, reputation, "Kill a Guard (To Revered)", 5, 21000);
		end
	end
end]];

battleground(MAP.ALTERAC_VALLEY, {
	["lore"] = "Alterac Valley is a battleground players fight in frosty Alterac between the Frostwolf Clan (Horde) and Stormpike Guard (Alliance). Alterac Valley is notable both for how many people can queue per side (40) as well as how much honor each game rewards.",
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["icon"] = 236388,
	["lvl"] = 51,
	["groups"] = {
		n(13419, {	-- Ivus the Forest Lord
			["isRaid"] = true,
			["races"] = HORDE_ONLY,
			["groups"] = sharedData({ ["timeline"] = { TIMELINE.CREATED_1_60_1 } }, {
				i(19110),	-- Cold Forged Blade
				i(19105),	-- Frost Runed Headdress
				i(19111),	-- Winteraxe Epaulets
				i(19112),	-- Frozen Steel Vambraces
				i(19113),	-- Yeti Hide Bracers
				i(19109),	-- Deep Rooted Ring
			}),
		}),
		n(13256, {	-- Lokholar the Ice Lord
			["isRaid"] = true,
			["races"] = ALLIANCE_ONLY,
			["groups"] = sharedData({ ["timeline"] = { TIMELINE.CREATED_1_60_1 } }, {
				i(19110),	-- Cold Forged Blade
				i(19105),	-- Frost Runed Headdress
				i(19111),	-- Winteraxe Epaulets
				i(19112),	-- Frozen Steel Vambraces
				i(19113),	-- Yeti Hide Bracers
				i(19109),	-- Deep Rooted Ring
			}),
		}),
		n(ACHIEVEMENTS, {
			-- CRIEVE NOTE: Not sure which one is which.
			ach(62046, {	-- Master of Alterac Valley
				--["races"] = HORDE_ONLY,
			}),
			ach(64026, {	-- Master of Alterac Valley
				--["races"] = ALLIANCE_ONLY,
			}),
		}),
		explorationHeader({
			exploration(2959),	-- Dun Baldar
			exploration(3299),	-- Dun Baldar Pass
			exploration(3057),	-- Field of Strife
			exploration(2978),	-- Frostwolf Keep
			exploration(3318),	-- Rock of Durotan
			exploration(2977),	-- Iceblood Garrison
		}),
		n(FACTIONS, {
			faction(FACTION_FROSTWOLF_CLAN, {	-- Frostwolf Clan
				["icon"] = 133287,
				["OnTooltip"] = [[_.OnTooltipDB.ForAlteracValley]],
				["races"] = HORDE_ONLY,
			}),
			faction(FACTION_STORMPIKE_GUARD, {	-- Stormpike Guard
				["icon"] = 133433,
				["OnTooltip"] = [[_.OnTooltipDB.ForAlteracValley]],
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(7385, {	-- A Gallon of Blood
				["qg"] = 13236,	-- Primalist Thurloga
				["coord"] = { 50.1, 85.1, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17306, 5 } },	-- Stormpike Soldier's Blood
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(7081, {	-- Alterac Valley Graveyards
				["qg"] = 13777,	-- Sergeant Durgen Stormpike
				["coord"] = { 36.8, 77.2, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(7223, {	-- Armor Scraps
				["qg"] = 13257,	-- Murgot Deepforge
				["coord"] = { 43.5, 15.5, MAP.ALTERAC_VALLEY },
				["cost"] = { { "i", 17422, 20 } },	-- Armor Scraps
				["races"] = ALLIANCE_ONLY,
			}),
			q(7282, {	-- Brotherly Love (Alliance)
				["qg"] = 13320,	-- Commander Karl Philips
				["coord"] = { 50.9, 30.8, MAP.ALTERAC_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- Commander Louis Philips slain
						["provider"] = { "n", 13154 },	-- Commander Louis Philips
						["coord"] = { 50.4, 65.5, MAP.ALTERAC_VALLEY },
					}),
				},
			}),
			q(7281, {	-- Brotherly Love (Horde)
				["qg"] = 13154,	-- Commander Louis Philips
				["coord"] = { 50.4, 65.5, MAP.ALTERAC_VALLEY },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- Commander Karl Philips slain
						["provider"] = { "n", 13320 },	-- Commander Karl Philips
						["coord"] = { 50.4, 65.5, MAP.ALTERAC_VALLEY },
					}),
				},
			}),
			q(6825, {	-- Call of Air - Guse's Fleet
				["qg"] = 13179,	-- Wing Commander Guse
				["coord"] = { 50.0, 32.0, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17326, 1 } },	-- Stormpike Soldier's Flesh
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(6943, {	-- Call of Air - Ichman's Fleet
				["qg"] = 13437,	-- Wing Commander Ichman
				["coord"] = { 48.3, 84.3, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17504, 1 } },	-- Frostwolf Commander's Medal
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(6826, {	-- Call of Air - Jeztor's Fleet
				["qg"] = 13180,	-- Wing Commander Jeztor
				["coord"] = { 54.2, 25.4, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17327, 1 } },	-- Stormpike Lieutenant's Flesh
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(6827, {	-- Call of Air - Mulverick's Fleet
				["qg"] = 13181,	-- Wing Commander Mulverick
				["coord"] = { 45.1, 14.0, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17328, 1 } },	-- Stormpike Commander's Flesh
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(6942, {	-- Call of Air - Slidore's Fleet
				["qg"] = 13438,	-- Wing Commander Slidore
				["coord"] = { 50.6, 65.8, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17502, 1 } },	-- Frostwolf Soldier's Medal
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(6941, {	-- Call of Air - Vipore's Fleet
				["qg"] = 13439,	-- Wing Commander Vipore
				["coord"] = { 50.3, 81.6, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17503, 1 } },	-- Frostwolf Lieutenant's Medal
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(7122, {	-- Capture a Mine (Alliance)
				["qg"] = 13777,	-- Sergeant Durgen Stormpike
				["coord"] = { 36.8, 77.2, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(7124, {	-- Capture a Mine (Horde)
				["sourceQuest"] = 7123,	-- Speak with our Quartermaster
				["qgs"] = {
					12097,	-- Frostwolf Quartermaster
					13776,	-- Corporal Teeka Bloodsnarl
				},
				["coord"] = { 65.6, 55.1, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
			}),
			q(6982, {	-- Coldtooth Supplies (Alliance)
				["sourceQuest"] = 7121,	-- The Quartermaster
				["qg"] = 12096,	-- Stormpike Quartermaster
				["coord"] = { 43.1, 17.6, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17542, 10 } },	-- Coldtooth Supplies
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(5893, {	-- Coldtooth Supplies (Horde)
				["qg"] = 12097,	-- Frostwolf Quartermaster
				["coord"] = { 46.6, 84.2, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17542, 10 } },	-- Coldtooth Supplies
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(7386, {	-- Crystal Cluster
				["qg"] = 13442,	-- Arch Druid Renferal
				["coord"] = { 43.9, 12.6, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17423, 5 } },	-- Storm Crystal
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(7170, {	-- Earned Reverence (Alliance)
				["sourceQuest"] = 7169,	-- Honored Amongst the Guard
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_STORMPIKE_GUARD, REVERED },	-- Stormpike Guard, Revered
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Insignia Rank 3
						["provider"] = { "i", 17901 },	-- Stormpike Insignia Rank 3
					}),
					i(17902),	-- Stormpike Insignia Rank 4
				},
			}),
			q(7165, {	-- Earned Reverence (Horde)
				["sourceQuest"] = 7164,	-- Honored Amongst the Clan
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_FROSTWOLF_CLAN, REVERED },	-- Frostwolf Clan, Revered
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Insignia Rank 3
						["provider"] = { "i", 17906 },	-- Frostwolf Insignia Rank 3
					}),
					i(17907),	-- Frostwolf Insignia Rank 4
				},
			}),
			q(7027, {	-- Empty Stables (Alliance)
				["qg"] = 13617,	-- Stormpike Stable Master <Stable Master>
				["coord"] = { 42.6, 16.8, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Ram Collared and Returned
						["provider"] = { "i", 17689 },	-- Stormpike Training Collar
						["cr"] = 10990,	-- Alterac Ram
					}),
				},
			}),
			q(7001, {	-- Empty Stables (Horde)
				["qg"] = 13616,	-- Frostwolf Stable Master <Stable Master>
				["coord"] = { 57.2, 82.4, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Muzzled and Returned
						["provider"] = { "i", 17626 },	-- Frostwolf Muzzle
						["cr"] = 10981,	-- Frostwolf
					}),
				},
			}),
			q(7224, {	-- Enemy Booty
				["qg"] = 13176,	-- Smith Regzar
				["coord"] = { 49.5, 82.7, MAP.ALTERAC_VALLEY },
				["cost"] = { { "i", 17422, 20 } },	-- Armor Scraps
				["races"] = HORDE_ONLY,
			}),
			q(7301, {	-- Fallen Sky Lords (Alliance)
				["qg"] = 13319,	-- Commander Duffy
				["coord"] = { 49.0, 14.6, MAP.ALTERAC_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(7302, {	-- Fallen Sky Lords (Horde)
				["qg"] = 13153,	-- Commander Mulfort
				["coord"] = { 49.5, 88.2, MAP.ALTERAC_VALLEY },
				["races"] = HORDE_ONLY,
			}),
			q(8272, {	-- Hero of the Frostwolf
				["sourceQuest"] = 7142,	-- The Battle for Alterac (Horde)
				["qg"] = 13817,	-- Voggah Deathgrip
				["coord"] = { 63.6, 60.4, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(19107),	-- Bloodseeker
					i(20648),	-- Cold Forged Hamme
					i(19106),	-- Ice Barbed Spear
					i(19108),	-- Wand of Biting Cold
				},
			}),
			q(8271, {	-- Hero of the Stormpike
				["sourceQuest"] = 7141,	-- The Battle of Alterac (Alliance)
				["qg"] = 13816,	-- Prospector Stonehewer
				["coord"] = { 41.0, 79.6, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(19106),	-- Ice Barbed Spear
					i(19107),	-- Bloodseeker
					i(19108),	-- Wand of Biting Cold
					i(20648),	-- Cold Forged Hammer
				},
			}),
			q(7164, {	-- Honored Amongst the Clan
				["sourceQuest"] = 7163,	-- Rise and Be Recognized (Horde)
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_FROSTWOLF_CLAN, HONORED },	-- Frostwolf Clan, Honored
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Insignia Rank 2
						["provider"] = { "i", 17905 },	-- Frostwolf Insignia Rank 2
					}),
					i(17906),	-- Frostwolf Insignia Rank 3
				},
			}),
			q(7169, {	-- Honored Amongst the Guard
				["sourceQuest"] = 7168,	-- Rise and Be Recognized (Alliance)
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_STORMPIKE_GUARD, HONORED },	-- Stormpike Guard, Honored
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Insignia Rank 2
						["provider"] = { "i", 17900 },	-- Stormpike Insignia Rank 2
					}),
					i(17901),	-- Stormpike Insignia Rank 3
				},
			}),
			q(7241, {	-- In Defense of Frostwolf
				["qg"] = 13842,	-- Frostwolf Ambassador Rokhstrom
				["coord"] = { 49.8, 71.2, MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(8369, {	-- Invaders of Alterac Valley
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20560, 3 } },	-- Alterac Valley Mark of Honor
				["races"] = HORDE_ONLY,
			}),
			q(8387, {	-- Invaders of Alterac Valley
				["sourceQuest"] = 8369,	-- Invaders of Alterac Valley
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 20560, 3 } },	-- Alterac Valley Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(5892, {	-- Irondeep Supplies (Alliance)
				["sourceQuest"] = 7121,	-- The Quartermaster
				["qg"] = 12096,	-- Stormpike Quartermaster
				["coord"] = { 43.1, 17.6, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17522, 10 } },	-- Irondeep Supplies
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(6985, {	-- Irondeep Supplies (Horde)
				["qg"] = 12097,	-- Frostwolf Quartermaster
				["coord"] = { 46.6, 84.2, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17522, 10 } },	-- Irondeep Supplies
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(6881, {	-- Ivus the Forest Lord
				["qg"] = 13442,	-- Arch Druid Renferal
				["coord"] = { 43.9, 12.6, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17423, 1 } },	-- Storm Crystal
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(7171, {	-- Legendary Heroes (Alliance)
				["sourceQuest"] = 7170,	-- Earned Reverence (Alliance)
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Insignia Rank 4
						["provider"] = { "i", 17902 },	-- Stormpike Insignia Rank 4
					}),
					i(17903),	-- Stormpike Insignia Rank 5
				},
			}),
			q(7166, {	-- Legendary Heroes (Horde)
				["sourceQuest"] = 7165,	-- Earned Reverence (Horde)
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Insignia Rank 4
						["provider"] = { "i", 17907 },	-- Frostwolf Insignia Rank 4
					}),
					i(17908),	-- Frostwolf Insignia Rank 5
				},
			}),
			q(6801, {	-- Lokholar the Ice Lord
				["qg"] = 13236,	-- Primalist Thurloga
				["coord"] = { 50.1, 85.1, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17306, 1 } },	-- Stormpike Soldier's Blood
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(6781, {	-- More Armor Scraps
				["sourceQuest"] = 7223,	-- Armor Scraps
				["qg"] = 13257,	-- Murgot Deepforge
				["coord"] = { 43.5, 15.5, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17422, 20 } },	-- Armor Scraps
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(6741, {	-- More Booty!
				["sourceQuest"] = 7224,	-- Enemy Booty
				["qg"] = 13176,	-- Smith Regzar
				["coord"] = { 49.5, 82.7, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17422, 20 } },	-- Armor Scraps
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(7162, {	-- Proving Grounds (Alliance)
				["sourceQuest"] = 7261,	-- The Sovereign Imperative
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Banner
						["provider"] = { "i", 17849 },	-- Stormpike Banner
						["coord"] = { 41.9, 36.1, MAP.ALTERAC_VALLEY },
					}),
					i(17691),	-- Stormpike Insignia Rank 1
					i(19484),	-- The Frostwolf Artichoke
				},
			}),
			q(7161, {	-- Proving Grounds (Horde)
				["sourceQuest"] = 7241,	-- In Defense of Frostwolf
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Banner
						["provider"] = { "i", 17850 },	-- Frostwolf Banner
						["coord"] = { 50.7, 93.3, MAP.ALTERAC_VALLEY },
					}),
					i(17690),	-- Frostwolf Insignia Rank 1
					i(19483),	-- Peeling the Onion
				},
			}),
			q(7002, {	-- Ram Hide Harnesses
				["qg"] = 13441,	-- Frostwolf Wolf Rider Commander
				["coord"] = { 57.0, 82.8, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED },	-- Frostwolf Clan, Exalted.
				["cost"] = { { "i", 17642, 1 } },	-- Alterac Ram Hide
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(7026, {	-- Ram Riding Harnesses
				["qg"] = 13577,	-- Stormpike Ram Rider Commander
				["coord"] = { 42.1, 17.2, MAP.ALTERAC_VALLEY },
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 17643, 1 } },	-- Frostwolf Hide
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(8375, {	-- Remember Alterac Valley!
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20560, 3 } },	-- Alterac Valey Mark of Honor
				["races"] = ALLIANCE_ONLY,
			}),
			q(8383, {	-- Remember Alterac Valley!
				["sourceQuest"] = 8375,	-- Remember Alterac Valley!
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["maxReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED },	-- Stormpike Guard, Exalted.
				["cost"] = { { "i", 20560, 3 } },	-- Alterac Valey Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(7168, {	-- Rise and Be Recognized (Alliance)
				["sourceQuest"] = 7162,	-- Proving Grounds (Alliance)
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_STORMPIKE_GUARD, FRIENDLY },	-- Stormpike Guard, Friendly
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Insignia Rank 1
						["provider"] = { "i", 17691 },	-- Stormpike Insignia Rank 1
					}),
					i(17900),	-- Stormpike Insignia Rank 2
				},
			}),
			q(7163, {	-- Rise and Be Recognized (Horde)
				["sourceQuest"] = 7161,	-- Proving Grounds (Horde)
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_FROSTWOLF_CLAN, FRIENDLY },	-- Frostwolf Clan, Friendly
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Insignia Rank 1
						["provider"] = { "i", 17690 },	-- Frostwolf Insignia Rank 1
					}),
					i(17905),	-- Frostwolf Insignia Rank 2
				},
			}),
			q(7123, {	-- Speak with our Quartermaster
				["qg"] = 13798,	-- Jotek
				["coord"] = { 50.8, 81.4, MAP.ALTERAC_VALLEY },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(7141, {	-- The Battle of Alterac (Alliance)
				["qg"] = 13816,	-- Prospector Stonehewer
				["coord"] = { 41.0, 79.6, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Drek'Thar slain
						["provider"] = { "n", 11946 },	-- Drek'Thar <Frostwolf General>
						["coord"] = { 47.2, 86.9, MAP.ALTERAC_VALLEY },
					}),
				},
			}),
			q(7142, {	-- The Battle for Alterac (Horde)
				["qg"] = 13817,	-- Voggah Deathgrip
				["coord"] = { 63.6, 60.4, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Vanndar Stormpike slain
						["provider"] = { "n", 11948 },	-- Vanndar Stormpike <Stormpike General>
						["coord"] = { 42.3, 12.8, MAP.ALTERAC_VALLEY },
					}),
				},
			}),
			q(7172, {	-- The Eye of Command (Alliance)
				["sourceQuest"] = 7171,	-- Legendary Heroes
				["qg"] = 13841,	-- Lieutenant Haggerdin
				["coord"] = { 39.6, 81.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_STORMPIKE_GUARD, EXALTED + 998 },	-- Stormpike Guard, 999/1000 Exalted
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Stormpike Insignia Rank 5
						["provider"] = { "i", 17903 },	-- Stormpike Insignia Rank 5
					}),
					i(17904),	-- Stormpike Insignia Rank 6
				},
			}),
			q(7167, {	-- The Eye of Command (Horde)
				["sourceQuest"] = 7166,	-- Legendary Heroes
				["qg"] = 13840,	-- Warmaster Laggrond
				["coord"] = { 62.2, 59.0, MAP.ALTERAC_MOUNTAINS },
				["minReputation"] = { FACTION_FROSTWOLF_CLAN, EXALTED + 998 },	-- Frostwolf Clan, 999/1000 Exalted
				["races"] = HORDE_ONLY,
				["groups"] = {
					objective(1, {	-- 0/1 Frostwolf Insignia Rank 5
						["provider"] = { "i", 17908 },	-- Frostwolf Insignia Rank 5
					}),
					i(17909),	-- Frostwolf Insignia Rank 6
				},
			}),
			q(7082, {	-- The Graveyards of Alterac
				["qg"] = 13776,	-- Corporal Teeka Bloodsnarl
				["coord"] = { 65.6, 55.1, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
			}),
			q(7121, {	-- The Quartermaster
				["qg"] = 13797,	-- Mountaineer Boombellow
				["coord"] = { 45.6, 16.7, MAP.ALTERAC_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(7261, {	-- The Sovereign Imperative
				["qg"] = 13843,	-- Lieutenant Rotimer <Stormpike Guard Recruitment Officer>
				["coord"] = { 32.8, 64.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(7102, {	-- Towers and Bunkers (Alliance)
				["qg"] = 13777,	-- Sergeant Durgen Stormpike
				["coord"] = { 36.8, 77.2, MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
			}),
			q(7101, {	-- Towers and Bunkers (Horde)
				["qg"] = 13776,	-- Corporal Teeka Bloodsnarl
				["coord"] = { 65.6, 55.1, MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
			}),
		}),
		n(REWARDS, {
			i(20560),	-- Alterac Valley Mark of Honor
		}),
		n(VENDORS, {
			n(13216, {	-- Gaelden Hammersmith <Stormpike Supply Officer>
				["coord"] = { 44.3, 18.3, MAP.ALTERAC_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(19030),	-- Stormpike Battle Charger (MOUNT!)
					i(19032),	-- Stormpike Battle Tabard
					i(19045),	-- Stormpike Battle Standard
					i(19102),	-- Crackling Staff
					i(19100),	-- Electrified Dagger
					i(19312),	-- Lei of the Lifegiver
					i(19104),	-- Stormstrike Hammer
					i(19321),	-- The Immovable Object
					i(19324),	-- The Lobotomizer
					i(19323),	-- The Unstoppable Force
					i(19315),	-- Therazane's Torch
					i(19308),	-- Tome of Arcane Domination
					i(19311),	-- Tome of Fiery Arcana
					i(19309),	-- Tome of Shadow Force
					i(19310),	-- Tome of the Ice Lord
					i(19098),	-- Stormpike Sage's Pendant
					i(19097),	-- Stormpike Soldier's Pendant
					i(19086),	-- Stormpike Sage's Cloak
					i(19084),	-- Stormpike Soldier's Cloak
					i(19094),	-- Stormpike Cloth Girdle
					i(19093),	-- Stormpike Leather Girdle
					i(19092),	-- Stormpike Mail Girgle
					i(19091),	-- Stormpike Plate Girdle
					i(19325),	-- Don Julio's Band
					i(21563),	-- Don Rodrigo's Band
					i(19320),	-- Gnoll Skin Bandolier
					i(19319),	-- Harpy Hide Quiver
					i(19316),	-- Ice Threaded Arrow
					i(19317),	-- Ice Threaded Bullet
					i(19301),	-- Alterac Manna Biscuit
					i(19307),	-- Alterac Heavy Runecloth Bandage
					i(19318),	-- Bottled Alterac Spring Water
					i(17348),	-- Major Healing Draught
					i(17351),	-- Major Mana Draught
					i(17349),	-- Superior Healing Draught
					i(17352),	-- Superior Mana Draught
				},
			}),
			n(13218, {	-- Grunnda Wolfheart <Frostwolf Supply Officer>
				["coord"] = { 49.3, 82.5, MAP.ALTERAC_VALLEY },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(19029),	-- Frostwolf Howler (MOUNT!)
					i(19031),	-- Frostwolf Battle Tabard
					i(19046),	-- Frostwolf Battle Standard
					i(19103),	-- Frostbite
					i(19099),	-- Glacial Blade
					i(19312),	-- Lei of the Lifegiver
					i(19321),	-- The Immovable Object
					i(19324),	-- The Lobotomizer
					i(19323),	-- The Unstoppable Force
					i(19315),	-- Therazane's Torch
					i(19308),	-- Tome of Arcane Domination
					i(19311),	-- Tome of Fiery Arcana
					i(19309),	-- Tome of Shadow Force
					i(19310),	-- Tome of the Ice Lord
					i(19101),	-- Whiteout Staff
					i(19096),	-- Frostwolf Advisor's Pendant
					i(19095),	-- Frostwolf Legionnaire's Pendant
					i(19085),	-- Frostwolf Advisor's Cloak
					i(19083),	-- Frostwolf Legionnaire's Cloak
					i(19090),	-- Frostwolf Cloth Belt
					i(19089),	-- Frostwolf Leather Belt
					i(19088),	-- Frostwolf Mail Belt
					i(19087),	-- Frostwolf Plate Belt
					i(19325),	-- Don Julio's Band
					i(21563),	-- Don Rodrigo's Band
					i(19320),	-- Gnoll Skin Bandolier
					i(19319),	-- Harpy Hide Quiver
					i(19316),	-- Ice Threaded Arrow
					i(19317),	-- Ice Threaded Bullet
					i(19301),	-- Alterac Manna Biscuit
					i(19307),	-- Alterac Heavy Runecloth Bandage
					i(19318),	-- Bottled Alterac Spring Water
					i(17348),	-- Major Healing Draught
					i(17351),	-- Major Mana Draught
					i(17349),	-- Superior Healing Draught
					i(17352),	-- Superior Mana Draught
				},
			}),
			n(13219, {	-- Jorek Ironside <Frostwolf Supply Officer> [CATA+] / Jekyll Flandring <Frostwolf Supply Officer>
				["coord"] = { 62.8, 59.4, MAP.ALTERAC_MOUNTAINS },
				["sym"] = { { "sub", "common_vendor", 13218 } },	-- Grunnda Wolfheart
				["races"] = HORDE_ONLY,
			}),
			n(13217, {	-- Thanthaldis Snowgleam <Stormpike Supply Officer>
				["coord"] = { 39.6, 81.6, MAP.ALTERAC_MOUNTAINS },
				["sym"] = { { "sub", "common_vendor", 13216 } },	-- Gaelden Hammersmith <Stormpike Supply Officer>
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(ZONE_DROPS, {
			i(17422),	-- Armor Scraps
			i(18228),	-- Autographed Picture of Foror & Tigule
			i(17504),	-- Frostwolf Commander's Medal
			i(17503),	-- Frostwolf Lieutenant's Medal
			i(17502),	-- Frostwolf Soldier's Medal
			i(18229),	-- Nat Pagle's Guide to Extreme Anglin'
			i(17423),	-- Storm Crystal
			i(17328),	-- Stormpike Commander's Flesh
			i(17327),	-- Stormpike Lieutenant's Flesh
			i(17306),	-- Stormpike Soldier's Blood
			i(17326),	-- Stormpike Soldier's Flesh
			i(18231),	-- Sleeveless T-Shirt
		}),
	},
});
