--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

DASTARDLY_DUOS = createHeader({
	readable = "Dastardly Duos",
	icon = [[~_.asset("Event_Dastardly Duos")]],
	eventID = EVENTS.DASTARDLY_DUOS,
	text = {
		en = "Dastardly Duos",
		-- TODO: de = "",
		es = "Dúos despiadados",
		mx = "Dúos indómitos",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "卑鄙双雄",
		-- TODO: tw = "",
	},
	description = {
		en = "Hello, fight fans. The world's meanest villains are teamed up and back for revenge! Meet in Stormwind, Orgrimmar or Dornogal to fight against villainous bosses from Azeroth's past.",
		-- TODO: de = "",
		es = "Saludos, aficionados a la lucha. ¡Los villanos más malvados de Azeroth se han unido y han vuelto para vengarse! Venid a Ventormenta, Orgrimmar o Dornogal y enfrentaos a los malvados jefes del pasado de Azeroth.",
		mx = "Saludos, fans de la lucha. ¡Los villanos más malvados volvieron en equipos para buscar venganza! Acércate a Ventormenta, Orgrimmar o Dornogal para pelear contra jefes malignos del pasado de Azeroth.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "战斗迷们，大家好。世界上最邪恶的反派们联手归来，誓要复仇！前往暴风城、奥格瑞玛或多诺加尔，与艾泽拉斯过去的邪恶首领们一决高下。",
		-- TODO: tw = "",
	},
});

root(ROOTS.Holidays, applyevent(EVENTS.DASTARDLY_DUOS, bubbleDown({ ["timeline"] = { ADDED_11_1_5, "removed 11.1.7.61967" } }, {
	n(DASTARDLY_DUOS, {
		["maps"] = { 2447 },	-- Dastardly Duos
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(41995, {	-- Boot Hill
					["description"] = "Die 30 times within one match solo or collectively as a group THEN complete the fight and loot the prize chest. The arena will will with 15 gravestones to the left and right of the entrance to count your progress.",
				}),
				ach(42002, {	-- Bullhorn of Plenty
					["cost"] = { { "i",  237774, 5 } },	-- 5x Bullhorn of Calling
				}),
				ach(42003, {	-- Bullhorn of More Plenty
					["cost"] = { { "i",  237774, 10 } },	-- 10x Bullhorn of Calling
				}),
				ach(42004, {	-- Bullhorn of Most Plenty
					["cost"] = { { "i",  237774, 15 } },	-- 15x Bullhorn of Calling
				}),
				ach(41905),	-- Center of Attention
				ach(41706, {	-- Dastardly Duos Weekly High Score
					-- TODO: Does parser know what to do with 21 (Designer Value{`Uses Record ID})?
					["sym"] = {{ "achievement_criteria"}},
				}),
				ach(41707),	-- Dastardly Devices
				ach(41948),	-- Defeat the Dastardlies (automated)
				ach(41949),	-- Defeat the Dastardlies (automated)
				ach(41950),	-- Defeat the Dastardlies (automated)
				ach(41951),	-- Defeat the Dastardlies (automated)
				ach(41952),	-- Defeat the Dastardlies (automated)
				ach(41716),	-- Duo Darling
				ach(41717),	-- Duos Underdog
				ach(41715),	-- Fiendishly Famous
				ach(41722),	-- Inside Connections
				ach(41916),	-- My Way, The Highway
				ach(41922),	-- Undefeatable
				ach(41810),	-- Winner's Podium
			}),
			n(ADVENTURE_GUIDE, {
				i(234449),	-- Dastardly Invitation (QS!/QI!)
			}),
			n(QUESTS, {
				q(86491, {	-- Dastardly Duos! It's on!
					["provider"] = { "i", 234449 },	-- Dastardly Invitation
				}),
				q(86503, {	-- Who are the Dastardly Duos?
					["sourceQuests"] = { 86491 },	-- Dastardly Invitation
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coords"] = {
						{ 52.8, 51.6, ISLE_OF_DORN },	-- Khaz Algar
						-- { x, y, ORGRIMMAR },	-- Orgrimmar
						{ 68.2, 79.0, STORMWIND_CITY },	-- Stormwind
					},
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
						-- TODO: if you wanna - you can symlink all bags with rewards
					},
				}),
				q(87550, {	-- Week 2: We're Really Taking Off
					["sourceQuests"] = { 86503 },	-- Who are the Dastardly Duos?
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
					},
				}),
				q(87551, {	-- Week 3: Spread the Word
					["sourceQuests"] = { 87550 },	-- Week 2: We're Really Taking Off
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
					},
				}),
				q(87552, {	-- Week 4: They've Heard of You
					["sourceQuests"] = { 87551 },	-- Week 3: Spread the Word
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
						spell(1227074),	-- Winner's Podium: Average Item Level
						-- spell(1227073),	-- Winner's Podium, High Score
					},
				}),
				q(87553, {	-- Week 5: Another Amazing Week!
					["sourceQuests"] = { 87552 },	-- Week 4: They've Heard of You
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
					},
				}),
				q(87554, {	-- Week 6: It's the Finale!
					["sourceQuests"] = { 87553 },	-- Week 5: Another Amazing Week!
					["provider"] = { "n", 234296 },	-- Vinnie Sweets
					["coord"] = { 52.8, 51.6, ISLE_OF_DORN },
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
					},
				}),
				-- unsorted due to ptr things, sourceQuest is speculated
				q(90701, {	-- Cowardly Cheery Bombs
					["sourceQuests"] = { 86503 },	-- Who are the Dastardly Duos?
					["provider"] = { "n", 234297 },	-- Wodin the Troll Servant
					["coords"] = {
						{ 52.8, 51.6, ISLE_OF_DORN },	-- Khaz Algar
						-- { x, y, ORGRIMMAR },	-- Orgrimmar
						{ 68.2, 79.0, STORMWIND_CITY },	-- Stormwind
					},
					["groups"] = {
						i(239440),	-- Dastardly Prize Purse
					},
				}),
			}),
			n(REWARDS, {
				filter(MISC, {
					i(237385),	-- BIG Burner Clock
					i(237774),	-- Bullhorn of Calling
					i(235665),	-- Burner Clock
					i(237384),	-- Master Key
				}),
				o(524391, {	-- Prize Chest
					["coord"] = { 51.0, 42.0, 2447 },	-- Dastardly Duos
					["sym"] = {{"select","itemID",
						238984,	-- Baroness Silverlaine's Locket (Shadowfang Keep)
						88343,	-- Bone Golem Boots (Scholomance)
						238978,	-- Burden of Lost Humanity (Shadowfang Keep)
						65166,	-- Buzz Saw (Deadmines)
						27448,	-- Cloak of the Everliving (Hellfire Ramparts)
						238993,	-- Cracked Epoch Grasps (Culling of Stratholme)
						238940,	-- Defias Brotherhood Vest (Deadmines)
						238988,	-- Earth Mantle Handwraps (Steamvault)
						27806,	-- Fathomheart Gauntlets (Steamvault)
						238932,	-- Gauntlets of the Bold (Steamvault)
						238991,	-- Gloves of Distorted Time (Culling of Stratholme)
						238939,	-- Missing Diplomat's Pauldrons (Deadmines)
						238992,	-- Mobius Band (Culling of Stratholme)
						238990,	-- Necklace of the Chrono-Lord (Culling of Stratholme)
						157754,	-- Old Friend's Gloves (Deadmines)
						238979,	-- Phantom Armor (Shadowfang Keep)
						27794,	-- Recoiless Rocket Ripper X-54 (Steamvault)
						238930,	-- Scintillating Coral Band (Steamvault)
						63467,	-- Shadow of the Past (Deadmines)
						238989,	-- Steam-Hinge Chain of Valor (Steamvault)
						37105,	-- Treads of Altered History (Culling of Stratholme)
						238938,	-- Vest of the Curious Visitor (Deadmines)
						27450,	-- Wild Stalker Boots (Hellfire Ramparts)
					}},
					["groups"] = {
						-- Unconfirmed to drop from dungeon bosses, move to symlink once proven
						i(239008),	-- Moonchild Leggings (Blood Furnace)
						-- also seems like contain some TW loot from certain bosses (list of them in achievement 41948) that already exist
						-- i(24023),	-- Bracers of Finesse
						-- i(63454),	-- Double Dealing Bracers
						-- i(157628),	-- Gold-Fiecked Gloves
						-- i(157755),	-- Missing Diplomat's Pauldrons

						-- Probably all items that drop here too
						-- The Steamvault (sourced under the dungeon)
							-- i(238929),	-- Cloak of Whispering Shells

							-- Hellfire Ramprats (not yet sourced)
							-- i(238934),	-- Boots of the Darkwalker
							i(238936),	-- Scale Leggings of the Skirmisher
							i(238937),	-- Light-Touched Breastplate

							-- Shadowfang Keeep (sourced under the dungeon)
							-- i(238976),	-- Blinders of the Follower
							-- i(238977),	-- Iron Will Girdle
							i(238980),	-- Pendant of the Keep

							-- Shadowfang Keep (not yet sourced)
							i(238981),	-- Gloves of the Uplifted Cup
							i(238982),	-- Baron Silverlaine's Greaves
							i(238983),	-- Boots of Lingering Sorrow

							-- The Blood Furnace (not yet sourced)
							i(239009),	-- Signet of Repose
						--]]
						--- Podium Upgrade?
						i(240203),	-- Podium Upgrade: Scrappy (CI!)
						i(240204),	-- Podium Upgrade: Survival Run (CI!)
						i(240205),	-- Podium Upgrade: Time in Spotlights (CI!)
						i(240206),	-- Podium Upgrade: Yards Traveled (CI!)
						i(240199),	-- Podium Upgrade: Scrappiest (CI!)
						i(240200),	-- Podium Upgrade: Longest Survival Run (CI!)
						i(240201),	-- Podium Upgrade: Longest Time in Spotlights (CI!)
						i(240202),	-- Podium Upgrade: Most Yards Traveled (CI!)
					},
				}),
			}),
			n(TREASURES, {
				o(505680),	-- Animatronic Gear
			}),
			n(VENDORS, {
				n(234297, {	-- Wodin the Troll-Servant
					["coords"] = {
						{ 52.7, 51.3, ISLE_OF_DORN },
						{ 50.0, 92.4, ORGRIMMAR },
						{ 67.2, 81.0, STORMWIND_CITY },
					},
					["groups"] = {
						i(239442, {	-- Black Dastardly Epaulet
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239503, {	-- Blue Dastardly Epaule
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239007, {	-- Dastardly Banner (TOY!)
							["sourceQuest"] = 86503,	-- Who are the Dastardly Duos?
							["cost"] = { { "c", RESONANCE_CRYSTALS, 100 } },
						}),
						i(238624, {	-- Dastardly Pinchzapper
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239504, {	-- Green Dastardly Epaulet
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239019, {	-- Mean-Ball Bed (TOY!)
							["sourceQuest"] = 87551,	-- Week 3: Spread the Word
							["cost"] = { { "c", RESONANCE_CRYSTALS, 100 } },
						}),
						i(239505, {	-- Purple Dastardly Epaulet
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239506, {	-- Red Dastardly Epaulet
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
						i(239020, {	-- Tyrannotort's Treat (MOUNT!)
							["sourceQuest"] = 87552,	-- Week 4: They've Heard of You
							["cost"] = { { "c", RESONANCE_CRYSTALS, 100 } },
						}),
						i(239018, {	-- Winner's Podium (TOY!)
							["sourceQuest"] = 87550,	-- Week 2: We're Really Taking Off
							["cost"] = { { "c", RESONANCE_CRYSTALS, 100 } },
						}),
						i(239507, {	-- Yellow Dastardly Epaulet
							["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
						}),
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
		n(DASTARDLY_DUOS, {
			-- In order to clear a bit messup and to sort out more clearly on live
			-- Week 1:
			q(87510),	-- Week 1 Completion
			q(90775),	-- completed with '86503'
			-- Week 2:
			q(87511),	-- Week 2 Completion
			q(87527),	-- there also was crit for other achievements but I wasn't smart enought to log it
			q(87528),	-- so it is just 'after first completion Dastardly Duos, week 2'
			-- Week 3:
			q(87512),	-- Week 3 Completion
			q(87529),	--
			q(87530),	--
			-- Week 4:
			q(87513),	-- Week 4 Completion
			-- Week 5:
			q(87514),	-- Week 5 Completion
			q(87531),	--
			q(87532),	--
			-- Week 6:
			q(87515),	-- Week 6 Completion
		}),
	})),
});
