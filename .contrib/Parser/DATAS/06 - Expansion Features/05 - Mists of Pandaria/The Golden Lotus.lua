-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

-- #if MOP
-- TODO: https://wowpedia.fandom.com/wiki/The_Ruins_of_Guo-Lai_(daily)
-- Look at the Golden Lotus daileis table at the "Progression" section at the bottom.
local VALE_SOO_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
		t.description = "This will become unavailable when the Siege of Orgrimmar phase begins."
	end
end]];
-- #endif
local function RemovedWithSOO(t)
	t.timeline = { ADDED_5_0_4, REMOVED_5_4_0 };
	-- #if MOP
	t.OnUpdate = VALE_SOO_ONUPDATE;
	-- #endif
	if t.groups then
		for i,o in ipairs(t.groups) do
			RemovedWithSOO(o);
		end
	end
	return t;
end
root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_GOLDEN_LOTUS, {
		["description"] = "The Golden Lotus are a mysterious society of pandaren who are guardians of the Vale of Eternal Blossoms. Members of the Golden Lotus are handpicked by the August Celestials to help them keep an eye on the vale, and the pandaren see it as a huge honor to be chosen as a member of the sacred order.",
		["maps"] = {
			VALE_OF_ETERNAL_BLOSSOMS,
			VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS,
			VALE_OF_ETERNAL_BLOSSOMS_THE_HALL_OF_THE_SERPENT,
		},
		["icon"] = 645218,
		["lvl"] = lvlsquish(90, 90, 30),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7323, {	-- Collateral Damage
					["providers"] = {
						{ "n", 63447 },	-- Mogu Statue
						{ "n", 65170 },	-- Jade Warrior
					},
					["coord"] = { 24.4, 28.0, VALE_OF_ETERNAL_BLOSSOMS },
					-- #if MOP
					["description"] = "You need to be on or near someone on the quest That's Not a Rock! in order to activate the mogu statues so that they'll engage you and use their special ability.",
					-- #endif
				}),
				ach(7320, {	-- Dog Pile
					["provider"] = { "n", 58992 },	-- Shado-Pan Trainee
					["coord"] = { 19.6, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
					["_drop"] = { "providers" },	-- "Battle Ring Trainee Defeated Credit"
				}),
				RemovedWithSOO(ach(7315)),	-- Eternally in the Vale
				ach(7317, {	-- One Many Army
					crit(20521, {	-- Aetha
						["_npcs"] = { 58778 },	-- Aetha
					}),
					crit(20522, {	-- Quid
						["_npcs"] = { 58771 },	-- Quid
					}),
				}),
				ach(7324),	-- One Step at a Time
				ach(7319),	-- Ready for Raiding III
				ach(7322),	-- Roll Club
				ach(6546),	-- The Golden Lotus
			}),
			n(FACTIONS, {
				faction(FACTION_GOLDEN_LOTUS, {	-- Golden Lotus
					["icon"] = 643910,
				}),
			}),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (The Golden Pagoda)
				RemovedWithSOO(q(31755, {	-- Acts of Cruelty
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30312 },	-- Given a Second Chance
					["groups"] = {
						objective(1, {	-- 0/5 Torture victims rescued
							["providers"] = {
								{ "n", 65804 },	-- Golden Lotus Guard
								{ "n", 63934 },	-- Mistfall Villager
								{ "n", 63935 },	-- Mistfall Villager
								{ "n", 65817 },	-- Mistfall Villager
								{ "n", 65818 },	-- Mistfall Villager
							},
							["coord"] = { 49.4, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31754, {	-- Cannonfire
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30320,	-- Free Spirits
						"questID", 31756,	-- High Chance of Rain
						"questID", 31758,	-- Laosy Scouting
					},
					["groups"] = {
						objective(1, {	-- 0/7 Shao-Tien Cannons destroyed
							["providers"] = {
								{ "n", 65762 },	-- Shao-Tien Cannon
								{ "i", 89123 },	-- Wu Kao Explosive
							},
							["coord"] = { 51.6, 25.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31762, {	-- Crumbling Behemoth
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 31760 },	-- Striking First
					["groups"] = {
						objective(1, {	-- 0/1 Shao-Tien Behemoth slain
							["provider"] = { "n", 65824 },	-- Shao-Tien Behemoth
							["coord"] = { 47.0, 29.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30320, {	-- Free Spirits
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 31754,	-- Cannonfire
						"questID", 31756,	-- High Chance of Rain
						"questID", 31758,	-- Laosy Scouting
					},
					["groups"] = {
						objective(1, {	-- 0/15 Free Captive Pandaren Spirits
							["providers"] = {
								{ "n", 59231 },	-- Captive Pandaren Spirit
								{ "i", 89297 },	-- Shao-Tien Spirit Dagger (QI!)
							},
							["coord"] = { 41.1, 22.6, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 59219,	-- Spirit Vortex
						}),
					},
				})),
				RemovedWithSOO(q(30312, {	-- Given a Second Chance
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 31755 },	-- Acts of Cruelty
					["groups"] = {
						objective(1, {	-- 0/6 Wounded Defender healed
							["providers"] = {
								{ "i", 84242 },	-- Shado-Pan Bandages
								{ "n", 59183 },	-- Wounded Defender
							},
							["coord"] = { 53.2, 28.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31756, {	-- High Chance of Rain
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 31754,	-- Cannonfire
						"questID", 30320,	-- Free Spirits
						"questID", 31758,	-- Laosy Scouting
					},
					["groups"] = {
						objective(1, {	-- 0/1 Eastern Stormcaller destroyed
							["provider"] = { "o", 214895 },	-- Shao-Tien Stormcaller
							["coord"] = { 51.0, 22.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						objective(2, {	-- 0/1 Northern Stormcaller destroyed
							["provider"] = { "o", 214899 },	-- Shao-Tien Stormcaller
							["coord"] = { 47.8, 19.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						objective(3, {	-- 0/1 Southern Stormcaller destroyed
							["provider"] = { "o", 214900 },	-- Shao-Tien Stormcaller
							["coord"] = { 43.1, 27.9, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						objective(4, {	-- 0/1 Western Stormcaller destroyed
							["provider"] = { "o", 214901 },	-- Shao-Tien Stormcaller
							["coord"] = { 36.8, 18.3, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31758, {	-- Laosy Scouting
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 31754,	-- Cannonfire
						"questID", 30320,	-- Free Spirits
						"questID", 31756,	-- High Chance of Rain
					},
					["groups"] = {
						objective(1, {	-- Lao Softfoot rescued
							["providers"] = {
								{ "n",  65868 },	-- Lao Softfoot
								{ "o", 213289 },	-- Shao-Tien Cage
							},
							["coord"] = { 43.0, 22.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30309, {	-- Set in Stone
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30308,	-- Stone Hard Quilen
						"questID", 30310,	-- Thundering Skies
						"questID", 31757,	-- Unleashed Spirits
					},
					["groups"] = {
						objective(1, {	-- 0/6 Mogu Effigy slain
							["provider"] = { "n", 59156 },	-- Mogu Effigy
							["coord"] = { 45.4, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31760, {	-- Striking First
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 31762 },	-- Crumbling Behemoth
					["groups"] = {
						objective(1, {	-- Shao-Tien Behemoth ritual stopped
							["provider"] = { "n", 65962 },	-- Shao-Tien Behemoth
							["coord"] = { 44.0, 16.0, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 65978,	-- Shao-Tien Soul-Render
						}),
					},
				})),
				RemovedWithSOO(q(30308, {	-- Stone Hard Quilen
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30309,	-- Set in Stone
						"questID", 30310,	-- Thundering Skies
						"questID", 31757,	-- Unleashed Spirits
					},
					["groups"] = {
						objective(1, {	-- 0/6 Granite Quilen slain
							["provider"] = { "n", 59157 },	-- Granite Quilen
							["coord"] = { 46.0, 23.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30307, {	-- The Eternal Vigil
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- 0/8 Shao-Tien mogu slain
							["providers"] = {
								{ "n", 58412 },	-- Shao-Tien Marauder
								{ "n", 65810 },	-- Shao-Tien Soul-Render
								{ "n", 58460 },	-- Shao-Tien Soul-Render
							},
							["coord"] = { 46.4, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30310, {	-- Thundering Skies
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30309,	-- Set in Stone
						"questID", 30308,	-- Stone Hard Quilen
						"questID", 31757,	-- Unleashed Spirits
					},
					["groups"] = {
						objective(1, {	-- 0/3 Subjugated Serpent slain
							["provider"] = { "n", 59158 },	-- Subjugated Serpent
							["coord"] = { 44.0, 23.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(31757, {	-- Unleashed Spirits
					["qg"] = 58465,	-- Anji Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30309,	-- Set in Stone
						"questID", 30308,	-- Stone Hard Quilen
						"questID", 30310,	-- Thundering Skies
					},
					["groups"] = {
						objective(1, {	-- 0/12 Unleashed Spirit slain
							["provider"] = { "n", 65935 },	-- Unleashed Spirit
							["coord"] = { 46.2, 27.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
			})),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Mistfall Village invasion)
				--[[
				Breadcrumb: Attack on Mistfall Village (honored version)
				One of:
					Backed Into a Corner
					Wu Kao Scouting Reports
				One of:
					Freeing Mind and Body
					Stonebound Killers

				Mogu Make Poor House Guests
				My Town, It's On Fire Again
				]]--
				RemovedWithSOO(q(31243, {	-- Attack on Mistfall Village (The Golden Pagoda)
					["sourceQuests"] = {
						31755,	-- Acts of Cruelty
						31754,	-- Cannonfire
						31762,	-- Crumbling Behemoth
						30320,	-- Free Spirits
						30312,	-- Given a Second Chance
						31756,	-- High Chance of Rain
						31758,	-- Laosy Scouting
						30309,	-- Set in Stone
						31760,	-- Striking First
						30308,	-- Stone Hard Quilen
						30307,	-- The Eternal Vigil
						30310,	-- Thundering Skies
						31757,	-- Unleashed Spirits
					},
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 31246 },	-- Attack on Mistfall Village (Whitepetal Lake)
				})),
				RemovedWithSOO(q(31246, {	-- Attack on Mistfall Village (Whitepetal Lake)
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1, "questID", 31243 },	-- Attack on Mistfall Village (The Golden Pagoda)
				})),
				RemovedWithSOO(q(30286, {	-- Backed Into a Corner
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 59337,	-- Sun Tenderheart
					["coord"] = { 35.2, 75.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30285 },	-- Wu Kao Scouting Reports
					["groups"] = {
						objective(1, {	-- 0/6 Rescue Cornered Villagers
							["provider"] = { "n", 63949 },	-- Cornered Villager
						}),
					},
				})),
				RemovedWithSOO(q(30297, {	-- Baolai the Immolator
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- 0/1 Baolai slain
							["providers"] = {
								{ "n",  63695 },	-- Baolai the Immolator <Shao-Tien Imperion>
								-- #if ANYCLASSIC
								{ "n", 245163 },	-- Baolai the Immolator <Shao-Tien Imperion>
								-- #endif
							},
							["coord"] = { 28.7, 43.3, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30289, {	-- Freeing Mind and Body
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30296, {	-- Gaohun the Soul-Severer
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- 0/1 Gaohun slain
							["providers"] = {
								{ "n",  62881 },	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
								-- #if ANYCLASSIC
								{ "n", 245153 },	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
								-- #endif
							},
							["coord"] = { 53.1, 59.3, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30287, {	-- Mogu Make Poor House Guests
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(31293, {	-- Mogu Make Poor House Guests
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30288, {	-- My Town, It's On Fire Again
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 59336,	-- Mayor Shiyo
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30290, {	-- Stonebound Killers
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 58911,	-- Rook Stonetoe
					["coord"] = { 35.2, 75.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30285, {	-- Wu Kao Scouting Reports
					["sourceQuests"] = {
						31243,	-- Attack on Mistfall Village (The Golden Pagoda)
						31246,	-- Attack on Mistfall Village (Whitepetal Lake)
					},
					["qg"] = 59337,	-- Sun Tenderheart
					["coord"] = { 35.2, 75.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30286 },	-- Backed Into a Corner
					["groups"] = {
						objective(1, {	-- 0/3 Wu Kao Scouting Report
							["provider"] = { "i", 86099 },	-- Wu Kao Scouting Report
							["coord"] = { 37.0, 72.6, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 64201,	-- Shao-Tien Subjugator
						}),
					},
				})),
			})),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Mistfall Village wildlife)
				--[[
				Breadcrumb Mistfall Village (honored version)
				One of:
					Lushroom Rush
					Meating Expectations
					Pomfruit Pickup
				One of:
					Clearing in the Forest
					Return to Rest
					Ruffling Some Feathers
					The Pandaren Uprising Relived
				One of:
					Encroaching Storm
					My Town, It's on Fire
					Steer Clear of the Beer Here
				One of:
					Sprite Plight
					Blooming Blossoms
				]]--
				RemovedWithSOO(q(31242, {	-- Mistfall Village (The Golden Pagoda)
					["sourceQuests"] = {
						31755,	-- Acts of Cruelty
						31754,	-- Cannonfire
						31762,	-- Crumbling Behemoth
						30320,	-- Free Spirits
						30312,	-- Given a Second Chance
						31756,	-- High Chance of Rain
						31758,	-- Laosy Scouting
						30309,	-- Set in Stone
						31760,	-- Striking First
						30308,	-- Stone Hard Quilen
						30307,	-- The Eternal Vigil
						30310,	-- Thundering Skies
						31757,	-- Unleashed Spirits
					},
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 31245,	-- Mistfall Village (Whitepetal Lake)
						"questID", 31249,	-- Mistfall Village (The Golden Pagoda)
					},
				})),
				RemovedWithSOO(q(31245, {	-- Mistfall Village (Whitepetal Lake)
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1,
						"questID", 31242,	-- Mistfall Village (The Golden Pagoda)
						"questID", 31249,	-- Mistfall Village (The Golden Pagoda)
					},
				})),
				RemovedWithSOO(q(31249, {	-- Mistfall Village (The Golden Pagoda)
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 31242,	-- Mistfall Village (The Golden Pagoda)
						"questID", 31245,	-- Mistfall Village (Whitepetal Lake)
					},
					-- CRIEVE NOTE: Not sure under what conditions this questID is given instead of 31242.
				})),
				RemovedWithSOO(q(30236, {	-- Aetha
					["sourceQuests"] = {
						31242,	-- Mistfall Village
						31245,	-- Mistfall Village
						31249,	-- Mistfall Village
						-- CRIEVE NOTE: This might have a specific breadcrumb like Lao-Fe does?
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.8, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- Aetha Subdued
							["providers"] = {
								{ "n",  58778 },	-- Aetha <Spirit of the Golden Winds>
								-- #if ANYCLASSIC
								{ "n", 244975 },	-- Aetha <Spirit of the Golden Winds>
								-- #endif
							},
							["coord"] = { 35.0, 89.9, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30195, {	-- Blooming Blossoms
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58820,	-- Merchant Benny
					["coord"] = { 33.8, 69.8, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30190 },	-- Sprite Plight
					["groups"] = {
						objective(1, {	-- 0/10 Eternal Blossom
							["providers"] = {
								{ "i", 244172 },	-- Eternal Blossom
								{ "o", 210537 },	-- Eternal Blossom
								{ "o", 210538 },	-- Eternal Blossom
								{ "o", 210539 },	-- Eternal Blossom
							},
							["coord"] = { 33.1, 58.4, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30263, {	-- Clearing in the Forest
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30238,	-- Return to Rest
						"questID", 30232,	-- Ruffling Some Feathers
						"questID", 30237,	-- The Pandaren Uprising Relived
					},
					["groups"] = {
						objective(1, {	-- 0/6 Winterbough Glade mogu slain
							["providers"] = {
								{ "n", 65131 },	-- Shao-Tien Painweaver
								{ "n", 65132 },	-- Shao-Tien Conqueror
							},
							["coord"] = { 29.8, 53.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30194, {	-- Encroaching Storm
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30192,	-- My Town, It's on Fire
						"questID", 30191,	-- Steer Clear of the Beer Here
					},
					["groups"] = {
						objective(1, {	-- 0/8 Thundermaw slain
							["provider"] = { "n", 58456 },	-- Thundermaw
							["coord"] = { 24.2, 77.4, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30239, {	-- Lao-Fe the Slavebinder
					["sourceQuest"] = 30237,	-- The Pandaren Uprising Relived
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- 0/1 Lao-Fe slain
							["providers"] = {
								{ "n",  58817 },	-- Spirit of Lao-Fe <The Slavebinder>
								-- #if ANYCLASSIC
								{ "n", 246479 },	-- Spirit of Lao-Fe <The Slavebinder>
								-- #endif
							},
							["coord"] = { 47.4, 65.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30196, {	-- Lushroom Rush
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30193,	-- Meating Expectations
						"questID", 30231,	-- Pomfruit Pickup
					},
					["groups"] = {
						objective(1, {	-- 0/12 Lushroom
							["providers"] = {
								{ "i",  85681 },	-- Lushroom
								{ "o", 213352 },	-- Lushroom
								{ "o", 213350 },	-- Lushroom
								{ "o", 213353 },	-- Lushroom
							},
							["coord"] = { 48.0, 69.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30193, {	-- Meating Expectations
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30196,	-- Lushroom Rush
						"questID", 30231,	-- Pomfruit Pickup
					},
					["groups"] = {
						objective(1, {	-- 0/10 Fairlands Gazelle Meat
							["provider"] = { "i", 79244 },	-- Fairlands Gazelle Meat
							["coord"] = { 29.4, 55.0, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 58454,	-- Fairlands Gazelle
						}),
					},
				})),
				RemovedWithSOO(q(30192, {	-- My Town, It's on Fire
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 35.2, 74.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30194,	-- Encroaching Storm
						"questID", 30191,	-- Steer Clear of the Beer Here
					},
					["groups"] = {
						objective(1, {	-- 0/30 Put out Brazier Fires
							["providers"] = {
								{ "i",  85782 },	-- Mistfall Water Bucket
								{ "o", 213369 },	-- Mistfall Water Bucket
							},
							["coord"] = { 35.5, 74.3, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30231, {	-- Pomfruit Pickup
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58818,	-- Cook Tope
					["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30196,	-- Lushroom Rush
						"questID", 30193,	-- Meating Expectations
					},
					["groups"] = {
						objective(1, {	-- 0/12 Fresh Pomfruit
							["providers"] = {
								{ "i", 79250 },	-- Fresh Pomfruit
								{ "n", 58767 },	-- Pomfruit
								{ "i", 79344 },	-- Pomharvest Firework
							},
							["coord"] = { 37.7, 64.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30235, {	-- Quid Pro Quo
					["sourceQuests"] = {
						31242,	-- Mistfall Village
						31245,	-- Mistfall Village
						31249,	-- Mistfall Village
						-- CRIEVE NOTE: This might have a specific breadcrumb like Lao-Fe does?
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- 0/1 Quid slain
							["providers"] = {
								{ "n",  58771 },	-- Quid <Spirit of the Misty Falls>
								-- #if ANYCLASSIC
								{ "n", 244995 },	-- Quid <Spirit of the Misty Falls>
								-- #endif
								{ "i", 87807 },	-- Stone of the Water Strider (QI!)
							},
							["coord"] = { 30.63, 79.24, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30238, {	-- Return to Rest
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30263,	-- Clearing in the Forest
						"questID", 30232,	-- Ruffling Some Feathers
						"questID", 30237,	-- The Pandaren Uprising Relived
					},
					["groups"] = {
						objective(1, {	-- 0/6 Pandaren Gravestones Honored
							["provider"] = { "o", 210419 },	-- Pandaren Gravestone
							["coord"] = { 45.3, 70.3, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						-- Wouter TODO: verify if this is an actual source for this technique in MoP Classic
						-- #if MOP_BEFORE_SOO
						-- o(210419, {
						-- 	i(104238, {	-- Technique: Glyph of the Compy
						-- 		["timeline"] = { ADDED_5_5_0, REMOVED_5_5_2 },
						-- 	}),
						-- }),
						-- #endif
					},
				})),
				RemovedWithSOO(q(30232, {	-- Ruffling Some Feathers
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30263,	-- Clearing in the Forest
						"questID", 30238,	-- Return to Rest
						"questID", 30237,	-- The Pandaren Uprising Relived
					},
					["groups"] = {
						objective(1, {	-- 0/80 Silken Feather
							["provider"] = { "i", 84121 },	-- Silken Feather
							["coord"] = { 27.4, 59.8, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 58457,	-- Silkfeather Hawk
						}),
					},
				})),
				RemovedWithSOO(q(30190, {	-- Sprite Plight
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 35.2, 74.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30195 },	-- Blooming Blossoms
					["groups"] = {
						objective(1, {	-- 0/8 Slateskin Troublemaker slain
							["provider"] = { "n", 58673 },	-- Slateskin Troublemaker
							["coord"] = { 37.0, 75.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30191, {	-- Steer Clear of the Beer Here
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 58819,	-- Mayor Shiyo
					["coord"] = { 35.2, 74.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30194,	-- Encroaching Storm
						"questID", 30192,	-- My Town, It's on Fire
					},
					["groups"] = {
						objective(1, {	-- 0/10 Stolen Mistfall Keg
							["providers"] = {
								{ "i",  85778 },	-- Stolen Mistfall Keg
								{ "o", 213365 },	-- Stolen Mistfall Keg
							},
							["coord"] = { 37.7, 80.8, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 58673,	-- Slateskin Troublemaker
						}),
					},
				})),
				RemovedWithSOO(q(30237, {	-- The Pandaren Uprising Relived
					["sourceQuests"] = {
						31242,	-- Mistfall Village (The Golden Pagoda)
						31245,	-- Mistfall Village (Whitepetal Lake)
						31249,	-- Mistfall Village (The Golden Pagoda)
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30263,	-- Clearing in the Forest
						"questID", 30238,	-- Return to Rest
						"questID", 30232,	-- Ruffling Some Feathers
					},
					["groups"] = {
						objective(1, {	-- 0/8 Ancient Mogu Spirit slain
							["provider"] = { "n", 58671 },	-- Ancient Mogu Spirit
							["coord"] = { 48.0, 69.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
			})),
			--[[
					["lockCriteria"] = { 1,
						"questID", ,	--
						"questID", ,	--
						"questID", ,	--
					},
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Whitepetal Lake invasion)

			})),
			]]--
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Whitepetal Lake wildlife)
				RemovedWithSOO(q(31131, {	-- Whitepetal Lake
					["sourceQuests"] = {
						31755,	-- Acts of Cruelty
						31754,	-- Cannonfire
						31762,	-- Crumbling Behemoth
						30320,	-- Free Spirits
						30312,	-- Given a Second Chance
						31756,	-- High Chance of Rain
						31758,	-- Laosy Scouting
						30309,	-- Set in Stone
						31760,	-- Striking First
						30308,	-- Stone Hard Quilen
						30307,	-- The Eternal Vigil
						30310,	-- Thundering Skies
						31757,	-- Unleashed Spirits
					},
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30284, {	-- A Thousand Pointy Teeth
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30342 },	-- Fiery Tongue, Fragile Feet
					["groups"] = {
						objective(1, {	-- 0/9 Knifetooth Swarmer slain
							["provider"] = { "n", 59404 },	-- Knifetooth Swarmer
							["coord"] = { 41.2, 48.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30338, {	-- A Weighty Task
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30265,	-- Sparkle in the Eye
						"questID", 30291,	-- Stunning Display
					},
					["groups"] = {
						objective(1, {	-- 0/8 Mogu Artifact
							["providers"] = {
								{ "i",  84655 },	-- Mogu Artifact
								{ "o", 212762 },	-- Mogu Artifact
								{ "o", 212763 },	-- Mogu Artifact
								{ "o", 212764 },	-- Mogu Artifact
								{ "o", 212765 },	-- Mogu Artifact
								{ "o", 212766 },	-- Mogu Artifact
							},
							["coord"] = { 40.5, 47.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30342, {	-- Fiery Tongue, Fragile Feet
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30284 },	-- A Thousand Pointy Teeth
					["groups"] = {
						objective(1, {	-- 0/6 Stillwater Crocolisk slain
							["provider"] = { "n", 58455 },	-- Stillwater Crocolisk
							["coord"] = { 39.0, 50.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30339, {	-- Getting your Hands Dirty
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59341,	-- Merchant Tantan
					["coord"] = { 42.2, 45.8, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30340 },	-- Stick in the Mud
					["groups"] = {
						objective(1, {	-- 0/12 Fresh Whitepetal Worm
							["providers"] = {
								{ "i",  84240 },	-- Fresh Whitepetal Worm
								{ "o", 212742 },	-- Fresh Dirt
							},
							["coord"] = { 40.5, 42.0, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30265, {	-- Sparkle in the Eye
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30338,	-- A Weighty Task
						"questID", 30291,	-- Stunning Display
					},
					["groups"] = {
						objective(1, {	-- 0/8 Ruby Eye
							["providers"] = {
								{ "i",  84646 },	-- Ruby Eye
								{ "o", 212761 },	-- Ruby Eye
								{ "o", 212759 },	-- Ruby Eye
								{ "o", 212760 },	-- Ruby Eye
							},
							["coord"] = { 42.5, 47.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30340, {	-- Stick in the Mud
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59341,	-- Merchant Tantan
					["coord"] = { 42.2, 45.8, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1, "questID", 30339 },	-- Getting your Hands Dirty
					["groups"] = {
						objective(1, {	-- 0/12 Whitepetal Reed
							["providers"] = {
								{ "i",  84241 },	-- Whitepetal Reed
								{ "o", 212744 },	-- Whitepetal Reeds
							},
							["coord"] = { 42.5, 52.5, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30291, {	-- Stunning Display
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30338,	-- A Weighty Task
						"questID", 30265,	-- Sparkle in the Eye
					},
					["groups"] = {
						objective(1, {	-- 0/8 Stunned Whitepetal Carp
							["provider"] = { "i", 84656 },	-- Stunned Whitepetal Carp
							["coord"] = { 42.5, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
							["cr"] = 62984,	-- Stunned Whitepetal Carp
						}),
					},
				})),
				RemovedWithSOO(q(30314, {	-- The Displaced Paleblade
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59342,	-- He Softfoot
					["coord"] = { 43.6, 46.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30313,	-- The Moving Mists
						"questID", 30341,	-- Under Watchful Eyes
					},
					["groups"] = {
						objective(1, {	-- 0/8 Paleblade Saurok slain
							["providers"] = {
								{ "n", 59378 },	-- Paleblade Flesheater
								{ "n", 63044 },	-- Paleblade Slithertongue
							},
							["coord"] = { 44.6, 51.4, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30313, {	-- The Moving Mists
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59342,	-- He Softfoot
					["coord"] = { 43.6, 46.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30314,	-- The Displaced Paleblade
						"questID", 30341,	-- Under Watchful Eyes
					},
					["groups"] = {
						objective(1, {	-- 0/8 Fog Walker slain
							["provider"] = { "n", 58672 },	-- Fog Walker
							["coord"] = { 40.4, 55.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30341, {	-- Under Watchful Eyes
					["sourceQuest"] = 31131,	-- Whitepetal Lake
					["qg"] = 59342,	-- He Softfoot
					["coord"] = { 43.6, 46.2, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30314,	-- The Displaced Paleblade
						"questID", 30313,	-- The Moving Mists
					},
					["groups"] = {
						objective(1, {	-- 0/8 Shao-Tien Surveyor slain
							["providers"] = {
								{ "n", 59379 },	-- Shao-Tien Surveyor
								{ "i", 89366 },	-- Shado-Pan Flare
							},
							["coord"] = { 44.4, 43.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
			})),
			--[[
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Ruins of Guo-Lai invasion)

			})),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Ruins of Guo-Lai wildlife)

			})),
			]]--
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Setting Sun Garrison)
				RemovedWithSOO(q(30385, {	-- Setting Sun Garrison (Mistfall Village)
					["sourceQuests"] = {
						30195,	-- Blooming Blossoms
						30263,	-- Clearing in the Forest
						30194,	-- Encroaching Storm
						30196,	-- Lushroom Rush
						30193,	-- Meating Expectations
						30192,	-- My Town, It's on Fire
						30231,	-- Pomfruit Pickup
						30238,	-- Return to Rest
						30232,	-- Ruffling Some Feathers
						30190,	-- Sprite Plight
						30191,	-- Steer Clear of the Beer Here
						30237,	-- The Pandaren Uprising Relived
					},
					["qg"] = 59338,	-- Che Wildwalker
					["coord"] = { 33.9, 72.2, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1,
						"questID", 31247,	-- Setting Sun Garrison
						"questID", 31250,	-- Setting Sun Garrison
						"questID", 31297,	-- Setting Sun Garrison
					},
				})),
				RemovedWithSOO(q(31247, {	-- Setting Sun Garrison (Whitepetal Lake)
					["sourceQuests"] = {
						30284,	-- A Thousand Pointy Teeth
						30338,	-- A Weighty Task
						30342,	-- Fiery Tongue, Fragile Feet
						30339,	-- Getting your Hands Dirty
						30265,	-- Sparkle in the Eye
						30340,	-- Stick in the Mud
						30291,	-- Stunning Display
						30314,	-- The Displaced Paleblade
						30313,	-- The Moving Mists
						30341,	-- Under Watchful Eyes
					},
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1,
						"questID", 30385,	-- Setting Sun Garrison
						"questID", 31250,	-- Setting Sun Garrison
						"questID", 31297,	-- Setting Sun Garrison
					},
				})),
				RemovedWithSOO(q(31250, {	-- Setting Sun Garrison (The Golden Pagoda)
					["sourceQuests"] = {
						31755,	-- Acts of Cruelty
						31754,	-- Cannonfire
						31762,	-- Crumbling Behemoth
						30320,	-- Free Spirits
						30312,	-- Given a Second Chance
						31756,	-- High Chance of Rain
						31758,	-- Laosy Scouting
						30309,	-- Set in Stone
						31760,	-- Striking First
						30308,	-- Stone Hard Quilen
						30307,	-- The Eternal Vigil
						30310,	-- Thundering Skies
						31757,	-- Unleashed Spirits
					},
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1,
						"questID", 30385,	-- Setting Sun Garrison
						"questID", 31247,	-- Setting Sun Garrison
						"questID", 31297,	-- Setting Sun Garrison
					},
				})),
				RemovedWithSOO(q(31297, {	-- Setting Sun Garrison
					["qg"] = 59337,	-- Sun Tenderheart
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lockCriteria"] = { 1,
						"questID", 30385,	-- Setting Sun Garrison
						"questID", 31247,	-- Setting Sun Garrison
						"questID", 31250,	-- Setting Sun Garrison
					},
				})),
				RemovedWithSOO(q(30244, {	-- Along the Serpent's Spine
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30261,	-- Roll Club: Serpent's Spine
						"questID", 30246,	-- Upon the Ramparts
						"questID", 30444,	-- No Reprieve
					},
					["groups"] = {
						objective(1, {	-- 0/10 Krik'thik wall attackers slain
							["providers"] = {
								{ "n", 63974 },	-- Krik'thik Locust-Guard
								{ "n", 63976 },	-- Krik'thik Needler
							},
							["coord"] = { 11.2, 59.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				q(30266, {	-- Bloodied Skies
					-- #if MOP
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 59340,	-- Leven Dawnblade
					["coord"] = { 21.4, 71.2, VALE_OF_ETERNAL_BLOSSOMS },
					-- #else
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
					["lockCriteria"] = { 1,
						"questID", 30245,	-- Lost Scouts
						"questID", 30243,	-- Mantid Under Fire
					},
					["groups"] = {
						objective(1, {	-- 0/30 Krik'thik Swarmer slain
							["providers"] = {
								{ "n", 63973 },	-- Krik'thik Swarmer
								{ "n", 64336 },	-- Setting Sun Turret
							},
							["coords"] = {
								{ 5.4, 44.1, VALE_OF_ETERNAL_BLOSSOMS },
								{ 5.4, 72.1, VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
					},
				}),
				RemovedWithSOO(q(30264, {	-- Enemy at the Gates
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES },
					["groups"] = {
						objective(1, {	-- Mount a War Serpent
							["provider"] = { "n", 65336 },	-- War Serpent
							["coord"] = { 15.4, 66.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						objective(2, {	-- 0/60 Krik'thik Hiveling slain
							["provider"] = { "n", 63972 },	-- Krik'thik Hiveling
							["coords"] = {
								{ 67.4, 14.4, DREAD_WASTES },
								{ 81.0, 91.6, TOWNLONG_STEPPES },
							},
						}),
						objective(3, {	-- 0/3 Krik'thik War Wagon slain
							["provider"] = { "n", 64274 },	-- Krik'thik War Wagon
							["coord"] = { 65.8, 12.6, DREAD_WASTES },
						}),
						objective(4, {	-- 0/3 Krik'thik Catapult slain
							["provider"] = { "n", 64275 },	-- Krik'thik Catapult
							["coord"] = { 68.6, 18.6, DREAD_WASTES },
						}),
					},
				})),
				RemovedWithSOO(q(30245, {	-- Lost Scouts
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30266,	-- Bloodied Skies
						"questID", 30243,	-- Mantid Under Fire
					},
					["groups"] = {
						objective(1, {	-- 0/3 Shado-Pan Scout information recieved
							["provider"] = { "n", 58930 },	-- Shado-Pan Scout
							["coords"] = {
								{ 17.0, 47.0, VALE_OF_ETERNAL_BLOSSOMS },
								{ 16.0, 32.2, VALE_OF_ETERNAL_BLOSSOMS },
								{ 8.8, 37.8, VALE_OF_ETERNAL_BLOSSOMS },
								{ 11.0, 43.2, VALE_OF_ETERNAL_BLOSSOMS },
								{ 13.0, 38.6, VALE_OF_ETERNAL_BLOSSOMS },
							},
						}),
					},
				})),
				q(30243, {	-- Mantid Under Fire
					-- #if MOP
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					-- #endif
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES },
					["lockCriteria"] = { 1,
						"questID", 30266,	-- Bloodied Skies
						"questID", 30245,	-- Lost Scouts
					},
					["groups"] = {
						objective(1, {	-- 0/80 Krik'thik Hiveling slain
							["provider"] = { "n", 63972 },	-- Krik'thik Hiveling
							["coords"] = {
								{ 67.4, 14.4, DREAD_WASTES },
								{ 81.0, 91.6, TOWNLONG_STEPPES },
							},
						}),
					},
				}),
				RemovedWithSOO(q(30444, {	-- No Reprieve
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30244,	-- Along the Serpent's Spine
						"questID", 30261,	-- Roll Club: Serpent's Spine
						"questID", 30246,	-- Upon the Ramparts
					},
					["groups"] = {
						objective(1, {	-- 0/8 Shao-Tien mogu slain
							["providers"] = {
								{ "n", 58927 },	-- Shao-Tien Fist
								{ "n", 58928 },	-- Shao-Tien Antiquator
							},
							["coord"] = { 14.0, 35.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				q(30261, {	-- Roll Club: Serpent's Spine
					-- #if MOP
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					-- #endif
					["qg"] = 58704,	-- Kelari Featherfoot
					["coord"] = { 18.1, 63.5, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30244,	-- Along the Serpent's Spine
						"questID", 30246,	-- Upon the Ramparts
						"questID", 30444,	-- No Reprieve
					},
					["groups"] = {
						objective(1, {	-- Speak to Kelari Featherfoot
							["provider"] = { "n", 58704 },	-- Kelari Featherfoot <Master of the Rolling Thunder>
							["coord"] = { 18.2, 63.4, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						--[[
						objective(2, {	-- Serpent's Spine Roll Course finished
							["provider"] = { "n",  },	--
							["coord"] = { , VALE_OF_ETERNAL_BLOSSOMS },
						}),
						]]--
					},
				}),
				q(30242, {	-- Survival Ring: Blades
					-- #if MOP
					["sourceQuests"] = {
						30385,	-- Setting Sun Garrison
						31247,	-- Setting Sun Garrison
						31250,	-- Setting Sun Garrison
						31297,	-- Setting Sun Garrison
					},
					["qg"] = 59340,	-- Leven Dawnblade
					["coord"] = { 21.4, 71.2, VALE_OF_ETERNAL_BLOSSOMS },
					-- #else
					["qg"] = 58743,	-- Yumi Goldenpaw
					["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
					["lockCriteria"] = { 1, "questID", 30240 },	-- Survival Ring: Flame
				}),
				q(30240, {	-- Survival Ring: Flame
					-- #if MOP
					["sourceQuests"] = {
						30385,	-- Setting Sun Garrison
						31247,	-- Setting Sun Garrison
						31250,	-- Setting Sun Garrison
						31297,	-- Setting Sun Garrison
					},
					["qg"] = 59340,	-- Leven Dawnblade
					["coord"] = { 21.4, 71.2, VALE_OF_ETERNAL_BLOSSOMS },
					-- #else
					["qg"] = 58743,	-- Yumi Goldenpaw
					["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
					["lockCriteria"] = { 1, "questID", 30242 },	-- Survival Ring: Blades
				}),
				q(30306, {	-- The Battle Ring
					-- #if MOP_BEFORE_SOO
					["sourceQuests"] = {
						30385,	-- Setting Sun Garrison
						31247,	-- Setting Sun Garrison
						31250,	-- Setting Sun Garrison
						31297,	-- Setting Sun Garrison
					},
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.6, VALE_OF_ETERNAL_BLOSSOMS },
					-- #else
					["qg"] = 58962,	-- Hai-Me Heavyhands
					["coord"] = { 19.0, 75.4, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/20 Shado-Pan Trainees defeated
							["provider"] = { "n", 58992 },	-- Shado-Pan Trainee
							["coord"] = { 19.0, 72.4, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				}),
				RemovedWithSOO(q(30248, {	-- The Butcher
					["sourceQuest"] = 30245,	-- Lost Scouts
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30249,	-- Under the Setting Sun
						"questID", 30251,	-- Vyraxxis, the Krik'thik Swarm-Lord
					},
					["groups"] = {
						objective(1, {	-- 0/1 Bai-Jin the Butcher slain
							["providers"] = {
								{ "n",  58949 },	-- Bai-Jin the Butcher <Shao-Tien Imperion>
								-- #if ANYCLASSIC
								{ "n", 246386 },	-- Bai-Jin the Butcher <Shao-Tien Imperion>
								-- #endif
							},
							["coords"] = {
								{ 17.0, 48.7, VALE_OF_ETERNAL_BLOSSOMS },
								-- #if ANYCLASSIC
								{ 15.36, 25.10, VALE_OF_ETERNAL_BLOSSOMS },
								-- #endif
							},
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30246, {	-- Upon the Ramparts
					["sourceQuests"] = {
						30242,	-- Survival Ring: Blades
						30240,	-- Survival Ring: Flame
						30306,	-- The Battle Ring
					},
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30244,	-- Along the Serpent's Spine
						"questID", 30261,	-- Roll Club: Serpent's Spine
						"questID", 30444,	-- No Reprieve
					},
					["groups"] = {
						objective(1, {	-- 0/10 Krik'thik wall attackers slain
							["providers"] = {
								{ "n", 63974 },	-- Krik'thik Locust-Guard
								{ "n", 63976 },	-- Krik'thik Needler
							},
							["coord"] = { 11.2, 59.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30249, {	-- Under the Setting Sun
					["sourceQuest"] = 30244,	-- Along the Serpent's Spine
					["qg"] = 58920,	-- Kun Autumnlight
					["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30248,	-- The Butcher
						"questID", 30251,	-- Vyraxxis, the Krik'thik Swarm-Lord
					},
					["groups"] = {
						objective(1, {	-- 0/1 Kri'chon slain
							["providers"] = {
								{ "n",  63978 },	-- Kri'chon <The Corpse-Reaver>
								-- #if ANYCLASSIC
								{ "n", 246383 },	-- Kri'chon <The Corpse-Reaver>
								-- #endif
							},
							["coord"] = { 6.2, 58.6, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30251, {	-- Vyraxxis, the Krik'thik Swarm-Lord
					["sourceQuest"] = 30246,	-- Upon the Ramparts
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lockCriteria"] = { 1,
						"questID", 30248,	-- The Butcher
						"questID", 30249,	-- Under the Setting Sun
					},
					["groups"] = {
						objective(1, {	-- 0/1 Vyraxxis slain
							["providers"] = {
								{ "n",  63977 },	-- Vyraxxis <Krik'thik Swarm-Lord>
								-- #if ANYCLASSIC
								{ "n", 246384 },	-- Vyraxxis <Krik'thik Swarm-Lord>
								-- #endif
							},
							["coord"] = { 7.92, 33.8, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90625),	-- Treasures of the Vale
					},
				})),
			})),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED }, }, {	-- Daily Quests (Unsorted)
				RemovedWithSOO(q(30283, {	-- A Smashing Impression
					["qg"] = 58469,	-- Ren Firetongue
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30281, {	-- The Silent Approach
					["qg"] = 58470,	-- He Softfoot
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30482, {	-- The Soul-Gatherer
					["sourceQuest"] = 30281,	-- The Silent Approach
					["qg"] = 58470,	-- He Softfoot
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(31136, {	-- Behind Our Lines
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30226, {	-- Blood on the Rise
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30282, {	-- Burning Away the Filth
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30481, {	-- Carved in Stone
					["qg"] = 59333,	-- Rook Stonetoe
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30233, {	-- Cracklefang
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(31244, {	-- Guo-Lai Encampment
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(31240, {	-- Guo-Lai Infestation
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30304, {	-- Hard as a Rock
					["qg"] = 58504,	-- Kun Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30305, {	-- He Knows What He's Doing
					["qg"] = 59333,	-- Rook Stonetoe
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30200, {	-- In Ashen Webs
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30293, {	-- In Enemy Hands
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(31295, {	-- Mogu within the Ruins of Guo-Lai
					["qg"] = 59338,	-- Che Wildwalker
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30299, {	-- No Stone Unturned
					["qg"] = 59334,	-- Sun Tenderheart
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30301, {	-- Offering a Warm Welcome
					["qg"] = 59332,	-- Leven Dawnblade
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30298, {	-- Painting the Ruins Red
					["qg"] = 59332,	-- Leven Dawnblade
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30292, {	-- Rude Awakenings
					["qg"] = 58471,	-- Kun Autumnlight
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30205, {	-- Runelocked
					["qg"] = 63266,	-- Sinan the Dreamer
					["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30206, {	-- Runes in the Ruins
					["qg"] = 63266,	-- Sinan the Dreamer
					["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30204, {	-- That's Not a Rock!
					["qg"] = 58504,	-- Kun Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
				})),
				RemovedWithSOO(q(30225, {	-- The Ashweb Matriarch
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				q(30277, {	-- The Crumbling Hall
					-- #if MOP
					["qg"] = 58503,	-- Anji Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
					-- #else
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["groups"] = {
						--[[
						objective(1, {	-- Deactivate Spirit Wall
							["providers"] = {
								{ "o",  },	--
								{ "o",  },	--
							},
							["coords"] = {
								{ , VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
								{ , VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							},
						}),
						]]--
						objective(2, {	-- 0/1 Ancient Guo-Lai Artifact
							["providers"] = {
								{ "i",  87790 },	-- Ancient Guo-Lai Artifact (QI!)
								{ "o", 214394 },	-- Ancient Guo-Lai Artifact
							},
							["coord"] = { 49.7, 30.0, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						}),
					},
				}),
				RemovedWithSOO(q(30302, {	-- The Imperion Threat
					["qg"] = 59332,	-- Leven Dawnblade
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30300, {	-- The Key to Success
					["qg"] = 59334,	-- Sun Tenderheart
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(31248, {	-- The Ruins of Guo-Lai
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },	-- CRIEVE NOTE: This opened at Honored for me.
				})),
				RemovedWithSOO(q(31294, {	-- The Ruins of Guo-Lai
					["sourceQuests"] = {
						30236,	-- Aetha
						30239,	-- Lao-Fe the Slavebinder
						30235,	-- Quid Pro Quo
					},
					["qg"] = 59338,	-- Che Wildwalker
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(31296, {	-- The Ruins of Guo-Lai
					["qg"] = 59337,	-- Sun Tenderheart
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				q(30280, {	-- The Thunder Below
					-- #if MOP
					["qg"] = 58503,	-- Anji Autumnlight
					["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
					-- #else
					["qg"] = 58919,	-- Anji Autumnlight
					["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
					-- #endif
				}),
				RemovedWithSOO(q(30228, {	-- Troubling the Troublemakers
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
				})),
				RemovedWithSOO(q(30234, {	-- Vicejaw
					["qg"] = 59343,	-- Ren Firetongue
					["coord"] = { 42.4, 46.0, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
				RemovedWithSOO(q(30227, {	-- Wulon, the Granite Sentinel
					["qg"] = 58503,	-- Anji Autumnlight
					-- ["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
					["groups"] = {
						i(90625),	-- Treasures of the Vale
					},
				})),
			})),
			n(QUESTS, {
				RemovedWithSOO(q(32011, {	-- A Celestial Task (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				})),
				RemovedWithSOO(q(32010, {	-- A Celestial Task (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				RemovedWithSOO(q(30642, {	-- Battle Axe of the Thunder King
					["sourceQuest"] = 30641,	-- Battle Helm of the Thunder King
					["qg"] = 59905,	-- Zhi the Harmonious
					["coord"] = { 57.25, 43.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["lvl"] = lvlsquish(90, 90, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Passed Trial of the Constructs
							["description"] = "Kill the constructs, the orb in the middle will give you a damage boost and the green orbs will heal you.",
							["provider"] = { "n", 60403 },	-- Zhi the Harmonious <Caretaker>
							["coord"] = { 44.79, 76.34, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						objective(2, {	-- 0/1 Battle Axe of the Thunder King
							["providers"] = {
								{ "i",  80807 },	-- Battle Axe of the Thunder King
								{ "o", 211396 },	-- Battle Axe of the Thunder King
							},
							["coord"] = { 45.3, 76.2, VALE_OF_ETERNAL_BLOSSOMS },
						}),
						i(90601),	-- Bonded Plate of the Golden Lotus
						i(90607),	-- Burning Robes of the Golden Lotus
						i(90598),	-- Crackling Chain of the Golden Lotus
						i(90602),	-- Deadeye Chain of the Golden Lotus
						i(90597),	-- Delicate Chestguard of the Golden Lotus
						i(90603),	-- Durable Plate of the Golden Lotus
						i(90600),	-- Ferocious Plate of the Golden Lotus
						i(90609),	-- Mending Robe of the Golden Lotus
						i(90599),	-- Warming Chestguard of the Golden Lotus
					},
				})),
				RemovedWithSOO(q(30641, {	-- Battle Helm of the Thunder King
					["sourceQuest"] = 30640,	-- Battle Spear of the Thunder King
					["qg"] = 59905,	-- Zhi the Harmonious
					["coord"] = { 57.25, 43.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["lvl"] = lvlsquish(90, 90, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Enter the Hall of Tiles
							["provider"] = { "n", 64889 },	-- Ren Firetongue
							["coord"] = { 58.37, 44.45, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						}),
						objective(2, {	-- 0/1 Battle Helm of the Thunder King
							["providers"] = {
								{ "i",  80222 },	-- Battle Helm of the Thunder King
								{ "o", 211393 },	-- Battle Helm of the Thunder King
							},
							["coord"] = { 51.1, 81.6, VALE_OF_ETERNAL_BLOSSOMS_THE_HALL_OF_THE_SERPENT },
						}),
					},
				})),
				RemovedWithSOO(q(30640, {	-- Battle Spear of the Thunder King
					["sourceQuest"] = 30639,	-- The Secrets of Guo-Lai
					["qg"] = 59905,	-- Zhi the Harmonious
					["coord"] = { 57.25, 43.0, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["lvl"] = lvlsquish(90, 90, 30),
					["groups"] = {
						objective(1, {	-- 0/1 Battle Spear of the Thunder King
							["providers"] = {
								{ "i",  80808 },	-- Battle Spear of the Thunder King
								{ "o", 211395 },	-- Battle Spear of the Thunder King
							},
							["coord"] = { 21.4, 20.1, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				})),
				RemovedWithSOO(q(30646, {	-- The Final Power
					["sourceQuests"] = { 30645 },	-- The Might of Three
					["qg"] = 59906,	-- Sinan the Dreamer
					["coord"] = { 74.2, 41.8, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED },
					["lvl"] = lvlsquish(90, 90, 30),
					["groups"] = {
						i(90596),	-- Burning Necklace of the Golden Lotus
						i(90593),	-- Delicate Necklace of the Golden Lotus
						i(90594),	-- Durable Necklace of the Golden Lotus
						i(90592),	-- Ferocious Necklace of the Golden Lotus
						i(90595),	-- Mending Necklace of the Golden Lotus
					},
				})),
				RemovedWithSOO(q(30645, {	-- The Might of Three
					["sourceQuest"] = 30644,	-- What Comes to Pass
					["qg"] = 58468,	-- Sun Tenderheart
					["coord"] = { 56.44, 43.26, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				RemovedWithSOO(q(30643, {	-- The Mogu's Message
					["sourceQuest"] = 30642,	-- Battle Axe of the Thunder King
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				q(31384, {	-- The Golden Lotus (A)
					["qg"] = 64031,	-- Xari the Kind
					["coord"] = { 84.2, 62.4, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31385, {	-- The Golden Lotus (H)
					["qg"] = 64007,	-- Weng the Merciful
					["coord"] = { 63.0, 22.2, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				RemovedWithSOO(q(30639, {	-- The Secrets of Guo-Lai
					["sourceQuests"] = {
						30635,	-- Killing the Quilen
						30636,	-- Stones of Power
						30637,	-- The Guo-Lai Halls
						30654,	-- The Guo-Lai Halls
					},
					["qg"] = 58408,	-- Leven Dawnblade
					["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, HONORED },
					["lvl"] = lvlsquish(90, 90, 30),
					["groups"] = {
						objective(1, {	-- Catch up with He Softfoot
							["provider"] = { "n", 64647 },	-- He Softfoot
							["coord"] = { 42.0, 53.4, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						}),
						objective(2, {	-- Uncover the mogu plan in the Hall of Statues
							["provider"] = { "n", 64663 },	-- Zhao-Jin the Bloodletter <Shao-Tien Warlord>
							["coord"] = { 48.0, 28.8, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						}),
						i(90615),	-- Burning Mark of the Golden Lotus
						i(90614),	-- Delicate Mark of the Golden Lotus
						i(90618),	-- Durable Mark of the Golden Lotus
						i(90617),	-- Ferocious Mark of the Golden Lotus
						i(90616),	-- Mending Mark of the Golden Lotus
					},
				})),
				q(31387, {	-- Understanding The Shado-Pan (A)
					["qg"] = 64030,	-- Lao Lang
					["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },	-- CRIEVE NOTE: Check this at Revered
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31389, {	-- Understanding The Shado-Pan (H)
					["qg"] = 64002,	-- Sang-Bo
					["coord"] = { 63.0, 21.2, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, REVERED },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },	-- CRIEVE NOTE: Check this at Revered
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				RemovedWithSOO(q(30644, {	-- What Comes to Pass
					["sourceQuests"] = { 30643 },	-- The Mogu's Message
					["qg"] = 59905,	-- Zhi the Harmonious
					["coord"] = { 44.79, 76.34, VALE_OF_ETERNAL_BLOSSOMS },
					["minReputation"] = { FACTION_GOLDEN_LOTUS, EXALTED },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
			}),
			n(RARES, {
				["description"] = "These aren't really rares, they're elite quest mobs that are only available on certain days when their respective quest chain is active.",
				["groups"] = {
					n(58778, {	-- Aetha <Spirit of the Golden Winds>
						["coord"] = { 35.0, 89.9, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 244975 },	-- Aetha <Spirit of the Golden Winds>
						-- #endif
					}),
					n(58949, {	-- Bai-Jin the Butcher <Shao-Tien Imperion>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 15.36, 25.10, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 17.0, 48.7, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 246386 },	-- Bai-Jin the Butcher <Shao-Tien Imperion>
						-- #endif
					}),
					n(63695, {	-- Baolai the Immolator <Shao-Tien Imperion>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 37.0, 81.0, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 28.7, 43.3, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 245163 },	-- Baolai the Immolator <Shao-Tien Imperion>
						-- #endif
					}),
					n(58474, {	-- Bloodtip <Ashweb Matriarch>
						["coord"] = { 75.8, 47.5, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						-- #if ANYCLASSIC
						["crs"] = { 245926 },	-- Bloodtip <Ashweb Matriarch>
						-- #endif
					}),
					n(58768, {	-- Cracklefang
						["coord"] = { 46.4, 59.3, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246178 },	-- Cracklefang
						-- #endif
					}),
					n(62881, {	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 39.0, 74.7, VALE_OF_ETERNAL_BLOSSOMS },	-- Pre-5.4
							-- #else
							{ 53.1, 59.3, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 245153 },	-- Gaohun the Soul-Severer <Shao-Tien Imperion>
						-- #endif
					}),
					n(63101, {	-- General Temuja <The Soul-Slaver>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 68.0, 55.0, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 26.3, 51.1, VALE_OF_ETERNAL_BLOSSOMS },
							{ 30.6, 58.2, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 246242 },	-- General Temuja <The Soul-Slaver>
						-- #endif
					}),
					n(62880, {	-- Gochao the Ironfist <Shao-Tien Imperion>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 76.8, 72.0, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							-- #else
							{ 26.86, 13.08, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 246031 },	-- Gochao the Ironfist <Shao-Tien Imperion>
						-- #endif
					}),
					n(63691, {	-- Huo-Shuang <Shao-Tien Imperion>
						["coord"] = { 75.8, 47.5, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
						-- #if ANYCLASSIC
						["crs"] = { 246032 },	-- Huo-Shuang <Shao-Tien Imperion>
						-- #endif
					}),
					n(63978, {	-- Kri'chon <The Corpse-Reaver>
						["coord"] = { 6.27, 58.5, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246383 },	-- Kri'chon <The Corpse-Reaver>
						-- #endif
					}),
					n(58771, {	-- Quid <Spirit of the Misty Falls>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 30.63, 79.24, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 66.4, 39.3, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 244995 },	-- Quid <Spirit of the Misty Falls>
						-- #endif
					}),
					n(63240, {	-- Shadowmaster Sydow <The Soul-Gatherer>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 40.0, 48.0, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 30.5, 78.4, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						-- #if ANYCLASSIC
						["crs"] = { 246246 },	-- Shadowmaster Sydow <The Soul-Gatherer>
						-- #endif
					}),
					n(58817, {	-- Spirit of Lao-Fe <The Slavebinder>
						["coord"] = { 47.4, 65.6, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246479 },	-- Spirit of Lao-Fe <The Slavebinder>
						-- #endif
					}),
					n(58769, {	-- Vicejaw
						["coord"] = { 37.4, 50.9, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246176 },	-- Vicejaw
						-- #endif
					}),
					n(63977, {	-- Vyraxxis <Krik'thik Swarm-Lord>
						["coord"] = { 7.92, 33.8, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if ANYCLASSIC
						["crs"] = { 246384 },	-- Vyraxxis <Krik'thik Swarm-Lord>
						-- #endif
					}),
					n(63510, {	-- Wulon <The Granite Sentinel>
						["coords"] = {
							-- #if MOP_BEFORE_SOO
							{ 76.8, 72.0, VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS },
							-- #else
							{ 45.3, 76.3, VALE_OF_ETERNAL_BLOSSOMS },
							{ 40.2, 77.1, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						["crs"] = {
							63509,	-- Wulon <The Granite Sentinel>
							64669,	-- Wulon <The Granite Sentinel>
							64671,	-- Wulon <The Granite Sentinel>
							64670,	-- Wulon <The Granite Sentinel>
						},
					}),
				},
			}),
			n(VENDORS, {
				n(59908, {	-- Jaluu the Generous <The Golden Lotus Quartermaster>
					["coords"] = {
						{ 84.2, 62.7, VALE_OF_ETERNAL_BLOSSOMS },	-- Alliance
						{ 63.2, 22.0, VALE_OF_ETERNAL_BLOSSOMS },	-- Horde
					},
					["groups"] = bubbleDownClassicRep(FACTION_GOLDEN_LOTUS, {
						{		-- Neutral
							i(89071),	-- Alani's Inflexible Ring
							i(89527),	-- Amulet of Swirling Mists
							i(89070),	-- Anji's Keepsake
							i(89423),	-- Battleguard of Guo-Lai
							i(89642),	-- Bracers of Eternal Resolve
							i(89648),	-- Bracers of Inner Light
							i(89430),	-- Breastplate of the Golden Pagoda
							i(89421),	-- Cuirass of the Twin Monoliths
							i(89420),	-- Dawnblade's Chestguard
							i(89531),	-- Gorget of Usurped Kings
							i(89341),	-- Imperion Spaulders
							i(89663),	-- Leggings of Twisted Vines
							i(89073),	-- Leven's Circle of Hope
							i(89340),	-- Mantle of the Golden Sun
							i(89343),	-- Mindbender Shoulders
							i(89432, {	-- Mistfall Robes
								["cost"] = 5019100,	-- 501g 91s
							}),
							i(89232),	-- Mogu Rune of Paralysis
							i(89528),	-- Necklace of Jade Pearls
							i(89347),	-- Paleblade Shoulderguards
							i(89529),	-- Pendant of Endless Inquisition
							i(89069),	-- Ring of the Golden Stair
							i(89434),	-- Robe of the Five Sisters
							i(89429),	-- Robes of the Setting Sun
							i(89649),	-- Serrated Forearm Guards
							i(89346),	-- Shoulders of Autumnlight
							i(89072),	-- Simple Harmonious Ring
							i(89662),	-- Snowpack Waders
							i(89431, {	-- Softfoot Silentwrap
								["cost"] = 5001400,	-- 500g 14s
							}),
							i(89345),	-- Stonetoe Spaulders
							i(89653),	-- Surehand Grips
							i(89339),	-- Tenderheart Shoulders
							i(89643),	-- Tranquility Bindings
							i(89530),	-- Triumphant Conqueror's Chain
							i(89433),	-- Vestments of Thundering Skies
							i(89652),	-- Wandering Friar's Gloves
							i(89342),	-- Whitepetal Shouldergarb
							i(89344),	-- Windwalker Spaulders
						}, {	-- Friendly
						}, {	-- Honored
							i(86235),	-- Pattern: Angerhide Leg Armor (RECIPE!)
							i(86237),	-- Pattern: Chestguard of Earthen Harmony (RECIPE!)
							i(86371),	-- Pattern: Gloves of Creation (RECIPE!)
							i(86273),	-- Pattern: Gloves of Earthen Harmony (RECIPE!)
							i(86376),	-- Pattern: Greater Cerulean Spellthread (RECIPE!)
							i(86375),	-- Pattern: Greater Pearlescent Spellthread (RECIPE!)
							i(86274),	-- Pattern: Greyshadow Chestguard (RECIPE!)
							i(86275),	-- Pattern: Greyshadow Gloves (RECIPE!)
							i(86276),	-- Pattern: Ironscale Leg Armor (RECIPE!)
							i(86277),	-- Pattern: Lifekeeper's Gloves (RECIPE!)
							i(86278),	-- Pattern: Lifekeeper's Robe (RECIPE!)
							i(86370),	-- Pattern: Robes of Creation (RECIPE!)
							i(86295),	-- Pattern: Shadowleather Leg Armor (RECIPE!)
							i(86369),	-- Pattern: Spelltwister's Gloves (RECIPE!)
							i(86368),	-- Pattern: Spelltwister's Grand Robe (RECIPE!)
							i(86308),	-- Pattern: Wildblood Gloves (RECIPE!)
							i(86309),	-- Pattern: Wildblood Vest (RECIPE!)
						}, {	-- Revered
							i(93215),	-- Grand Commendation of the Golden Lotus
						}, {	-- Exalted
							i(89797),	-- Golden Lotus Tabard
							i(87781, {	-- Reins of the Azure Riding Crane (MOUNT!)
								["cost"] = 5000000,	-- 500g
							}),
							i(87782, {	-- Reins of the Golden Riding Crane (MOUNT!)
								["cost"] = 25000000,	-- 2,500g
							}),
							i(87783, {	-- Reins of the Regal Riding Crane (MOUNT!)
								["cost"] = 15000000,	-- 1,500g
							}),
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, i(103624, {	-- Treasures of the Vale
					["description"] = "Contains a number of Pandarian crafting reagents, herbs, and ore.",
					["timeline"] = { ADDED_5_4_0 },
					["crs"] = {
						58778,	-- Aetha
						58949,	-- Bai-Jin the Butcher
						63695,	-- Baolai the Immolator
						58474,	-- Bloodtip
						58768,	-- Cracklefang
						62881,	-- Gaohun the Soul-Severer
						63101,	-- General Temuja
						62880,	-- Gochao the Ironfist
						63691,	-- Huo-Shuang
						63978,	-- Kri'chon
						58771,	-- Quid
						63240,	-- Shadowmaster Sydow
						58817,	-- Spirit of Lao-Fe
						58769,	-- Vicejaw
						63977,	-- Vyraxxis
						63509,	-- Wulon
					},
				})),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_GOLDEN_LOTUS, {
		n(QUESTS, {
			q(31652),	-- Roll Club: Serpent's Spine Tracking Quest
			RemovedWithSOO(q(30294)),	-- Small Comforts, auto completed after completing Burning Away the Filth (30282)
		}),
	}),
})));
