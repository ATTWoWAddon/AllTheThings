---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.SHENDRALAS, {
	--lore = "",
	--icon = ,
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(ACHIEVEMENTS, {
			ach(63684),	-- Explore Shen'dralas
		}),
		explorationHeader({
			exploration(16677),	-- Bristleback Retreat
			exploration(16678),	-- Evenshade's Overlook
			exploration(16742),	-- Forlorn Gardens
			exploration(16675),	-- Magram Front
			exploration(16676),	-- Outcast Hideaway
			exploration(2657),	-- Valley of Bones
		}),
		n(QUESTS, {
			q(93062, {	-- Bone Burying
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				races = HORDE_ONLY,
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Nerlokh near the Valley of Bones.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/8 Haggard Bones laid to rest
						provider = { "i", 258661 },	-- Uthek's Draenethyst Staff
						cr = 253446,	-- Haggard Bones
						coord = { 38.6, 29.8, MAP.SHENDRALAS },
					}),
				},
			}),
			q(92894, {	-- Bone Raising
				sourceQuest = 92873,	-- Proof of Concept
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/10 Summon or Slay Haggard Bones
						provider = { "i", 255403 },	-- Enhanced Necromancy Staff
						cr = 253446,	-- Haggard Bones
						coord = { 38.6, 29.8, MAP.SHENDRALAS },
					}),
				},
			}),
			q(93066, {	-- Bristleback Retreat
				sourceQuests = {
					92893,	-- No Mercy for the Weak
					92894,	-- Bone Raising
				},
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				lvl = 35,
				groups = {
					objective(1, {	-- 0/4 Bristleback Nomad slain
						provider = { "n", 253524 },	-- Bristleback Nomad
						coord = { 58.4, 20.2, MAP.SHENDRALAS },
					}),
					objective(2, {	-- 0/6 Bristleback Thornweaver slain
						provider = { "n", 253525 },	-- Bristleback Thornweaver
						coord = { 69.2, 28.4, MAP.SHENDRALAS },
					}),
					objective(3, {	-- 0/6 Bristleback Skullcrusher slain
						provider = { "n", 253526 },	-- Bristleback Skullcrusher
						coord = { 57.0, 15.4, MAP.SHENDRALAS },
					}),
				},
			}),
			q(93122, {	-- Checking Things Out
				sourceQuests = {
					93058,	-- Saving Our Own
					93062,	-- Bone Burying
				},
				qg = 253177,	-- Nerlokh
				coords = {
					{ 58.4, 88.6, MAP.DESOLACE },
					{ 20.8, 22.6, MAP.SHENDRALAS },
				},
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				races = HORDE_ONLY,
				lvl = 35,
				-- TODO: Wowhead doesn't list this quest's objectives yet (investigate centaur points of interest).
			}),
			q(92847, {	-- Corrupting Tears
				sourceQuests = {
					92844,	-- Mountain of Bones
					92846,	-- Outcast Necromancers
				},
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/3 Petrified Bark
						providers = {
							{ "i", 254841 },	-- Petrified Bark
							{ "o", 582187 },	-- Petrified Tree
						},
						coords = {
							{ 45.2, 37.8, MAP.SHENDRALAS },
							{ 46.7, 28.1, MAP.SHENDRALAS },
							{ 48.3, 39.5, MAP.SHENDRALAS },
							{ 50.5, 27.4, MAP.SHENDRALAS },
						},
					}),
					objective(2, {	-- 0/3 Imbued Tears
						provider = { "i", 254840 },	-- Imbued Tears
					}),
				},
			}),
			q(93041, {	-- Facing the Truth
				sourceQuests = {
					93035,	-- Ravaging Ravagers
					93037,	-- Outing Outcasts
				},
				qg = 253177,	-- Nerlokh
				coords = {
					{ 58.4, 88.6, MAP.DESOLACE },
					{ 20.8, 22.6, MAP.SHENDRALAS },
				},
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				lvl = 35,
				groups = {
					objective(1, {	-- 0/1 Accursed Skull
						provider = { "i", 255945 },	-- Accursed Skull
					}),
					objective(2, {	-- 0/1 Gelkis Necromantic Garb
						provider = { "i", 255941 },	-- Gelkis Necromantic Garb
					}),
				},
			}),
			q(93125, {	-- Going Home
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Nerlokh near the Valley of Bones.
				timeline = { TIMELINE.CREATED_1_60_1 },
				-- TODO: Escort Rokren out of the Outcast Hideaway; Wowhead has no IDs for the escort yet.
			}),
			q(93072, {	-- Long-Term Solutions
				sourceQuest = 93066,	-- Bristleback Retreat
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Hagiak at the Magram Front.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/2 Outcast Scout slain
						provider = { "n", 254283 },	-- Outcast Scout
						coord = { 37.4, 74.6, MAP.SHENDRALAS },
					}),
					objective(2, {	-- 0/6 Outcast Marauder slain
						provider = { "n", 254284 },	-- Outcast Marauder
						coord = { 29.6, 72.6, MAP.SHENDRALAS },
					}),
					objective(3, {	-- 0/8 Outcast Necromancer slain
						provider = { "n", 11559 },	-- Outcast Necromancer
						coord = { 22.6, 26.2, MAP.SHENDRALAS },
					}),
				},
			}),
			q(92844, {	-- Mountain of Bones
				sourceQuest = 92841,	-- Valley of Bones (Magram)
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/426 Gently Cursed Bone
						provider = { "i", 254663 },	-- Gently Cursed Bone
						crs = {
							11561,	-- Undead Ravager
						},
					}),
				},
			}),
			q(92893, {	-- No Mercy for the Weak
				sourceQuest = 92873,	-- Proof of Concept
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/5 Gelkis Captive slain
						provider = { "n", 253431 },	-- Gelkis Captive
						coord = { 45.4, 30.2, MAP.SHENDRALAS },
					}),
				},
			}),
			q(92846, {	-- Outcast Necromancers
				sourceQuest = 92841,	-- Valley of Bones (Magram)
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/6 Outcast Necromancer slain
						provider = { "n", 11559 },	-- Outcast Necromancer
						coord = { 22.6, 26.2, MAP.SHENDRALAS },
					}),
				},
			}),
			q(93037, {	-- Outing Outcasts
				sourceQuest = 93034,	-- Valley of Bones (Gelkis)
				qg = 253177,	-- Nerlokh
				coords = {
					{ 58.4, 88.6, MAP.DESOLACE },
					{ 20.8, 22.6, MAP.SHENDRALAS },
				},
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				lvl = 35,
				groups = {
					objective(1, {	-- 0/1 Necromantic Garb
						provider = { "i", 255875 },	-- Necromantic Garb
						cr = 11559,	-- Outcast Necromancer
						coord = { 22.6, 26.2, MAP.SHENDRALAS },
					}),
				},
			}),
			q(92873, {	-- Proof of Concept
				sourceQuest = 92847,	-- Corrupting Tears
				qg = 253136,	-- Orgrul
				coord = { 35.6, 12.0, MAP.SHENDRALAS },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/426 Well Cursed Bone
						providers = {
							{ "i", 254842 },	-- Well Cursed Bone
							{ "i", 254870 },	-- Rudimentary Necromancy Staff
						},
						cr = 253360,	-- Nascent Undead Ravager
					}),
					i(271796),	-- Blade of the Magram Clan
					i(271797),	-- Staff of Revelations
					i(271798),	-- Desperate Barrier
				},
			}),
			q(93035, {	-- Ravaging Ravagers
				sourceQuest = 93034,	-- Valley of Bones (Gelkis)
				qg = 253177,	-- Nerlokh
				coords = {
					{ 58.4, 88.6, MAP.DESOLACE },
					{ 20.8, 22.6, MAP.SHENDRALAS },
				},
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				lvl = 35,
				groups = {
					objective(1, {	-- 0/6 Undead Ravager slain
						provider = { "n", 11561 },	-- Undead Ravager
						coord = { 36.0, 23.7, MAP.SHENDRALAS },
					}),
				},
			}),
			q(93188, {	-- Return to Orgrul
				sourceQuests = {
					93072,	-- Long-Term Solutions
					93129,	-- Threat of Starvation
				},
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Orgrul.
				timeline = { TIMELINE.CREATED_1_60_1 },
			}),
			q(93058, {	-- Saving Our Own
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				races = HORDE_ONLY,
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Nerlokh near the Valley of Bones.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/5 Gelkis Captive rescued
						provider = { "n", 254825 },	-- Gelkis Captive
					}),
				},
			}),
			q(93129, {	-- Threat of Starvation
				sourceQuest = 93066,	-- Bristleback Retreat
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				lvl = 35,
				-- TODO: Wowhead doesn't list the quest giver yet. Turned in to Hagiak at the Magram Front.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					objective(1, {	-- 0/6 Stolen Supplies
						provider = { "i", 256892 },	-- Stolen Supplies
					}),
				},
			}),
			q(93034, {	-- Valley of Bones (Gelkis)
				sourceQuest = 1373,	-- Ongeku
				qg = 5397,	-- Uthek the Wise
				coord = { 36.2, 79.2, MAP.DESOLACE },
				minReputation = { FACTION_GELKIS_CLAN_CENTAUR, HONORED },
				lvl = 35,
			}),
			q(92841, {	-- Valley of Bones (Magram)
				sourceQuest = 92743,	-- A Conqueror's Crown
				qg = 5398,	-- Warug
				coord = { 74.8, 68.0, MAP.DESOLACE },
				minReputation = { FACTION_MAGRAM_CLAN_CENTAUR, HONORED },
				races = ALLIANCE_ONLY,
				lvl = 35,
			}),
		}),
	},
});
