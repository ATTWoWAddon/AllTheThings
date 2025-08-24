---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ORIBOS, {
		pvp(n(PVP, {
			n(QUESTS, {
				q(62910, {	-- Against Overwhelming Odds
					["provider"] = { "n", 168011 },	-- Zo'sorg
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(62911, {	-- Against Overwhelming Odds
					["provider"] = { "n", 168011 },	-- Zo'sorg
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(65649, {	-- A New Deal
					["sourceQuest"] = 64957,	-- This Old Waystone (possibly earlier)
					["provider"] = { "n", 168011 },	-- Zo'sorg
					["coord"] = { 35.6, 57.5, ORIBOS },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2 },
					["groups"] = {
						i(190955),	-- Protoplasmic Thread (QI!)
						i(188778),	-- Cosmic Gladiator's Devouring Malediction
						i(188691),	-- Cosmic Gladiator's Echoing Resolve
						i(188775),	-- Cosmic Gladiator's Eternal Aegis
						i(188524),	-- Cosmic Gladiator's Fastidious Resolve
						i(188766),	-- Cosmic Gladiator's Resonator
						-- #if BEFORE DF
						currency(1792),	-- Honor
						-- #endif
					},
				}),
				q(64304, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- New Opportunities Await
					["provider"] = { "n", 168011 },	-- Zo'sorg
					["coord"] = { 34.7, 57.3, ORIBOS },
					["isWeekly"] = true,
					["groups"] = {
						i(186980),	-- Unchained Gladiator's Shackles of Malediction
					},
				})),
				q(62287, {	-- Observing Arenas
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.3, 55.8, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(62284, {	-- Observing Battle
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(62286, {	-- Observing Skirmishes
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(62288, {	-- Observing Teamwork
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(64527, {	-- Observing the Chase [SL 'Try Warmode']
					["altQuests"] = {
						53295,	-- Do Your Part [BFA 'Try Warmode'] [A]
						53338,	-- Prove Your Worth [BFA 'Try Warmode'] [H]
					},
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 55.7, ORIBOS },	-- Ring of Fates
					["timeline"] = { ADDED_9_1_0 },
				}),
				q(62285, {	-- Observing War
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { REMOVED_10_0_2 },
					["isWeekly"] = true,
					["_drop"] = { "g" },	-- drop anima trash
				}),
				q(65773, {	-- Solo Mission
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2 },
					["isWeekly"] = true,
				}),
				q(65775, {	-- Soloing Strategy
					["provider"] = { "n", 174922 },	-- Strategist Zo'rak
					["coord"] = { 34.7, 56.5, ORIBOS },
					["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2 },
					["isWeekly"] = true,
				}),
			}),
			n(VENDORS, {
				n(164095, {	-- Purveyor Zo'kuul <Assessor of Conflict>
					["coord"] = { 36.0, 58.6, ORIBOS },
					["groups"] = {
						n(LEGENDARIES, sharedData({ ["cost"] = { { "c", HONOR, 1500 } }, }, {
							i(183246),	-- Memory of Sephuz
							i(183252, {	-- Memory of a Trapping Apparatus
								["classes"] = { HUNTER },
							}),
							i(183268, {	-- Memory of a Grisly Icicle
								["classes"] = { MAGE },
							}),
							i(183285, {	-- Memory of the Swiftsure Wraps
								["classes"] = { MONK },
							}),
							i(183301, {	-- Memory of Uther
								["classes"] = { PALADIN },
							}),
							i(183317, {	-- Memory of a Heavenly Vault
								["classes"] = { PRIEST },
							}),
							i(183331, {	-- Memory of Invigorating Shadowdust
								["classes"] = { ROGUE },
							}),
							i(183347, {	-- Memory of Devastating Chains
								["classes"] = { SHAMAN },
							}),
							i(183368, {	-- Memory of the Dark Portal
								["classes"] = { WARLOCK },
							}),
							i(183378, {	-- Memory of the Leaper
								["classes"] = { WARRIOR },
							}),
							i(182625, {	-- Memory of an Everlasting Grip
								["classes"] = { DEATHKNIGHT },
							}),
							i(183211, {	-- Memory of the Hour of Darkness
								["classes"] = { DEMONHUNTER },
							}),
							i(183222, {	-- Memory of the Elder Druid
								["classes"] = { DRUID },
							}),
						})),
						i(185834, {	-- Orboreal Distinguishment
							["cost"] = { { "c", HONOR, 2000 } },
							-- #if BEFORE 10.0.2
							["groups"] = {
							-- Lets display it only in the latest Expansion
								i(137642),	-- Mark of Honor
							},
							-- #endif
						}),
					},
				}),
				n(168011, {	-- Zo'sorg <Master of Conflict>
					["coord"] = { 35.0, 57.6, ORIBOS },
					["groups"] = {
						n(CONDUITS, sharedData({ ["cost"] = { { "c", CONQUEST, 200 } } }, {
							i(181848),	-- Accelerated Cold
							i(183470),	-- Born of the Wilds
							i(182748),	-- Borne of Blood
							i(182128),	-- Call of Flame
							i(181837),	-- Clear Mind
							i(182769),	-- Combusting Engine
							i(183197),	-- Controlled Destruction
							i(187506),	-- Condensed Anime Sphere
							i(181462),	-- Coordinated Offensive
							i(180935),	-- Crash the Ramparts
							i(182598),	-- Demon Muzzle
							i(181712),	-- Depths of Insanity
							i(182140),	-- Dissonant Echoes
							i(182461),	-- Echoing Blessings
							i(181980),	-- Embrace Death
							i(182142),	-- Embrace of Earth
							i(182667),	-- Focused Light
							i(182743),	-- Focused Malignancy
							i(183478),	-- Fury of the Skies
							i(181498),	-- Grounding Surge
							i(181373),	-- Harm Denial
							i(181461),	-- Ice Bite
							i(183506),	-- Lethal Poisons
							i(182344),	-- Lost in Darkness
							i(182137),	-- Magma Fist
							i(182187),	-- Meat Shield
							i(181511),	-- Nether Precision
							i(181737),	-- Nourishing Chi
							i(182621),	-- One With the Beast
							i(181844),	-- Pain Transformation
							i(183514),	-- Perforated Veins
							i(182686),	-- Powerful Precision
							i(182325),	-- Ravenous Consumption
							i(183491),	-- Ready for Anything
							i(182368),	-- Relentless Onslaught
							i(182449),	-- Resolute Barrier
							i(181944),	-- Resonant Words
							i(182480),	-- Reversal of Fortune
							i(183501),	-- Rushed Setup
							i(183485),	-- Savage Combatant
							i(181700),	-- Scalding Brew
							i(182624),	-- Show of Force
							i(181836),	-- Spirit Drain
							i(180842),	-- Stalwart Guardian
							i(183184),	-- Stinging Strike
							i(183480),	-- Taste for Blood
							i(182109),	-- Totemic Surge
							i(183507),	-- Triple Threat
							i(182465),	-- Truth's Wake
							i(182681),	-- Vengeful Shock
						})),
					},
				}),
			}),
		})),
	}),
})));
