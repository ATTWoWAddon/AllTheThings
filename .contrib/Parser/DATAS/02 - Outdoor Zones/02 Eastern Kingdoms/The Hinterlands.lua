---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(THE_HINTERLANDS, {
		["lore"] = "The Hinterlands, located in the Northern part of the Eastern Kingdoms, are probably most notable for the Wildhammer dwarves who make their residence at Aerie Peak in the west. The Wildhammers have always been staunch allies of the Alliance. It is from the Hinterlands that these dwarves find and tame their world-renowned gryphons. The Razorbeak gryphons roam wild in this region.\n\nAlso in the Hinterlands is one of the last remaining settlements of the high elves in Lordaeron at the Quel'Danil Lodge.\n\nThe Hinterlands are also home to a large population of forest trolls, which are divided into three separate tribes. The Revantusk tribe is the only one of the three that has declared sides in the Horde/Alliance conflict and support the warchief Thrall of the Horde. The Vilebranch tribe holds residence in the massive troll city of Jintha'Alor as well as the Altar of Zul while the Witherbark tribe holds the smallest influence, hailing from the temples of Shadra'Alor.",
		["icon"] = 236780,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(773),	-- Explore The Hinterlands
				ach(4897, {	-- Hinterlands Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if AFTER MOP
					["groups"] = {
						crit(38375, {	-- Quel'Danil Lodge
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26532,	-- Shadra the Venom Queen
							},
						}),
						crit(38376, {	-- Quel'Danil Lodge
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26643,	-- Starvation Diet
							},
						}),
						crit(38371, {	-- Jintha'Alor
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26525,	-- Venomous Secrets
							},
						}),
						crit(38370, {	-- Jintha'Alor
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26526,	-- Hunt the Keeper
							},
						}),
						crit(38372, {	-- Jintha'Alor
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26516,	-- It's Ours Now
							},
						}),
						crit(38374, {	-- Jintha'Alor
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26521,	-- Faces of Evil
							},
						}),
						crit(38373, {	-- Jintha'Alor
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26524,	-- Dark Vessels
							},
						}),
						crit(38377, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26492,	-- Skulk Rock Supplies
							},
						}),
						crit(38378, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26491,	-- Skulk Rock Clean-Up
							},
						}),
						crit(38379, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26490,	-- Prime Slime
							},
						}),
						crit(38380, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26486,	-- 99 Bottles of Booze on the Beach
							},
						}),
						crit(38381, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26485,	-- Snapjaws, Lad!
							},
						}),
						crit(38382, {	-- Stormfeather Outpost
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26462,	-- The Wicked Revantusk
							},
						}),
						crit(38384, {	-- Hiri'watha
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26387,	-- Starvation Diet
							},
						}),
						crit(38383, {	-- Hiri'watha
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26419,	-- Shadra the Venom Queen
							},
						}),
						crit(38385, {	-- Jintha'Alor
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26308,	-- It's Ours Now
							},
						}),
						crit(38386, {	-- Jintha'Alor
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26369,	-- Hunt the Keeper
							},
						}),
						crit(38387, {	-- Jintha'Alor
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26357,	-- Faces of Evil
							},
						}),
						crit(38388, {	--	Jintha'Alor
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26368,	-- Venomous Secrets
							},
						}),
						crit(45292, {	-- Jintha'Alor
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26309,	-- Dark Vessels
							},
						}),
						crit(38390, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26238,	-- The Savage Dwarves
							},
						}),
						crit(38391, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26240,	-- Stomp To My Beat
							},
						}),
						crit(38392, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26212,	-- Lard Lost His Lunch
							},
						}),
						crit(38393, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26225,	-- Pupellyverbos Port
							},
						}),
						crit(38389, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26224,	-- Hunt the Savages
							},
						}),
						crit(38394, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26211,	-- Snapjaws, Mon!
							},
						}),
						crit(38395, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26210,	-- Gammerita, Mon!
							},
						}),
						crit(38396, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26267,	-- Skulk Rock Clean-Up
							},
						}),
						crit(38397, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26283,	-- Prime Slime
							},
						}),
						crit(38398, {	-- Revantusk Village
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26268,	-- Skulk Rock Supplies
							},
						}),
					},
					-- #else
					["sourceQuests"] = {
						26532,	-- Shadra the Venom Queen
						26643,	-- Starvation Diet
						26525,	-- Venomous Secrets
						26526,	-- Hunt the Keeper
						26516,	-- It's Ours Now
						26521,	-- Faces of Evil
						26524,	-- Dark Vessels
						26492,	-- Skulk Rock Supplies
						26491,	-- Skulk Rock Clean-Up
						26490,	-- Prime Slime
						26486,	-- 99 Bottles of Booze on the Beach
						26485,	-- Snapjaws, Lad!
						26462,	-- The Wicked Revantusk
						26387,	-- Starvation Diet
						26419,	-- Shadra the Venom Queen
						26308,	-- It's Ours Now
						26369,	-- Hunt the Keeper
						26357,	-- Faces of Evil
						26368,	-- Venomous Secrets
						26309,	-- Dark Vessels
						26238,	-- The Savage Dwarves
						26240,	-- Stomp To My Beat
						26212,	-- Lard Lost His Lunch
						26225,	-- Pupellyverbos Port
						26224,	-- Hunt the Savages
						26211,	-- Snapjaws, Mon!
						26210,	-- Gammerita, Mon!
						26267,	-- Skulk Rock Clean-Up
						26283,	-- Prime Slime
						26268,	-- Skulk Rock Supplies
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					393,	-- Cockroach (PET!)
					448,	-- Hare (PET!)
					450,	-- Maggot (PET!)
					417,	-- Rat (PET!)
				}},
				["groups"] = {
					pet(449),	-- Brown Marmot (PET!)
					pet(446, {	-- Jade Oozeling (PET!)
						["coord"] = { 58.8, 43.0, THE_HINTERLANDS },
					}),
				},
			}),
			explorationHeader({
				exploration(348),	-- Aerie Peak
				exploration(1884),	-- Agol'watha
				-- #if AFTER CATA
				exploration(1887),	-- Bogen's Ledge
				-- #endif
				exploration(1885),	-- Hiri'watha / Hiri'watha Research Station [CATA+]
				exploration(354),	-- Jintha'Alor
				exploration(1882),	-- Plaguemist Ravine
				exploration(350),	-- Quel'Danil Lodge
				-- #if AFTER CATA
				exploration(3317),	-- Revantusk Village
				-- #endif
				exploration(356),	-- Seradane
				exploration(353),	-- Shadra'Alor
				exploration(1917),	-- Shaol'watha
				exploration(351),	-- Skulk Rock
				-- #if AFTER CATA
				exploration(5323),	-- Stormfeather Outpost
				-- #endif
				exploration(355),	-- The Altar of Zul
				exploration(1886),	-- The Creeping Ruin
				exploration(307),	-- The Overlook Cliffs
				exploration(1883),	-- Valorwind Lake
				-- #if AFTER CATA
				exploration(352),	-- Zun'watha
				-- #endif
			}),
			-- #if BEFORE TBC
			n(FACTIONS, {
				faction(471, {	-- Wildhammer Clan
					["description"] =
						-- #if CLASSICERA
						"You can grind to 11999/12000 by just killing trolls and then you can grind to Exalted by turning in Troll Necklaces at a rate of 2 Reputation per 5 necklaces. @Blackbear on the ATT Discord proposed for Classic Era that the goal for this should be Exalted. Be mad at him! :)",
						-- #else
						"This faction gets removed completely with the TBC prepatch, so grinding this to Exalted makes no sense.\n\nYou can grind to 11999/12000 by just killing trolls and then you can *technically* grind to Exalted by turning in Troll Necklaces at a rate of 2 Reputation per 5 necklaces, but rather than encourage you to totally waste your life on a Reputation that gets ultimately removed from the game after the season is over, I'll artificially cap the goal in ATT to Revered.\n\nGodspeed.",
						-- #endif
					-- #if CLASSICERA
					["minReputation"] = { 471, REVERED },	-- Wildhammer Clan, Revered.
					-- #endif
					["OnTooltip"] = [[function(t, tooltipInfo)
						local reputation = t.reputation;
						if reputation < 42000 then
							local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
							if reputation < ]] .. (REVERED - 1) .. [[ then
								addRepInfo(tooltipInfo, reputation, "Kill Trolls in the Hinterlands (Stops at Revered)", 5, ]] .. (REVERED - 1) .. [[, ]] .. NEUTRAL .. [[);
								tinsert(tooltipInfo, { left = " * PROTIP: Do NOT turn in the necklaces until after Revered!", r = 1, g = 0.5, b = 0.5 });
							else
								local repPer, remainingTurnIns = addRepInfo(tooltipInfo, reputation, "Turn in Troll Tribal Necklaces (x5)", 2, 42000);
								local remaining = ((remainingTurnIns * 5) - ]] .. WOWAPI_GetItemCount(9259) .. [[);
								if remaining > 0 then
									tinsert(tooltipInfo, { left = "You need " .. remaining .. " more necklaces for Exalted.", r = 1, g = 1, b = 0 });
								end
							end
						end
					end]],
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(43, {	-- Aerie Peak, The Hinterlands
					["cr"] = 8018,	-- Guthrum Thunderfist <Gryphon Master>
					["coord"] = { 11.0, 46.0, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(617, {	-- Hiri'watha Research Station, The Hinterlands
					["cr"] = 43573,	-- Kellen Kuhn <Bat Handler>
					["coord"] = { 32.4, 58.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(76, {	-- Revantusk Village, The Hinterlands
					["cr"] = 4314,	-- Gorkas <Wind Rider Master>
					["coord"] = { 81.6, 81.8, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(618, {	-- Stormfeather Outpost, The Hinterlands
					["cr"] = 43570,	-- Brock Rockbeard <Gryphon Master>
					["coord"] = { 65.6, 44.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			petbattles({
				n(66478, {	-- David Kosse <Master Pet Tamer>
					["coord"] = { 62.8, 54.6, THE_HINTERLANDS },
				}),
			}),
			n(PROFESSIONS, {
				prof(LEATHERWORKING, {
					n(11097, {	-- Drakk Stonehand <Master Leatherworking Trainer>
						["coord"] = { 13.4, 43.4, THE_HINTERLANDS },
						["races"] = ALLIANCE_ONLY,
						-- #if BEFORE 2.1.0
						["g"] = EXPERT_ARTISAN_LEATHERWORKING,
						-- #endif
					}),
				}),
			}),
			n(QUESTS, {
				q(26486, {	-- 99 Bottles of Booze on the Beach
					["qg"] = 43109,	-- Dron Blastbrew
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Pupellyverbos Port
							["providers"] = {
								{ "i", 3900 },	-- Pupellyverbos Port
								{ "o", 2068 },	-- Pupellyverbos Port
							},
						}),
					},
				}),
				q(9470, {	-- A Gesture of Goodwill
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 41,
					["groups"] = {
						objective(1, {	-- 0/1 Witch Doctor Mai'jin slain
							["provider"] = { "n", 17235 },	-- Witch Doctor Mai'jin
							["coord"] = { 24.6, 65.4, THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/1 Tcha'kaz slain
							["provider"] = { "n", 17236 },	-- Tcha'kaz
							["coord"] = { 24.8, 65.6, THE_HINTERLANDS },
						}),
					},
				}),
				q(26547, {	-- A Mangy Threat
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuests"] = {
						26542,	-- Hero's Call: The Hinterlands!
						-- #if AFTER 6.0.2
						38931,	-- Hero's Call: The Hinterlands!
						-- #endif
					},
					["coord"] = { 9.9, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Mangy Silvermane slain
							["provider"] = { "n", 2923 },	-- Mangy Silvermane
						}),
					},
				}),
				q(77, {	-- A Sticky Situation
					["qg"] = 7801,	-- Gilveradin Sunchaser
					["sourceQuest"] = 650,	-- Ripple Recovery (2/2)
					["coord"] = { 26.6, 48.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/10 Hinterlands Honey Ripple
							["providers"] = {
								{ "i",   8684 },	-- Hinterlands Honey Ripple
								{ "o", 142191 },	-- Horde Supply Crate
							},
							["coords"] = {
								{ 47.1, 40.3, THE_HINTERLANDS },
								{ 57.3, 41.2, THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(26523, {	-- All That Skitters (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26310, {	-- All That Skitters (H)
					["qg"] = 42622,	-- Eliza Darkgrin
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(7842, {	-- Another Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["sourceQuest"] = 7841,	-- Message to the Wildhammer
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					["cost"] = { { "i", 4589, 10 } },	-- Long Elegant Feather
					-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(7830, {	-- Avenging the Fallen
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Skylord Plume
							["provider"] = { "i", 19025 },	-- Skylord Plume
							["cr"] = 2659,	-- Razorbeak Skylord
						}),
					},
				}),
				q(4298, {	-- Becoming a Parent
					["qg"] = 9660,	-- Agnar Beastamer
					["sourceQuest"] = 4297,	-- Food for Baby
					["coord"] = { 14.1, 43.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(11474, {	-- Sprite Darter Egg (PET!)
							["timeline"] = { ADDED_1_11_1 },
							-- #if BEFORE WRATH
							["races"] = ALLIANCE_ONLY,
							-- #endif
						}),
					},
					-- #endif
				}),
				q(26641, {	-- Can't Make An Omelette Without... (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuests"] = {
						27625,	-- In Defense of Quel'Danil
						27626,	-- The Highvale Documents
					},
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Shadraspawn Egg
							["providers"] = {
								{ "i", 58252 },	-- Shadraspawn Egg
								{ "o", 204102 },	-- Shadraspawn Egg
							},
						}),
						i(59260, {	-- Shadraspawn Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59262, {	-- Cloudcaller Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59263, {	-- Belt of the Scattering Wind
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59264, {	-- Legguards of Caution
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131570, {	-- Cloudcaller Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131571, {	-- Cinch of the Scattering Wind
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26382, {	-- Can't Make An Omelette Without... (H)
					["qg"] = 42896,	-- Apothecary Surlis
					["coord"] = { 31.8, 58.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Shadraspawn Egg
							["providers"] = {
								{ "i", 58252 },	-- Shadraspawn Egg
								{ "o", 204102 },	-- Shadraspawn Egg
							},
						}),
						i(59298, {	-- Surlis' Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59299, {	-- Apothecary Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59300, {	-- Shadraspawn Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59301, {	-- Legguards of Caution
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131519, {	-- Apothecary Chain Pants
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131520, {	-- Shadraspawn Waistguard
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(7844, {	-- Cannibalistic Cousins
					["qg"] = 14739,	-- Mystic Yayo'jin <Reagent Vendor>
					["coord"] = { 78.8, 78.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(30 / 15 (TBC) / 6 (Wrath)) Vilebranch Scalper slain
							["provider"] = { "n", 4466 },	-- Vilebranch Scalper
						}),
						objective(2, {	-- 0/(15 / 10 (TBC) / 2 (Wrath)) Vilebranch Soothsayer slain
							["provider"] = { "n", 4467 },	-- Vilebranch Soothsayer
						}),
					},
				}),
				q(2935, {	-- Consult Master Gadrin
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2934,	-- Undamaged Venom Sac
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7850, {	-- Dark Vessels
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/10 Vessel of Tainted Blood
							["providers"] = {
								{ "i",  19071 },	-- Vessel of Tainted Blood
								{ "o", 179922 },	-- Vessel of Tainted Blood
							},
							["description"] = "Can be found all over Jintha'alor.",
							["coord"] = { 65.2, 71.9, THE_HINTERLANDS },
						}),
						i(19118, {	-- Nature's Breath
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26524, {	-- Dark Vessels (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["sourceQuest"] = 26523,	-- All That Skitters
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vessel of Tainted Blood
							["providers"] = {
								{ "i", 19071 },	-- Vessel of Tainted Blood
								{ "o", 179922 },	-- Vessel of Tainted Blood
							},
						}),
						i(59252, {	-- Sandals of Tainted Blood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59253, {	-- Sandrene's Invisible Vest
							["description"] = "You will not be able to transmog this item.",
							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59254, {	-- Spider Venom Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59255, {	-- Dark Vessel Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131544, {	-- Sandrene's Invisible Hauberk
							["description"] = "You will not be able to transmog this item.",
							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131545, {	-- Spider Venom Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26309, {	-- Dark Vessels (H)
					["qg"] = 42622,	-- Eliza Darkgrin
					["sourceQuest"] = 26310,	-- All That Skitters
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vessel of Tainted Blood
							["providers"] = {
								{ "i", 19071 },	-- Vessel of Tainted Blood
								{ "o", 179922 },	-- Vessel of Tainted Blood
							},
						}),
						i(59294, {	-- Sandals of Tainted Blood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59295, {	-- Sandrene's Invisible Vest
							["description"] = "You will not be able to transmog this item.",
							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59296, {	-- Spider Venom Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59297, {	-- Dark Vessel Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131510, {	-- Sandrene's Invisible Hauberk
							["description"] = "You will not be able to transmog this item.",
							["collectible"] = false,	-- Cant be collected, not even with the source tracking we use for fishing poles and stuff
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131511, {	-- Spider Venom Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26384, {	-- Darkcleric Marnal
					["qg"] = 42622,	-- Eliza Darkgrin
					["sourceQuest"] = 26369,	-- Hunt the Keeper
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26498, {	-- Death to the Vilebranch (A)
					["qg"] = 43157,	-- Doran Steelwing
					["sourceQuest"] = 26497,	-- Vilebranch Scum
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Berserker slain
							["provider"] = { "n", 2643 },	-- Vilebranch Berserker
						}),
						objective(2, {	-- 0/5 Vilebranch Shadowcaster slain
							["provider"] = { "n", 2642 },	-- Vilebranch Shadowcaster
						}),
					},
				}),
				q(26307, {	-- Death to the Vilebranch (H)
					["qg"] = 42642,	-- Death to the Vilebranch
					["sourceQuest"] = 26306,	-- Start Taking Back
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Berserker slain
							["provider"] = { "n", 2643 },	-- Vilebranch Berserker
						}),
						objective(2, {	-- 0/1 Vilebranch Shadowcaster slain
							["provider"] = { "n", 2642 },	-- Vilebranch Shadowcaster
						}),
					},
				}),
				q(26496, {	-- Down with the Vilebranch
					["qg"] = 43108,	-- Kerr Ironsight
					["sourceQuests"] = {
						26491,	-- Skulk Rock Clean-Up
						26492,	-- Skulk Rock Supplies
					},
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26521, {	-- Faces of Evil (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59249, {	-- Vile Branch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59250, {	-- Necklace of Evil Faces
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59251, {	-- Jintha'Alor Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(26357, {	-- Faces of Evil (H)
					["qg"] = 42624,	-- Kotonga
					["coord"] = { 67.7, 66.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59288, {	-- Vile Branch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59290, {	-- Jintha'Alor Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59289, {	-- Necklace of Evil Faces
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(9469, {	-- Featherbeard's Endorsement
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(485, {	-- Find OOX-09/HL!
					["provider"] = { "i", 8704 },	-- OOX-09/HL Distress Beacon
					["description"] = "The item that starts this quest has a chance to drop from any killed creature in The Hinterlands.",
					["lvl"] = lvlsquish(43, 43, 10),
				}),
				q(4297, {	-- Food for Baby
					["qg"] = 9660,	-- Agnar Beastamer
					["sourceQuest"] = 3843,	-- The Newest Member of the Family
					["coord"] = { 14.1, 43.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/5 Silvermane Stalker Flank
							["provider"] = { "i", 11472 },	-- Silvermane Stalker Flank
							["cr"] = 2926,	-- Silvermane Stalker
						}),
					},
				}),
				q(7816, {	-- Gammerita, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["sourceQuest"] = 7815,	-- Snapjaws, Mon!
					["coord"] = { 80.2, 81.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Katoom's Best Lure
							["provider"] = { "i", 19023 },	-- Katoom's Best Lure
							["coords"] = {
								{ 81.4, 47.2, THE_HINTERLANDS },
								{ 80.6, 59.6, THE_HINTERLANDS },
								{ 76.0, 67.6, THE_HINTERLANDS },
								{ 77.8, 76.8, THE_HINTERLANDS },
							},
							["cr"] = 7977,	-- Gammerita
						}),
					},
				}),
				q(26210, {	-- Gammerita, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.3, 81.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Katoom's Best Lure
							["provider"] = { "i", 19023 },	-- Katoom's Best Lure
							["cr"] = 7977,	-- Gammerita
						}),
						i(59274, {	-- Katoom's Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59275, {	-- Stomachache Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59276, {	-- Snapjaw Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131495, {	-- Stomachache Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26483, {	-- Gan'dranda
					["qg"] = 43108,	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gan'dranda slain
							["provider"] = { "n", 42609 },	-- Gan'dranda
						}),
						i(59242, {	-- Ironsight Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59243, {	-- Theresa's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59244, {	-- Stormfeather Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59245, {	-- Head Kickers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131536, {	-- Stormfeather Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1450, {	-- Gryphon Master Talonaxe
					["qg"] = 5635,	-- Falstad Wildhammer <High Thane>
					["sourceQuest"] = 1449,	-- To The Hinterlands
					["coord"] = { 11.8, 46.8, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(26518, {	-- Heads Up (A)
					["qg"] = 43157,	-- Doran Steelwing
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Umboda's Head
							["provider"] = { "i", 58236 },	-- Umboda's Head
							["cr"] = 42724,	-- Umboda Three-Heads
						}),
					},
				}),
				q(26366, {	-- Heads Up (H)
					["qg"] = 42642,	-- Primal Torntusk
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Umboda's Head
							["provider"] = { "i", 58236 },	-- Umboda's Head
							["cr"] = 42724,	-- Umboda Three-Heads
						}),
					},
				}),
				heroscall(q(26542, {	-- Hero's Call: The Hinterlands!
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 40, 48.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE },	-- Only found in Ironforge in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level between 32 and 39)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(26526, {	-- Hunt the Keeper (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["sourceQuest"] = 26517,	-- Summit of Fate
					["coord"] = { 63.8, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Shadra
							["provider"] = { "i", 58241 },	-- Tablet of Shadra
							["cr"] = 42877,	-- Morta'gya the Keeper
						}),
						i(59256, {	-- Unkeeper Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59257, {	-- Leggings of Secret Rituals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59258, {	-- Gloves of Strange Words
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59259, {	-- Tablet-Bearer's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131546, {	-- Gauntlets of Strange Words
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156945, {	-- Talon Hatchet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26369, {	-- Hunt the Keeper (H)
					["qg"] = 42642,	-- Primal Torntusk
					["sourceQuest"] = 26363,	-- Summit of Fate
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Shadra
							["provider"] = { "i", 58241 },	-- Tablet of Shadra
							["cr"] = 42877,	-- Morta'gya the Keeper
						}),
						i(59284, {	-- Unkeeper Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59285, {	-- Leggings of Secret Rituals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59286, {	-- Gloves of Strange Words
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59287, {	-- Tablet-Bearer's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131518, {	-- Gauntlets of Strange Words
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156945, {	-- Talon Hatchet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(7829, {	-- Hunt the Savages
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(20 / 10 (Wrath)) Savage Owlbeast slain
							["provider"] = { "n", 2929 },	-- Savage Owlbeast
						}),
					},
				}),
				q(26224, {	-- Hunt the Savages
					["qg"] = 14741,	-- Huntsman Markhor
					["sourceQuest"] = 26223,	-- Stalking the Stalkers
					["coord"] = { 79.1, 79.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Savage Owlbeast slain
							["provider"] = { "n", 2929 },	-- Savage Owlbeast
						}),
					},
				}),
				q(27625, {	-- In Defense of Quel'Danil
					["qg"] = 46475,	-- Anchorite Traska
					["sourceQuest"] = 27725,	-- Quel'Danil Lodge
					["coord"] = { 32.1, 42.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Deathstalker Invader slain
							["provider"] = { "n", 43541 },	-- Deathstalker Invader
						}),
					},
				}),
				q(9476, {	-- In Pursuit of Featherbeard
					["provider"] = { "o", 181649 },	-- Featherbeard's Journal
					["sourceQuest"] = 9469,	-- Featherbeard's Endorsement
					["coord"] = { 13.4, 55.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(26516, {	-- It's Ours Now (A)
					["qg"] = 43157,	-- Doran Steelwing
					["sourceQuest"] = 26498,	-- Death to the Vilebranch
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Soul Eater slain
							["provider"] = { "n", 2647 },	-- Vilebranch Soul Eater
						}),
						objective(2, {	-- 0/5 Vilebranch Blood Drinker slain
							["provider"] = { "n", 2646 },	-- Vilebranch Blood Drinker
						}),
						i(59246, {	-- Blood Drinker Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59248, {	-- Steelwing Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59247, {	-- Soul Eater Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131542, {	-- Soul Eater Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26308, {	-- It's Ours Now (H)
					["qg"] = 42642,	-- Primal Torntusk
					["sourceQuest"] = 26307,	-- Death to the Vilebranch
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Soul Eater slain
							["provider"] = { "n", 2647 },	-- Vilebranch Soul Eater
						}),
						objective(2, {	-- 0/5 Vilebranch Blood Drinker slain
							["provider"] = { "n", 2646 },	-- Vilebranch Blood Drinker
						}),
						i(59291, {	-- Blood Drinker Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59293, {	-- Torntusk Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59292, {	-- Soul Eater Shoulderguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131509, {	-- Soul Eater Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(7862, {	-- Job Opening: Guard Captain of Revantusk Village
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/(20 / 10 (TBC) / 5 (Wrath)) Vilebranch Berserker slain
							["provider"] = { "n", 2643 },	-- Vilebranch Berserker
						}),
						objective(2, {	-- 0/(20 / 5 (TBC) / 3 (Wrath)) Vilebranch Shadow Hunter slain
							["provider"] = { "n", 2645 },	-- Vilebranch Shadow Hunter
						}),
						objective(3, {	-- 0/(20 / 5 (TBC) / 2 (Wrath)) Vilebranch Blood Drinker slain
							["provider"] = { "n", 2646 },	-- Vilebranch Blood Drinker
						}),
						objective(4, {	-- 0/(20 / 5 (TBC) / 2 (Wrath)) Vilebranch Soul Eater slain
							["provider"] = { "n", 2647 },	-- Vilebranch Soul Eater
						}),
						i(19120, {	-- Rune of the Guard Captain
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7845, {	-- Kidnapped Elder Torntusk!
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(7840, {	-- Lard Lost His Lunch
					["qg"] = 14731,	-- Lard <Innkeeper>
					["coord"] = { 78.2, 81.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Lard's Lunch
							["provider"] = { "i", 19034 },	-- Lard's Lunch
							["coord"] = { 84.6, 41.2, THE_HINTERLANDS },
							["cr"] = 14748,	-- Vilebranch Kidnapper
						}),
						-- #if BEFORE 4.0.3
						i(19035, {	-- Lard's Special Picnic Basket
							["description"] = "Contains a random world drop and some consumables.",
						}),
						-- #endif
					},
				}),
				q(26212, {	-- Lard Lost His Lunch
					["qg"] = 14731,	-- Lard
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Lard's Lunch
							["provider"] = { "i", 19034 },	-- Lard's Lunch
							["cr"] = 14748,	-- Vilebranch Kidnapper
						}),
						i(19035, {	-- Lard's Special Picnic Basket
							["description"] = "Contains a random world drop and some consumables.",
						}),
					},
				}),
				q(7841, {	-- Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(15 / 8 (Wrath)) Highvale Scout slain
							["provider"] = { "n", 2692 },	-- Highvale Scout
						}),
						objective(2, {	-- 0/(15 / 5 (Wrath)) Highvale Outrunner slain
							["provider"] = { "n", 2691 },	-- Highvale Outrunner
						}),
						objective(3, {	-- 0/(15 / 5 (Wrath)) Highvale Ranger slain
							["provider"] = { "n", 2694 },	-- Highvale Ranger
						}),
						objective(4, {	-- 0/(15 / 2 (Wrath)) Highvale Marksman slain
							["provider"] = { "n", 2693 },	-- Highvale Marksman
						}),
					},
				}),
				q(26515, {	-- Ongo'longo's Revenge (A)
					["qg"] = 43157,	-- Doran Steelwing
					["sourceQuests"] = {
						26518,	-- Heads Up (A)
					},
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ongo'longo enraged
							["provider"] = { "n", 42815 },	-- Ongo'longo
						}),
					},
				}),
				q(26367, {	-- Ongo'longo's Revenge (H)
					["qg"] = 42642,	-- Primal Torntusk
					["sourceQuests"] = {
						26307,	-- Death to the Vilebranch (H)
						26366,	-- Heads Up (H)
					},
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ongo'longo Enraged
							["provider"] = { "n", 42815 },	-- Ongo'longo
						}),
					},
				}),
				q(26548, {	-- Out to the Front
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuests"] = {
						26547,	-- A Mangy Threat
						26546,	-- Razorbeak Friends
					},
					["coord"] = { 9.8, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(9471, {	-- Preying on the Predators
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/10 Mangy Silvermane slain
							["provider"] = { "n", 2923 },	-- Mangy Silvermane
						}),
						objective(2, {	-- 0/10 Silvermane Wolf slain
							["provider"] = { "n", 2924 },	-- Silvermane Wolf
						}),
					},
				}),
				q(26490, {	-- Prime Slime (A)
					["qg"] = 43109,	-- Dron Blastbrew
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Direglob Sample
							["provider"] = { "i", 58082 },	-- Direglob Sample
							["cr"] = 42592,	-- The Direglob
						}),
						i(59239, {	-- Wand of Oomph
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59240, {	-- Blastbrew Hat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59241, {	-- Direglob-Slimed Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131537, {	-- Blastbrew Headgear
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156946, {	-- Goopy Mallet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26283, {	-- Prime Slime (H)
					["qg"] = 42612,	-- Malcolm Fendelson
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Direglob Sample
							["provider"] = { "i", 58082 },	-- Direglob Sample
							["cr"] = 42592,	-- The Direglob
						}),
						i(59277, {	-- Research Assistant's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59278, {	-- Slime Hunter Headguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59279, {	-- Skulk Rock Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131501, {	-- Slime Hunter Headgear
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156946, {	-- Goopy Mallet
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26225, {	-- Pupellyverbos Port
					["qg"] = 42464,	-- Grognard
					["coord"] = { 77.3, 79.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Pupellyverbos Port
							["providers"] = {
								{ "i", 3900 },	-- Pupellyverbos Port
								{ "o", 2068 },	-- Pupellyverbos Port
							},
						}),
					},
				}),
				q(27725, {	-- Quel'Danil Lodge
					["qg"] = 46476,	-- Tracker Yoro
					["sourceQuest"] = 26526,	-- Hunt the Keeper
					["coord"] = { 63.9, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26546, {	-- Razorbeak Friends
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.9, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Trained Razorbeak fed
							["provider"] = { "i", 58935 },	-- Gryphon Chow
							["cr"] = 2657,	-- Trained Razorbeak
						}),
						i(59236, {	-- Gryphon-Down Scarf
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59237, {	-- Gryphon Master's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59238, {	-- Talon Axe
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131553, {	-- Gryphon Master's Chain
							["timeline"] = { ADDED_7_0_3 },
						}),
                        i(59235, {	-- Razorbeak Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(9475, {	-- Reclaiming the Eggs
					["providers"] = {
						{ "o", 181643 },	-- Featherbeard's Remains
						{ "i",  23695 },	-- Featherbeard's Map
					},
					["sourceQuest"] = 9476,	-- In Pursuit of Featherbeard
					["coord"] = { 37.1, 71.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/5 Gryphon Egg
							["providers"] = {
								{ "i",  23694 },	-- Gryphon Egg
								{ "o", 181645 },	-- Gryphon Egg
							},
							["coords"] = {
								{ 39.9, 66.0, THE_HINTERLANDS },
								{ 36.7, 71.2, THE_HINTERLANDS },
								{ 35.9, 72.7, THE_HINTERLANDS },
								{ 34.2, 72.8, THE_HINTERLANDS },
								{ 33.7, 75.0, THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(7846, {	-- Recover the Key!
					["qg"] = 14757,	-- Elder Torntusk
					["sourceQuest"] = 7845,	-- Kidnapped Elder Torntusk!
					["coord"] = { 59.6, 77.8, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Shackle Key
							["provider"] = { "i", 19064 },	-- Shackle Key
							["coord"] = { 57.6, 86.6, THE_HINTERLANDS },
							["cr"] = 10802,	-- Hitah'ya the Keeper
						}),
					},
				}),
				q(836, {	-- Rescue OOX-09/HL!
					["qg"] = 7806,	-- Homing Robot OOX-09/HL
					["sourceQuest"] = 485,	-- Find OOX-09/HL!
					["coord"] = { 49.4, 37.6, THE_HINTERLANDS },
					["lvl"] = 43,
					["groups"] = {
						i(9645),	-- Gnomish Inventor Boots
						i(9646),	-- Gnomish Water Winking Device
					},
				}),
				q(7847, {	-- Return to Primal Torntusk
					["qg"] = 14757,	-- Elder Torntusk
					["sourceQuest"] = 7846,	-- Recover the Key!
					["coord"] = { 59.6, 77.8, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						i(19114, {	-- Highland Bow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19115, {	-- Flask of Forest Mojo
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1451, {	-- Rhapsody Shindigger
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 1450,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1452, {	-- Rhapsody's Kalimdor Kocktail
					["qg"] = 5634,	-- Rhapsody Shindigger
					["sourceQuest"] = 1451,	-- Rhapsody Shindigger
					["coord"] = { 26.8, 48.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS, TANARIS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/3 Roc Gizzard
							["provider"] = { "i", 6257 },	-- Roc Gizzard
							["crs"] = {
								5429,	-- Fire Roc
								5428,	-- Roc
								5430,	-- Searing Roc
							},
						}),
						objective(2, {	-- 0/3 Ironfur Liver
							["provider"] = { "i", 6258 },	-- Ironfur Liver
							["crs"] = {
								5272,	-- Grizzled Ironfur Bear
								5268,	-- Ironfur Bear
								5274,	-- Ironfur Patriarch
								5352,	-- Old Grizzlegut
							},
						}),
						objective(3, {	-- 0/3 Groddoc Liver
							["provider"] = { "i", 6259 },	-- Groddoc Liver
							["crs"] = {
								5260,	-- Groddoc Ape
								5262,	-- Groddoc Thunderer
							},
						}),
					},
				}),
				q(1469, {	-- Rhapsody's Tale
					["providers"] = {
						{ "n", 5634 },	-- Rhapsody Shindigger
						{ "i", 6287 },	-- Atal'ai Tablet Fragment
					},
					["sourceQuest"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["coord"] = { 26.8, 48.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2742, {	-- Rin'ji is Trapped!
					["qg"] = 7780,	-- Rin'ji <Witherbark Troll>
					["coord"] = { 30.6, 47, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(2782, {	-- Rin'ji's Secret
					["providers"] = {
						{ "o", 142127 },	-- Rin'ji's Secret
						{ "i", 8724 },	-- Rin'ji's Secret
					},
					["sourceQuest"] = 2742,	-- Rin'ji is Trapped!
					["coord"] = { 86.3, 59.1, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(81, {		-- Ripple Delivery
					["providers"] = {
						{ "n", 7801 },	-- Gilveradin Sunchaser
						{ "i", 8685 },	-- Dran's Ripple Delivery
					},
					["sourceQuest"] = 77,	-- A Sticky Situation
					["coord"] = { 26.6, 48.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(649, {	-- Ripple Recovery (1/2)
					["qg"] = 6986,	-- Dran Droffers
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(650, {	-- Ripple Recovery (2/2)
					["qg"] = 6987,	-- Malton Droffers
					["sourceQuest"] = 649,	-- Ripple Recovery
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(2994, {	-- Saving Sharpbeak
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 2993,	-- Return to the Hinterlands
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Open Sharpbeak's Cage
							["providers"] = {
								{ "i",   9472 },	-- Hexx's Key
								{ "o", 144070 },	-- Sharpbeak's Cage
							},
							["coord"] = { 53.6, 66.8, THE_HINTERLANDS },
							["cr"] = 8023,	-- Sharpbeak
						}),
						-- #if BEFORE 4.0.3
						i(9472, {	-- Hexx's Key
							["coord"] = { 59.6, 77.6, THE_HINTERLANDS },
							["cr"] = 7995,	-- Vile Priestess Hexx
						}),
						-- #endif
						i(9651, {	-- Gryphon Rider's Stormhammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9652, {	-- Gryphon Rider's Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7849, {	-- Separation Anxiety
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Huntsman Malkhor's Skull
							["providers"] = {
								{ "i",  19069 },	-- Huntsman Malkhor's Skull
								{ "o", 179915 },	-- Pile of Skulls
							},
							["coord"] = { 58.6, 64.9, THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/1 Huntsman Malkhor's Bones
							["providers"] = {
								{ "i",  19070 },	-- Huntsman Malkhor's Bones
								{ "o", 179914 },	-- Pile of Bones
							},
							["coord"] = { 62.2, 75.5, THE_HINTERLANDS },
						}),
						i(19117, {	-- Laquered Wooden Plate Legplates
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19116, {	-- Greenleaf Handwraps
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26532, {	-- Shadra the Venom Queen (A)
					["qg"] = 43298,	-- Wildhammer Lookout
					["sourceQuest"] = 26531,	-- Summoning Shadra
					["coord"] = { 34.3, 67.7, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Shadra slain
							["provider"] = { "n", 43007 },	-- Shadra
						}),
						i(59269, {	-- Veil of Aerie Peak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59270, {	-- Headguard of Aerie Peak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59271, {	-- Headcover of Aerie Peak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59272, {	-- Helm of Aerie Peak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131549, {	-- Aerie Headgear
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131550, {	-- Aerie War Cap
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26419, {	-- Shadra the Venom Queen (H)
					["qg"] = 43299,	-- Deathstalker Lookout
					["sourceQuest"] = 26558,	-- Summoning Shadra
					["coord"] = { 35.6, 68.4, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Shadra slain
							["provider"] = { "n", 43007 },	-- Shadra
						}),
						i(59306, {	-- Darkcleric's Veil
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59307, {	-- Virulent Headguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59308, {	-- Venomous Headcover
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59309, {	-- Poisoner's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131526, {	-- Virulent Headpiece
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131527, {	-- Venomous Headgear
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2877, {	-- Skulk Rock Clean-up
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Green Sludge slain
							["provider"] = { "n", 2655 },	-- Green Sludge
						}),
						objective(2, {	-- 0/10 Jade Ooze slain
							["provider"] = { "n", 2656 },	-- Jade Ooze
						}),
					},
				}),
				q(26491, {	-- Skulk Rock Clean-Up (A)
					["qg"] = 43108,	-- Kerr Ironsight
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Jade Ooze slain
							["provider"] = { "n", 2656 },	-- Jade Ooze
						}),
					},
				}),
				q(26267, {	-- Skulk Rock Clean-Up (H)
					["qg"] = 42613,	-- Elder Torntusk
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Jade Ooze slain
							["provider"] = { "n", 2656 },	-- Jade Ooze
						}),
					},
				}),
				q(26492, {	-- Skulk Rock Supplies (A)
					["qg"] = 43108,	-- Kerr Ironsight
					["sourceQuests"] = {
						26483,	-- Gan'dranda
						26462,	-- The Wicked Revantusk
					},
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ooze-Coated Supply Crate
							["providers"] = {
								{ "i", 57989 },	-- Ooze-Coated Supply Crate
								{ "o", 203989 },	-- Ooze-coated Supply Crate
							},
						}),
					},
				}),
				q(26268, {	-- Skulk Rock Supplies (H)
					["qg"] = 42613,	-- Elder Torntusk
					["sourceQuests"] = {
						26238,	-- The Savage Dwarves
						26263,	-- Thornar Thunderclash
					},
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Ooze-Coated Supply Crate
							["providers"] = {
								{ "i", 57989 },	-- Ooze-Coated Supply Crate
								{ "o", 203989 },	-- Ooze-coated Supply Crate
							},
						}),
					},
				}),
				q(26485, {	-- Snapjaws, Lad!
					["qg"] = 43109,	-- Dron Blastbrew
					["coord"] = { 66.2, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Snapjaw Gizzard
							["provider"] = { "i", 58867 },	-- Snapjaw Gizzard
							["cr"] = 2505,	-- Saltwater Snapjaw
						}),
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7815, {	-- Snapjaws, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.2, 81.4, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					-- #if BEFORE 4.0.3
					["groups"] = {
						objective(1, {	-- 0/(15 / 10 (Wrath)) Saltwater Snapjaw slain
							["provider"] = { "n", 2505 },	-- Saltwater Snapjaw
						}),
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
					-- #endif
				}),
				q(26211, {	-- Snapjaws, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.3, 81.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Saltwater Snapjaw slain
							["provider"] = { "n", 2505 },	-- Saltwater Snapjaw
						}),
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7828, {	-- Stalking the Stalkers
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(15 / 10 (TBC) / 5 (Wrath)) Silvermane Stalker slain
							["provider"] = { "n", 2926 },	-- Silvermane Stalker
						}),
						objective(2, {	-- 0/(15 / 10 (TBC) / 5 (Wrath)) Silvermane Howler slain
							["provider"] = { "n", 2925 },	-- Silvermane Howler
						}),
					},
				}),
				q(26223, {	-- Stalking the Stalkers
					["qg"] = 14741,	-- Huntsman Markhor
					["coord"] = { 79.1, 79.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Silvermane Stalker slain
							["provider"] = { "n", 2926 },	-- Silvermane Stalker
						}),
					},
				}),
				q(26306, {	-- Start Taking Back
					["qg"] = 42642,	-- Primal Torntusk
					["sourceQuest"] = 26432,	-- The Fall of Jintha'Alor
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Headhunter slain
							["provider"] = { "n", 2641 },	-- Vilebranch Headhunter
						}),
						objective(2, {	-- 0/5 Vilebranch Witch Doctor slain
							["provider"] = { "n", 2640 },	-- Vilebranch Witch Doctor
						}),
					},
				}),
				q(26643, {	-- Starvation Diet (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuest"] = 26641,	-- Can't Make an Omelette Without...
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Cocooned Victim slain
							["provider"] = { "n", 42907 },	-- Cocooned Victim
						}),
					},
				}),
				q(26387, {	-- Starvation Diet (H)
					["qg"] = 42896,	-- Apothecary Surlis
					["sourceQuest"] = 26382,	-- Can't Make an Omelette Without...
					["coord"] = { 31.8, 58.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Cocooned Victim slain
							["provider"] = { "n", 42907 },	-- Cocooned Victim
						}),
					},
				}),
				q(26240, {	-- Stomp To My Beat
					["qg"] = 14739,	-- Mystic Yayo'jin
					["coord"] = { 78.8, 78.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Revantusk Warriors bolstered
							["provider"] = { "n", 42597 },	-- Revantusk Troll Drums Buff Credit Bunny
						}),
					},
				}),
				q(26517, {	-- Summit of Fate (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["sourceQuests"] = {
						26498,	-- Death to the Vilebranch
						26515,	-- Ongo'longo's Revenge
					},
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26363, {	-- Summit of Fate (H)
					["qg"] = 42642,	-- Primal Torntusk
					["sourceQuests"] = {
						26308,	-- It's Ours Now
						26367,	-- Ongo'longo's Revenge
					},
					["coord"] = { 67.8, 66.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2937, {	-- Summoning Shadra
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 2936,	-- The Spider God
					["coord"] = { 56, 74.6, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Shadra's Venom
							["providers"] = {
								{ "i", 9324 },	-- Shadra's Venom
								{ "i", 9323 },	-- Gadrin's Parchment
							},
							["coord"] = { 34, 72, THE_HINTERLANDS },
							["cr"] = 2707,	-- Shadra <The Venom Queen>
						}),
					},
				}),
				q(26531, {	-- Summoning Shadra (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuest"] = 26530,	-- The Shell of Shadra
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26558, {	-- Summoning Shadra (H)
					["qg"] = 42898,	-- Darkcleric Marnal
					["sourceQuest"] = 26418,	-- The Shell of Shadra
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(2990, {	-- Thadius Grimshade
					["providers"] = {
						{ "n", 5636 },	-- Gryphon Master Talonaxe
						{ "i", 9468 },	-- Sharpbeak's Feather
					},
					["sourceQuest"] = 2989,	-- The Altar of Zul
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2989, {	-- The Altar of Zul
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["sourceQuest"] = 2988,	-- Witherbark Cages
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(26528, {	-- The Eye of Shadra (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuests"] = {
						27625,	-- In Defense of Quel'Danil
						27626,	-- The Highvale Documents
					},
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Eye of Shadra
							["providers"] = {
								{ "i", 58282 },	-- Eye of Shadra
								{ "o", 204133 },	-- Cache of Shadra
							},
						}),
					},
				}),
				q(26381, {	-- The Eye of Shadra (H)
					["qg"] = 42898,	-- Darkcleric Marnal
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Eye of Shadra
							["providers"] = {
								{ "i", 58282 },	-- Eye of Shadra
								{ "o", 204133 },	-- Cache of Shadra
							},
						}),
					},
				}),
				q(26432, {	-- The Fall of Jintha'Alor
					["qg"] = 42613,	-- Elder Torntusk
					["sourceQuests"] = {
						26267,	-- Skulk Rock Clean-Up
						26268,	-- Skulk Rock Supplies
					},
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26529, {	-- The Fang of Shadra (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuest"] = 26528,	-- The Eye of Shadra
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fang of Shadra
							["providers"] = {
								{ "i", 58281 },	-- Fang of Shadra
								{ "o", 204120 },	-- Cache of Shadra
							},
						}),
					},
				}),
				q(26406, {	-- The Fang of Shadra (H)
					["qg"] = 42898,	-- Darkcleric Marnal
					["sourceQuest"] = 26381,	-- The Eye of Shadra
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Fang of Shadra
							["providers"] = {
								{ "i", 58281 },	-- Fang of Shadra
								{ "o", 204120 },	-- Cache of Shadra
							},
						}),
					},
				}),
				q(7843, {	-- The Final Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["sourceQuest"] = 7842,	-- Another Message to the Wildhammer
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Message to the Wildhammer Delivered
							["provider"] = { "i", 19036 },	-- Final Message to the Wildhammer
							["coord"] = { 14, 48, THE_HINTERLANDS },
						}),
						i(19119, {	-- Owlbeast Hide Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27626, {	-- The Highvale Documents
					["qg"] = 46475,	-- Anchorite Traska
					["sourceQuest"] = 27725,	-- Quel'Danil Lodge
					["coord"] = { 32.1, 42.5, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26238, {	-- The Savage Dwarves
					["qg"] = 42613,	-- Elder Torntusk
					["sourceQuest"] = 28574,	-- Warchief's Command: The Hinterlands!
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer slain
							["providers"] = {
								{ "n", 42518},	-- Wildhammer Warrior
								{ "n", 42554},	-- Wildhammer Shaman
							},
						}),
					},
				}),
				q(26530, {	-- The Shell of Shadra (A)
					["qg"] = 43200,	-- Gilda Cloudcaller
					["sourceQuest"] = 26529,	-- The Fang of Shadra
					["coord"] = { 30.6, 47.0, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Shell of Shadra
							["provider"] = { "i", 58779 },	-- Shell of Shadra
							["cr"] = 42919,	-- Qiaga the Keeper
						}),
						i(59265, {	-- Gown of the Last Priestess
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59266, {	-- Gwenyth's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59267, {	-- Gloves of Fanatical Zealotry
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59268, {	-- Greathammer of the Hinterlands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131547, {	-- Gwenyth's Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131548, {	-- Grips of Fanatical Zealotry
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26418, {	-- The Shell of Shadra (H)
					["qg"] = 42898,	-- Darkcleric Marnal
					["sourceQuest"] = 26406,	-- The Fang of Shadra
					["coord"] = { 31.8, 58.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Shell of Shadra
							["provider"] = { "i", 58779 },	-- Shell of Shadra
							["cr"] = 42919,	-- Qiaga the Keeper
						}),
						i(59302, {	-- Gown of the Last Priestess
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59303, {	-- Gwenyth's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59304, {	-- Gloves of Fanatical Zealotry
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59305, {	-- Greataxe of the Hinterlands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131524, {	-- Gwenyth's Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131525, {	-- Grips of Fanatical Zealotry
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26462, {	-- The Wicked Revantusk
					["qg"] = 43108,	-- Kerr Ironsight
					["coord"] = { 66.3, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Revantusk slain
							["providers"] = {
								{ "n", 42536},	-- Revantusk Stalker
								{ "n", 42555},	-- Revantusk Hexxer
							},
						}),
					},
				}),
				q(26263, {	-- Thornar Thunderclash
					["qg"] = 42613,	-- Elder Torntusk
					["coord"] = { 78.1, 81.3, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Thornar Thunderclash slain
							["provider"] = { "n", 42610 },	-- Thornar Thunderclash
						}),
						i(59280, {	-- Voice Stealer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59281, {	-- Elder's Wristwraps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59282, {	-- Encroaching Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59283, {	-- Revantusk Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131498, {	-- Encroaching Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2880, {	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 9259, 5 } },	-- Troll Tribal Necklace
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2881, {	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["sourceQuest"] = 2880,	-- Troll Necklace Bounty
					["coord"] = { 14.8, 44.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_2_0_3 },
					["maxReputation"] = {
						-- #if CLASSICERA
						471, EXALTED,	-- Wildhammer Clan, Exalted.
						-- #elseif BEFORE TBC
						471, REVERED,	-- Wildhammer Clan, Revered.
						-- #endif
					},
					["cost"] = { { "i", 9259, 5 } },	-- Troll Tribal Necklace
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(2934, {	-- Undamaged Venom Sac
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2933,	-- Venom Bottles
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Undamaged Venom Sac
							["provider"] = { "i", 9322 },	-- Undamaged Venom Sac
							["coord"] = { 34.8, 70.2, THE_HINTERLANDS },
							["cr"] = 2686,	-- Witherbark Broodguard
						}),
					},
				}),
				q(2933, {	-- Venom Bottles
					["providers"] = {
						{ "o", 142702 },	-- Venom Bottle
						{ "i", 9321 },	-- Venom Bottle
					},
					["coord"] = { 23.6, 58.7, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2938, {	-- Venom to the Undercity
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon <Royal Apothecary Society>
						{ "i", 9436 },	-- Faranell's Parcel
					},
					["sourceQuest"] = 2937,	-- Summoning Shadra
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9649, {	-- Royal Highmark Vestments
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9650, {	-- Honorguard Chestpiece
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10686, {	-- Aegis of Battle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26525, {	-- Venomous Secrets (A)
					["qg"] = 43156,	-- Fraggar Thundermantle
					["sourceQuest"] = 26517,	-- Summit of Fate
					["coord"] = { 63.7, 59.9, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Spawn of Shadra slain
							["provider"] = { "n", 42879 },	-- Spawn of Shadra
						}),
					},
				}),
				q(26368, {	-- Venomous Secrets (H)
					["qg"] = 42622,	-- Eliza Darkgrin
					["sourceQuest"] = 26309,	-- Dark Vessels
					["coord"] = { 67.6, 66.6, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Shadra-Spawn Venom Sample
							["provider"] = { "i", 58239 },	-- Shadra-Spawn Venom Sample
							["cr"] = 42879,	-- Spawn of Shadra
						}),
					},
				}),
				q(7839, {	-- Vilebranch Hooligans
					["qg"] = 14737,	-- Smith Slagtree <Blacksmithing Supplies>
					["coord"] = { 77.6, 80.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Slagtree's Lost Tools
							["provider"] = { "i", 19033 },	-- Slagtree's Lost Tools
							["coords"] = {
								{ 53.3, 38.8, THE_HINTERLANDS },
								{ 57.5, 42.6, THE_HINTERLANDS },
								{ 66.4, 44.8, THE_HINTERLANDS },
								{ 71.0, 48.6, THE_HINTERLANDS },
								{ 72.6, 53.0, THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(26497, {	-- Vilebranch Scum
					["qg"] = 43157,	-- Doran Steelwing
					["sourceQuest"] = 26496,	-- Down with the Vilebranch
					["coord"] = { 63.8, 59.8, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Vilebranch Headhunter slain
							["provider"] = { "n", 2641 },	-- Vilebranch Headhunter
						}),
						objective(2, {	-- 0/5 Vilebranch Witch Doctor slain
							["provider"] = { "n", 2640 },	-- Vilebranch Witch Doctor
						}),
					},
				}),
				q(7861, {	-- Wanted: Vile Priestess Hexx and Her Minions
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Vile Priestess Hexx slain
							["provider"] = { "n", 7995 },	-- Vile Priestess Hexx
							["coord"] = { 59.6, 78.0, THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/(20 / 10 (TBC) / 5 (Wrath)) Vilebranch Aman'zasi Guard slain
							["provider"] = { "n", 2648 },	-- Vilebranch Aman'zasi Guard
						}),
						i(19159, {	-- Woven Ivy Necklace
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19121, {	-- Deep Woodlands Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28574, {	-- Warchief's Command: The Hinterlands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 29. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 33. (TODO: Test max level)
					["lvl"] = { 29, 33 },
					-- #endif
				})),
				q(2988, {	-- Witherbark Cages
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Check First Cage
							["provider"] = { "o", 144066 },	-- First Witherbark Cage
							["coord"] = { 23.2, 58.7, THE_HINTERLANDS },
						}),
						objective(2, {	-- Check Second Cage
							["provider"] = { "o", 144067 },	-- Second Witherbark Cage
							["coord"] = { 23.1, 58.7, THE_HINTERLANDS },
						}),
						objective(3, {	-- Check Third Cage
							["provider"] = { "o", 144068 },	-- Third Witherbark Cage
							["coord"] = { 31.9, 57.2, THE_HINTERLANDS },
						}),
					},
				}),
			}),
			n(RARES, {
				n(8215, {	-- Grimungous
					["coords"] = {
						-- #if AFTER CATA
						{ 71.6, 62.6, THE_HINTERLANDS },
						{ 73.8, 55.8, THE_HINTERLANDS },
						{ 78.6, 50.8, THE_HINTERLANDS },
						-- #else
						{ 63.8, 48.4, THE_HINTERLANDS },
						{ 68.2, 50.2, THE_HINTERLANDS },
						{ 62.8, 55.0, THE_HINTERLANDS },
						{ 70.2, 59.8, THE_HINTERLANDS },
						{ 74.6, 50.0, THE_HINTERLANDS },
						{ 75.0, 56.0, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(8213, {	-- Ironback
					["coords"] = {
						-- #if AFTER CATA
						{ 80.2, 58.2, THE_HINTERLANDS },
						{ 81.0, 55.4, THE_HINTERLANDS },
						{ 79.4, 56.6, THE_HINTERLANDS },
						-- #else
						{ 82.2, 44.8, THE_HINTERLANDS },
						{ 81.6, 48.8, THE_HINTERLANDS },
						{ 79.8, 61.2, THE_HINTERLANDS },
						{ 77.6, 65.0, THE_HINTERLANDS },
						{ 78.0, 67.0, THE_HINTERLANDS },
						{ 76.8, 81.0, THE_HINTERLANDS },
						{ 75.0, 88.8, THE_HINTERLANDS },
						{ 73.4, 91.4, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(8214, {	-- Jalinde Summerdrake
					["coords"] = {
						-- #if AFTER CATA
						{ 34.6, 55.2, THE_HINTERLANDS },
						-- #else
						{ 27.8, 44.0, THE_HINTERLANDS },
						{ 28.6, 46.6, THE_HINTERLANDS },
						{ 31.6, 49.6, THE_HINTERLANDS },
						{ 31.2, 43.6, THE_HINTERLANDS },
						{ 32.8, 44.6, THE_HINTERLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				n(8217, {	-- Mith'rethis the Enchanter
					["coords"] = {
						-- #if AFTER CATA
						{ 64.8, 81.6, THE_HINTERLANDS },
						-- #else
						{ 58.8, 71.2, THE_HINTERLANDS },
						{ 59.8, 77.4, THE_HINTERLANDS },
						{ 66.8, 80.2, THE_HINTERLANDS },
						-- #endif
					},
					["groups"] = {
						i(17050, {	-- Chan's Imperial Robes
							["timeline"] = { REMOVED_4_0_3, ADDED_9_0_1 },
						}),
					},
				}),
				n(8211, {	-- Old Cliff Jumper
					["coords"] = {
						-- #if AFTER CATA
						{ 13.6, 53.8, THE_HINTERLANDS },
						-- #else
						{ 17.0, 54.6, THE_HINTERLANDS },
						{ 19.0, 50.6, THE_HINTERLANDS },
						{ 30.6, 49.4, THE_HINTERLANDS },
						{ 22.6, 52.4, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(107617, {	-- Ol' Muddle
					["description"] = "This rare wanders the eastern portion of the zone, coords provide general areas to look for this rare.",
					["coords"] = {
						{ 44.4, 64.6, THE_HINTERLANDS },
						{ 44.0, 59.6, THE_HINTERLANDS },
						{ 44.6, 53.6, THE_HINTERLANDS },
						{ 49.8, 57.2, THE_HINTERLANDS },
						{ 52.4, 51.0, THE_HINTERLANDS },
						{ 54.8, 46.2, THE_HINTERLANDS },
						{ 61.0, 50.4, THE_HINTERLANDS },
						{ 64.6, 42.0, THE_HINTERLANDS },
						{ 70.2, 51.2, THE_HINTERLANDS },
						{ 72.8, 50.0, THE_HINTERLANDS },
						{ 76.8, 49.8, THE_HINTERLANDS },
						{ 67.8, 57.4, THE_HINTERLANDS },
						{ 64.0, 54.6, THE_HINTERLANDS },
					},
					["timeline"] = { ADDED_7_0_3 },
				}),
				n(8210, {	-- Razortalon
					["coords"] = {
						-- #if AFTER CATA
						{ 66.2, 53.6, THE_HINTERLANDS },
						-- #else
						{ 27.0, 54.8, THE_HINTERLANDS },
						{ 27.0, 66.0, THE_HINTERLANDS },
						{ 37.8, 44.2, THE_HINTERLANDS },
						{ 36.8, 51.2, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(8216, {	-- Retherokk the Berserker
					["coords"] = {
						-- #if AFTER CATA
						{ 47.6, 66.4, THE_HINTERLANDS },
						{ 48.6, 68.4, THE_HINTERLANDS },
						-- #else
						{ 44.6, 67.4, THE_HINTERLANDS },
						{ 46.8, 70.2, THE_HINTERLANDS },
						{ 46.4, 64.6, THE_HINTERLANDS },
						{ 51.2, 65.6, THE_HINTERLANDS },
						{ 50.4, 60.4, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(8212, {	-- The Reak
					["coords"] = {
						-- #if AFTER CATA
						{ 57.5, 42.6, THE_HINTERLANDS },
						-- #else
						{ 46.8, 40.4, THE_HINTERLANDS },
						{ 49.4, 53.0, THE_HINTERLANDS },
						{ 58.0, 41.6, THE_HINTERLANDS },
						-- #endif
					},
				}),
				n(8218, {	-- Witherheart the Stalker
					["coords"] = {
						-- #if AFTER CATA
						{ 39.8, 66.6, THE_HINTERLANDS },
						-- #else
						{ 34.2, 68.4, THE_HINTERLANDS },
						{ 31.4, 73.0, THE_HINTERLANDS },
						{ 34.0, 75.6, THE_HINTERLANDS },
						{ 35.0, 74.0, THE_HINTERLANDS },
						{ 33.8, 73.2, THE_HINTERLANDS },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(221828, {	-- Vengeful Spirit
					["description"] = "Use your Sense Undead after 9PM Server near the Quel'Danil Lodge to spawn this rare.",
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["groups"] = {
						i(220165, {	-- Rune of Wrath
							["timeline"] = { ADDED_1_15_1 },
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(429249),	-- Engrave Helm - Wrath
							},
						}),
					},
				})),
				-- #endif
				n(8219, {	-- Zul'arek Hatefowler
					["coords"] = {
						-- #if AFTER CATA
						{ 24.8, 65.6, THE_HINTERLANDS },
						-- #else
						{ 24.2, 57.4, THE_HINTERLANDS },
						{ 32.8, 57.6, THE_HINTERLANDS },
						-- #endif
					},
				}),
			}),
			n(VENDORS, {
				n(12040, {	-- Brannik Ironbelly <Armorsmith>
					["coord"] = { 66.6, 44.2, THE_HINTERLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
					}},
					["groups"] = {
						i(12257, {	-- Heavy Notched Belt
							["isLimited"] = true,
						}),
						i(12258, {	-- Serpent Clasp Belt
							["timeline"] = { CREATED_1_12_1, ADDED_4_0_3 },
							["isLimited"] = true,
						}),
					},
				}),
				n(12958, {	-- Gigget Zipcoil <Trade Supplies>
					["coord"] = { 34.4, 38.6, THE_HINTERLANDS },
					["groups"] = {
						i(15735, {	-- Pattern: Ironfeather Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8161, {	-- Harggan <Blacksmithing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 13.6, 44.8, THE_HINTERLANDS },
						-- #else
						{ 13.4, 44.1, THE_HINTERLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7995, {	-- Plans: Mithril Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8160, {	-- Nioma <Leatherworking Supplies>
					["coord"] = { 13.3, 43.4, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8409, {	-- Pattern: Nightscape Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(14738, {	-- Otho Moji'ko <Cooking Supplies>
					["coord"] = { 79.2, 79.0, THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2688, {	-- Ruppo Zipcoil <Engineering Supplies>
					["coord"] = { 34.2, 37.8, THE_HINTERLANDS },
					["groups"] = {
						i(10609, {	-- Schematic: Mithril Mechanical Dragonling (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4782, {	-- Truk Wildbeard <Bartender>
					["coord"] = { 14.4, 42.3, THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
			}),
			-- #if AFTER 3.0.8
			n(SPECIAL, {
				i(9240, {	-- Mallet of Zul'Farrak
					["description"] = "The Sacred Mallet drops from Qiaga the Keeper on top of the Altar of Zul in Hinterlands. You then bring it to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 59.0, 79.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 9241, 1 } },	-- Sacred Mallet
				}),
				i(9241, {	-- Sacred Mallet
					["description"] = "Bring this to the top of Jintha'alor and use it near the altar to turn into the Mallet of Zul'Farrak so you can summon Gahz'rilla in Zul'Farrak.",
					["coord"] = { 49.2, 68.6, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 7996,	-- Qiaga the Keeper
				}),
			}),
			-- #endif
			n(ZONE_DROPS, {
				i(16214, {	-- Formula: Enchant Bracer - Greater Intellect (RECIPE!)
					["timeline"] = { REMOVED_2_3_0 },	-- Now taught by trainer, recipe removed from the game.
					["cr"] = 2642,	-- Vilebranch Shadowcaster
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, i(220912, {	-- Geode Hammer
					["provider"] = { "i", 220914 },	-- Broken Geode Hammer
					["description"] = "Wield this hammer until it breaks, revealing the rune inside!",
					["timeline"] = { ADDED_1_15_2 },
					["classes"] = { WARRIOR },
					["crs"] = {
						2649,	-- Witherbark Scalper
						2653,	-- Witherbark Sadist
						2650,	-- Witherbark Zealot
						2651,	-- Witherbark Hideskinner
						2652,	-- Witherbark Venomblood
						2654,	-- Witherbark Caller
					},
					["groups"] = {
						i(220913, {	-- Rune of Demolition
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(427084),	-- Engrave Bracers - Wrecking Crew
							},
						}),
					},
				})),
				-- #endif
				-- #if BEFORE CATA
				i(4589, {	-- Long Elegant Feather
					["crs"] = {
						2659,	-- Razorbeak Skylord
						2657,	-- Trained Razorbeak
						2658,	-- Razorbeak Gryphon
						2651,	-- Witherbark Hideskinner
					},
				}),
				-- #endif
				i(8704, {	-- OOX-09/HL Distress Beacon
					["description"] = "This item can drop off of any hostile creature in the zone. Rare and Elite creatures have higher drop chance.",
				}),
				i(15760, {	-- Pattern: Ironfeather Breastplate (RECIPE!)
					["cr"] = 2644,	-- Vilebranch Hideskinner
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 68.2, 75.0, THE_HINTERLANDS },
						{ 63.8, 73.6, THE_HINTERLANDS },
						{ 61.2, 68.4, THE_HINTERLANDS },
					},
				}),
				-- #if BEFORE 4.0.3
				i(9294, {	-- Recipe: Wildvine Potion (RECIPE!)
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
					["timeline"] = { REMOVED_4_0_1 },
				}),
				-- #endif
				i(9259, {	-- Troll Tribal Necklace
					-- #if BEFORE 4.0.3
					["description"] = "Can drop from any troll in The Hinterlands.",
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, i(221261, {	-- Wildwhisper Draught
					["description"] = "Dropped by any elite troll at Jintha'Alor.\n\nRequired for 'The Wild Gods'. Bring this to Razorfen Downs and use it after defeating the Coldbringer (the last boss).",
					["timeline"] = { ADDED_1_15_2 },
				})),
				-- #endif
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
		m(EASTERN_KINGDOMS, {
			m(THE_HINTERLANDS, {
				n(QUESTS, {
					q(26522),	-- Triggering after completing 'Faces of Evil' (q:26357 [H] & 26521 [A])
				}),
			}),
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {
		m(EASTERN_KINGDOMS, {
			m(THE_HINTERLANDS, {
				n(QUESTS, {
					q(38931),	-- Hero's Call: The Hinterlands! - completed with q:26542
				}),
			}),
		}),
	})),
});