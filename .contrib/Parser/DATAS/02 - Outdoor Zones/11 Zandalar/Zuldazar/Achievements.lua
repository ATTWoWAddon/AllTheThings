---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(ACHIEVEMENTS, {
			ach(12480, {	-- A Bargain of Blood
				["sourceQuests"] = { 47229 },	-- Bulwark of Torcali
				["races"] = HORDE_ONLY,
			}),
			ach(12944, {	-- Adventurer of Zuldazar
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(12559),	-- Explore Zuldazar
			ach(13542, {	-- How to Train your Direhorn
				["races"] = HORDE_ONLY,
				["groups"] = {
					crit(45147, {	-- Naptime
						["sourceQuests"] = { 47310 },	-- Naptime
					}),
					crit(45148, {	-- Held for Observation
						["sourceQuests"] = { 52857 },	-- Held for Observation
					}),
					crit(45149, {	-- Sleep, Eat, Repeat
						["sourceQuests"] = { 55258 },	-- Sleep, Eat, Repeat
					}),
					crit(45150, {	-- Torcali's Blessing
						["sourceQuests"] = { 55507 },	-- Torcali's Blessing
					}),
					crit(45151, {	-- Wander Not Alone
						["sourceQuests"] = { 55798 },	-- Wander Not Alone
					}),
				},
			}),
			ach(13573, {	-- How to Ptrain Your Pterrordax
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 56205 },	-- Just Ptrust Me On This
				["groups"] = {
					crit(45335),	-- Just Ptrust Me On This
					ach(13030, {	-- How to Ptrain Your Pterrordax
						["races"] = HORDE_ONLY,
						["groups"] = {
							crit(41773, {	-- Nature Versus Nurture
								["sourceQuests"] = { 52305 },	-- Nature Versus Nurture
								["description"] = "Must complete ~7 daily quests to fill Kua'fon's experience bar.",
							}),
							crit(41771, {	-- Room to Grow
								["sourceQuests"] = { 52447 },	-- Room to Grow
								["description"] = "Must complete ~14 daily quests to fill Kua'fon's experience bar.",
							}),
							crit(41770, {	-- Eyes on the Skies
								["sourceQuests"] = { 52748 },	-- Eyes on the Skies
								["description"] = "Must complete 4 to 7 daily quests to fill Kua'fon's experience bar.",
							}),
							crit(41767, {	-- Down, But Not Out
								["sourceQuests"] = { 50944 },	-- Down, But Not Out
							}),
						},
					}),
				},
			}),
			ach(41202, {	-- Hot Tropic
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					12944,	-- Adventurer of Zuldazar
					13020,	-- Bow to Your Masters
					13029,	-- Eating Out of the Palm of My Tiny Hand
					12482,	-- Get Hek'd
					12614,	-- Loa Expectations
					13038,	-- Raptari Rider
					12851,	-- Treasures of Zuldazar
				}},
			}),
			ach(12481, {	-- The Final Seal
				["sourceQuests"] = { 50954 },	-- Zandalar Forever!
				["races"] = HORDE_ONLY,
			}),
			ach(12956),		-- Tortollan Seekers
			pvp(ach(12575)),	-- Tour of Duty: Zuldazar
			ach(12851, {	-- Treasures of Zuldazar
				crit(40988, {	-- Offerings of the Chosen
					["_quests"] = { 48938 },
				}),
				crit(40989, {	-- Witch Doctor's Hoard
					["_quests"] = { 50259 },
				}),
				crit(40990, {	-- Spoils of Pandaria
					["_quests"] = { 49936 },
				}),
				crit(40991, {	-- Gift of the Brokenhearted
					["_quests"] = { 50582 },
				}),
				crit(40992, {	-- Warlord's Cache
					["_quests"] = { 49257 },
				}),
				crit(40993, {	-- Dazar's Forgotten Chest
					["_quests"] = { 50707 },
				}),
				crit(40994, {	-- Da White Shark's Bounty
					["_quests"] = { 50947 },
				}),
				crit(40995, {	-- The Exile's Lament
					["_quests"] = { 50949 },
				}),
				crit(40996, {	-- Cache of Secrets
					["_quests"] = { 51338 },
				}),
				crit(40997, {	-- Riches of Tor'nowa
					["_quests"] = { 51624 },
				}),
			}),
		}),
	}),
})));
