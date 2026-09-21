---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.THE_HINTERLANDS, {
		["lore"] = "The Hinterlands, located in the Northern part of the Eastern Kingdoms, are probably most notable for the Wildhammer dwarves who make their residence at Aerie Peak in the west. The Wildhammers have always been staunch allies of the Alliance. It is from the Hinterlands that these dwarves find and tame their world-renowned gryphons. The Razorbeak gryphons roam wild in this region.\n\nAlso in the Hinterlands is one of the last remaining settlements of the high elves in Lordaeron at the Quel'Danil Lodge.\n\nThe Hinterlands are also home to a large population of forest trolls, which are divided into three separate tribes. The Revantusk tribe is the only one of the three that has declared sides in the Horde/Alliance conflict and support the warchief Thrall of the Horde. The Vilebranch tribe holds residence in the massive troll city of Jintha'Alor as well as the Altar of Zul while the Witherbark tribe holds the smallest influence, hailing from the temples of Shadra'Alor.",
		["icon"] = 236780,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(773),	-- Explore The Hinterlands
			}),
			explorationHeader({
				exploration(348),	-- Aerie Peak
				exploration(1884),	-- Agol'watha
				exploration(1885),	-- Hiri'watha / Hiri'watha Research Station [CATA+]
				exploration(354),	-- Jintha'Alor
				exploration(1882),	-- Plaguemist Ravine
				exploration(350),	-- Quel'Danil Lodge
				exploration(356),	-- Seradane
				exploration(353),	-- Shadra'Alor
				exploration(1917),	-- Shaol'watha
				exploration(351),	-- Skulk Rock
				exploration(355),	-- The Altar of Zul
				exploration(1886),	-- The Creeping Ruin
				exploration(307),	-- The Overlook Cliffs
				exploration(1883),	-- Valorwind Lake
			}),
			n(FACTIONS, {
				faction(471, {	-- Wildhammer Clan
					["description"] =
						"This faction gets removed completely with the TBC prepatch, so grinding this to Exalted makes no sense.\n\nYou can grind to 11999/12000 by just killing trolls and then you can *technically* grind to Exalted by turning in Troll Necklaces at a rate of 2 Reputation per 5 necklaces, but rather than encourage you to totally waste your life on a Reputation that gets ultimately removed from the game after the season is over, I'll artificially cap the goal in ATT to Revered.\n\nGodspeed.",
					["minReputation"] = { 471, REVERED },	-- Wildhammer Clan, Revered.
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
			n(FLIGHT_PATHS, {
				fp(43, {	-- Aerie Peak, The Hinterlands
					["cr"] = 8018,	-- Guthrum Thunderfist <Gryphon Master>
					["coord"] = { 11.0, 46.0, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(76, {	-- Revantusk Village, The Hinterlands
					["cr"] = 4314,	-- Gorkas <Wind Rider Master>
					["coord"] = { 81.6, 81.8, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(LEATHERWORKING, {
					n(11097, {	-- Drakk Stonehand <Master Leatherworking Trainer>
						["coord"] = { 13.4, 43.4, MAP.THE_HINTERLANDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = EXPERT_ARTISAN_LEATHERWORKING,
					}),
				}),
			}),
			n(QUESTS, {
				q(9470, {	-- A Gesture of Goodwill
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 41,
					["groups"] = {
						objective(1, {	-- 0/1 Witch Doctor Mai'jin slain
							["provider"] = { "n", 17235 },	-- Witch Doctor Mai'jin
							["coord"] = { 24.6, 65.4, MAP.THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/1 Tcha'kaz slain
							["provider"] = { "n", 17236 },	-- Tcha'kaz
							["coord"] = { 24.8, 65.6, MAP.THE_HINTERLANDS },
						}),
					},
				}),
				q(77, {	-- A Sticky Situation
					["sourceQuest"] = 650,	-- Ripple Recovery (2/2)
					["qg"] = 7801,	-- Gilveradin Sunchaser
					["coord"] = { 26.6, 48.4, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/10 Hinterlands Honey Ripple
							["providers"] = {
								{ "i",   8684 },	-- Hinterlands Honey Ripple
								{ "o", 142191 },	-- Horde Supply Crate
							},
							["coords"] = {
								{ 47.1, 40.3, MAP.THE_HINTERLANDS },
								{ 57.3, 41.2, MAP.THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(7842, {	-- Another Message to the Wildhammer
					["sourceQuest"] = 7841,	-- Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, MAP.THE_HINTERLANDS },
					["cost"] = { { "i", 4589, 10 } },	-- Long Elegant Feather
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(7830, {	-- Avenging the Fallen
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, MAP.THE_HINTERLANDS },
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
					["sourceQuest"] = 4297,	-- Food for Baby
					["qg"] = 9660,	-- Agnar Beastamer
					["coord"] = { 14.1, 43.6, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						i(11474, {	-- Sprite Darter Egg (PET!)
							["timeline"] = { ADDED_1_11_1 },
							["races"] = ALLIANCE_ONLY,
						}),
					},
				}),
				q(7844, {	-- Cannibalistic Cousins
					["qg"] = 14739,	-- Mystic Yayo'jin <Reagent Vendor>
					["coord"] = { 78.8, 78.4, MAP.THE_HINTERLANDS },
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
					["sourceQuest"] = 2934,	-- Undamaged Venom Sac
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["coord"] = { 61.4, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7850, {	-- Dark Vessels
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/10 Vessel of Tainted Blood
							["providers"] = {
								{ "i",  19071 },	-- Vessel of Tainted Blood
								{ "o", 179922 },	-- Vessel of Tainted Blood
							},
							["description"] = "Can be found all over Jintha'alor.",
							["coord"] = { 65.2, 71.9, MAP.THE_HINTERLANDS },
						}),
						i(19118),	-- Nature's Breath
					},
				}),
				q(9469, {	-- Featherbeard's Endorsement
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(485, {	-- Find OOX-09/HL!
					["description"] = "The item that starts this quest has a chance to drop from any killed creature in The Hinterlands.",
					["provider"] = { "i", 8704 },	-- OOX-09/HL Distress Beacon
					["lvl"] = 43,
				}),
				q(4297, {	-- Food for Baby
					["sourceQuest"] = 3843,	-- The Newest Member of the Family
					["qg"] = 9660,	-- Agnar Beastamer
					["coord"] = { 14.1, 43.6, MAP.THE_HINTERLANDS },
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
					["sourceQuest"] = 7815,	-- Snapjaws, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.2, 81.4, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Katoom's Best Lure
							["provider"] = { "i", 19023 },	-- Katoom's Best Lure
							["coords"] = {
								{ 81.4, 47.2, MAP.THE_HINTERLANDS },
								{ 80.6, 59.6, MAP.THE_HINTERLANDS },
								{ 76.0, 67.6, MAP.THE_HINTERLANDS },
								{ 77.8, 76.8, MAP.THE_HINTERLANDS },
							},
							["cr"] = 7977,	-- Gammerita
						}),
					},
				}),
				q(1450, {	-- Gryphon Master Talonaxe
					["sourceQuest"] = 1449,	-- To The Hinterlands
					["qg"] = 5635,	-- Falstad Wildhammer <High Thane>
					["coord"] = { 11.8, 46.8, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(7829, {	-- Hunt the Savages
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(20 / 10 (Wrath)) Savage Owlbeast slain
							["provider"] = { "n", 2929 },	-- Savage Owlbeast
						}),
					},
				}),
				q(9476, {	-- In Pursuit of Featherbeard
					["sourceQuest"] = 9469,	-- Featherbeard's Endorsement
					["provider"] = { "o", 181649 },	-- Featherbeard's Journal
					["coord"] = { 13.4, 55.2, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(7862, {	-- Job Opening: Guard Captain of Revantusk Village
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, MAP.THE_HINTERLANDS },
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
						i(19120),	-- Rune of the Guard Captain
					},
				}),
				q(7845, {	-- Kidnapped Elder Torntusk!
					["qg"] = 14736,	-- Primal Torntusk
					["coord"] = { 78.2, 81.2, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(7840, {	-- Lard Lost His Lunch
					["qg"] = 14731,	-- Lard <Innkeeper>
					["coord"] = { 78.2, 81.2, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Lard's Lunch
							["provider"] = { "i", 19034 },	-- Lard's Lunch
							["coord"] = { 84.6, 41.2, MAP.THE_HINTERLANDS },
							["cr"] = 14748,	-- Vilebranch Kidnapper
						}),
						i(19035, {	-- Lard's Special Picnic Basket
							["description"] = "Contains a random world drop and some consumables.",
						}),
					},
				}),
				q(7841, {	-- Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, MAP.THE_HINTERLANDS },
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
				q(9471, {	-- Preying on the Predators
					["qg"] = 17223,	-- Ambassador Rualeth
					["coord"] = { 15.1, 47.2, MAP.THE_HINTERLANDS },
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
				q(9475, {	-- Reclaiming the Eggs
					["sourceQuest"] = 9476,	-- In Pursuit of Featherbeard
					["providers"] = {
						{ "o", 181643 },	-- Featherbeard's Remains
						{ "i",  23695 },	-- Featherbeard's Map
					},
					["coord"] = { 37.1, 71.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/5 Gryphon Egg
							["providers"] = {
								{ "i",  23694 },	-- Gryphon Egg
								{ "o", 181645 },	-- Gryphon Egg
							},
							["coords"] = {
								{ 39.9, 66.0, MAP.THE_HINTERLANDS },
								{ 36.7, 71.2, MAP.THE_HINTERLANDS },
								{ 35.9, 72.7, MAP.THE_HINTERLANDS },
								{ 34.2, 72.8, MAP.THE_HINTERLANDS },
								{ 33.7, 75.0, MAP.THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(7846, {	-- Recover the Key!
					["sourceQuest"] = 7845,	-- Kidnapped Elder Torntusk!
					["qg"] = 14757,	-- Elder Torntusk
					["coord"] = { 59.6, 77.8, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Shackle Key
							["provider"] = { "i", 19064 },	-- Shackle Key
							["coord"] = { 57.6, 86.6, MAP.THE_HINTERLANDS },
							["cr"] = 10802,	-- Hitah'ya the Keeper
						}),
					},
				}),
				q(836, {	-- Rescue OOX-09/HL!
					["sourceQuest"] = 485,	-- Find OOX-09/HL!
					["qg"] = 7806,	-- Homing Robot OOX-09/HL
					["coord"] = { 49.4, 37.6, MAP.THE_HINTERLANDS },
					["lvl"] = 43,
					["groups"] = {
						i(9645),	-- Gnomish Inventor Boots
						i(9646),	-- Gnomish Water Winking Device
					},
				}),
				q(7847, {	-- Return to Primal Torntusk
					["sourceQuest"] = 7846,	-- Recover the Key!
					["qg"] = 14757,	-- Elder Torntusk
					["coord"] = { 59.6, 77.8, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						i(19114),	-- Highland Bow
						i(19115),	-- Flask of Forest Mojo
					},
				}),
				q(1451, {	-- Rhapsody Shindigger
					["sourceQuest"] = 1450,	-- Gryphon Master Talonaxe
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1452, {	-- Rhapsody's Kalimdor Kocktail
					["sourceQuest"] = 1451,	-- Rhapsody Shindigger
					["qg"] = 5634,	-- Rhapsody Shindigger
					["coord"] = { 26.8, 48.4, MAP.THE_HINTERLANDS },
					["maps"] = { MAP.FERALAS, MAP.TANARIS },
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
					["sourceQuest"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["providers"] = {
						{ "n", 5634 },	-- Rhapsody Shindigger
						{ "i", 6287 },	-- Atal'ai Tablet Fragment
					},
					["coord"] = { 26.8, 48.4, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2742, {	-- Rin'ji is Trapped!
					["qg"] = 7780,	-- Rin'ji <Witherbark Troll>
					["coord"] = { 30.6, 47.0, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(2782, {	-- Rin'ji's Secret
					["sourceQuest"] = 2742,	-- Rin'ji is Trapped!
					["providers"] = {
						{ "o", 142127 },	-- Rin'ji's Secret
						{ "i", 8724 },	-- Rin'ji's Secret
					},
					["coord"] = { 86.3, 59.1, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(81, {		-- Ripple Delivery
					["sourceQuest"] = 77,	-- A Sticky Situation
					["providers"] = {
						{ "n", 7801 },	-- Gilveradin Sunchaser
						{ "i", 8685 },	-- Dran's Ripple Delivery
					},
					["coord"] = { 26.6, 48.4, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(649, {	-- Ripple Recovery (1/2)
					["qg"] = 6986,	-- Dran Droffers
					["coord"] = { 59.4, 36.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(650, {	-- Ripple Recovery (2/2)
					["sourceQuest"] = 649,	-- Ripple Recovery
					["qg"] = 6987,	-- Malton Droffers
					["coord"] = { 59.4, 36.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(2994, {	-- Saving Sharpbeak
					["sourceQuest"] = 2993,	-- Return to the Hinterlands
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Open Sharpbeak's Cage
							["providers"] = {
								{ "i",   9472 },	-- Hexx's Key
								{ "o", 144070 },	-- Sharpbeak's Cage
							},
							["coord"] = { 53.6, 66.8, MAP.THE_HINTERLANDS },
							["cr"] = 8023,	-- Sharpbeak
						}),
						i(9472, {	-- Hexx's Key
							["coord"] = { 59.6, 77.6, MAP.THE_HINTERLANDS },
							["cr"] = 7995,	-- Vile Priestess Hexx
						}),
						i(9651),	-- Gryphon Rider's Stormhammer
						i(9652),	-- Gryphon Rider's Leggings
					},
				}),
				q(7849, {	-- Separation Anxiety
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Huntsman Malkhor's Skull
							["providers"] = {
								{ "i",  19069 },	-- Huntsman Malkhor's Skull
								{ "o", 179915 },	-- Pile of Skulls
							},
							["coord"] = { 58.6, 64.9, MAP.THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/1 Huntsman Malkhor's Bones
							["providers"] = {
								{ "i",  19070 },	-- Huntsman Malkhor's Bones
								{ "o", 179914 },	-- Pile of Bones
							},
							["coord"] = { 62.2, 75.5, MAP.THE_HINTERLANDS },
						}),
						i(19117),	-- Laquered Wooden Plate Legplates
						i(19116),	-- Greenleaf Handwraps
					},
				}),
				q(2877, {	-- Skulk Rock Clean-up
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, MAP.THE_HINTERLANDS },
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
				q(7815, {	-- Snapjaws, Mon!
					["qg"] = 14740,	-- Katoom the Angler
					["coord"] = { 80.2, 81.4, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/(15 / 10 (Wrath)) Saltwater Snapjaw slain
							["provider"] = { "n", 2505 },	-- Saltwater Snapjaw
						}),
						i(19022),	-- Nat Pagle's Extreme Angler FC-5000
					},
				}),
				q(7828, {	-- Stalking the Stalkers
					["qg"] = 14741,	-- Huntsman Markhor <Stable Master>
					["coord"] = { 79.0, 79.6, MAP.THE_HINTERLANDS },
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
				q(2937, {	-- Summoning Shadra
					["sourceQuest"] = 2936,	-- The Spider God
					["qg"] = 3188,	-- Master Gadrin
					["coord"] = { 56.0, 74.6, MAP.DUROTAR },
					["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Shadra's Venom
							["providers"] = {
								{ "i", 9324 },	-- Shadra's Venom
								{ "i", 9323 },	-- Gadrin's Parchment
							},
							["coord"] = { 34.0, 72.0, MAP.THE_HINTERLANDS },
							["cr"] = 2707,	-- Shadra <The Venom Queen>
						}),
					},
				}),
				q(2990, {	-- Thadius Grimshade
					["sourceQuest"] = 2989,	-- The Altar of Zul
					["providers"] = {
						{ "n", 5636 },	-- Gryphon Master Talonaxe
						{ "i", 9468 },	-- Sharpbeak's Feather
					},
					["coord"] = { 9.8, 44.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2989, {	-- The Altar of Zul
					["sourceQuest"] = 2988,	-- Witherbark Cages
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7843, {	-- The Final Message to the Wildhammer
					["sourceQuest"] = 7842,	-- Another Message to the Wildhammer
					["qg"] = 14738,	-- Otho Moji'ko <Cooking Supplier>
					["coord"] = { 79.2, 79.0, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Message to the Wildhammer Delivered
							["provider"] = { "i", 19036 },	-- Final Message to the Wildhammer
							["coord"] = { 14.0, 48.0, MAP.THE_HINTERLANDS },
						}),
						i(19119),	-- Owlbeast Hide Gloves
					},
				}),
				q(2880, {	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, MAP.THE_HINTERLANDS },
					["cost"] = { { "i", 9259, 5 } },	-- Troll Tribal Necklace
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2881, {	-- Troll Necklace Bounty
					["sourceQuest"] = 2880,	-- Troll Necklace Bounty
					["qg"] = 7884,	-- Fraggar Thundermantle
					["coord"] = { 14.8, 44.6, MAP.THE_HINTERLANDS },
					["maxReputation"] = {
						471, REVERED,	-- Wildhammer Clan, Revered.
					},
					["cost"] = { { "i", 9259, 5 } },	-- Troll Tribal Necklace
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(2934, {	-- Undamaged Venom Sac
					["sourceQuest"] = 2933,	-- Venom Bottles
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["coord"] = { 61.4, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Undamaged Venom Sac
							["provider"] = { "i", 9322 },	-- Undamaged Venom Sac
							["coord"] = { 34.8, 70.2, MAP.THE_HINTERLANDS },
							["cr"] = 2686,	-- Witherbark Broodguard
						}),
					},
				}),
				q(2933, {	-- Venom Bottles
					["providers"] = {
						{ "o", 142702 },	-- Venom Bottle
						{ "i", 9321 },	-- Venom Bottle
					},
					["coord"] = { 23.6, 58.7, MAP.THE_HINTERLANDS },
					["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(2938, {	-- Venom to the Undercity
					["sourceQuest"] = 2937,	-- Summoning Shadra
					["providers"] = {
						{ "n", 2216 },	-- Apothecary Lydon <Royal Apothecary Society>
						{ "i", 9436 },	-- Faranell's Parcel
					},
					["coord"] = { 61.4, 19.2, MAP.HILLSBRAD_FOOTHILLS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9649),	-- Royal Highmark Vestments
						i(9650),	-- Honorguard Chestpiece
						i(10686),	-- Aegis of Battle
					},
				}),
				q(7839, {	-- Vilebranch Hooligans
					["qg"] = 14737,	-- Smith Slagtree <Blacksmithing Supplies>
					["coord"] = { 77.6, 80.2, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Slagtree's Lost Tools
							["provider"] = { "i", 19033 },	-- Slagtree's Lost Tools
							["coords"] = {
								{ 53.3, 38.8, MAP.THE_HINTERLANDS },
								{ 57.5, 42.6, MAP.THE_HINTERLANDS },
								{ 66.4, 44.8, MAP.THE_HINTERLANDS },
								{ 71.0, 48.6, MAP.THE_HINTERLANDS },
								{ 72.6, 53.0, MAP.THE_HINTERLANDS },
							},
						}),
					},
				}),
				q(7861, {	-- Wanted: Vile Priestess Hexx and Her Minions
					["provider"] = { "o", 179913 },	-- Call to Arms!
					["coord"] = { 79.0, 79.0, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Vile Priestess Hexx slain
							["provider"] = { "n", 7995 },	-- Vile Priestess Hexx
							["coord"] = { 59.6, 78.0, MAP.THE_HINTERLANDS },
						}),
						objective(2, {	-- 0/(20 / 10 (TBC) / 5 (Wrath)) Vilebranch Aman'zasi Guard slain
							["provider"] = { "n", 2648 },	-- Vilebranch Aman'zasi Guard
						}),
						i(19159),	-- Woven Ivy Necklace
						i(19121),	-- Deep Woodlands Cloak
					},
				}),
				q(2988, {	-- Witherbark Cages
					["qg"] = 5636,	-- Gryphon Master Talonaxe
					["coord"] = { 9.8, 44.5, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Check First Cage
							["provider"] = { "o", 144066 },	-- First Witherbark Cage
							["coord"] = { 23.2, 58.7, MAP.THE_HINTERLANDS },
						}),
						objective(2, {	-- Check Second Cage
							["provider"] = { "o", 144067 },	-- Second Witherbark Cage
							["coord"] = { 23.1, 58.7, MAP.THE_HINTERLANDS },
						}),
						objective(3, {	-- Check Third Cage
							["provider"] = { "o", 144068 },	-- Third Witherbark Cage
							["coord"] = { 31.9, 57.2, MAP.THE_HINTERLANDS },
						}),
					},
				}),
			}),
			n(RARES, {
				n(8215, {	-- Grimungous
					["coords"] = {
						{ 63.8, 48.4, MAP.THE_HINTERLANDS },
						{ 68.2, 50.2, MAP.THE_HINTERLANDS },
						{ 62.8, 55.0, MAP.THE_HINTERLANDS },
						{ 70.2, 59.8, MAP.THE_HINTERLANDS },
						{ 74.6, 50.0, MAP.THE_HINTERLANDS },
						{ 75.0, 56.0, MAP.THE_HINTERLANDS },
					},
				}),
				n(8213, {	-- Ironback
					["coords"] = {
						{ 82.2, 44.8, MAP.THE_HINTERLANDS },
						{ 81.6, 48.8, MAP.THE_HINTERLANDS },
						{ 79.8, 61.2, MAP.THE_HINTERLANDS },
						{ 77.6, 65.0, MAP.THE_HINTERLANDS },
						{ 78.0, 67.0, MAP.THE_HINTERLANDS },
						{ 76.8, 81.0, MAP.THE_HINTERLANDS },
						{ 75.0, 88.8, MAP.THE_HINTERLANDS },
						{ 73.4, 91.4, MAP.THE_HINTERLANDS },
					},
				}),
				n(8214, {	-- Jalinde Summerdrake
					["coords"] = {
						{ 27.8, 44.0, MAP.THE_HINTERLANDS },
						{ 28.6, 46.6, MAP.THE_HINTERLANDS },
						{ 31.6, 49.6, MAP.THE_HINTERLANDS },
						{ 31.2, 43.6, MAP.THE_HINTERLANDS },
						{ 32.8, 44.6, MAP.THE_HINTERLANDS },
					},
					["races"] = HORDE_ONLY,
				}),
				n(8217, {	-- Mith'rethis the Enchanter
					["coords"] = {
						{ 58.8, 71.2, MAP.THE_HINTERLANDS },
						{ 59.8, 77.4, MAP.THE_HINTERLANDS },
						{ 66.8, 80.2, MAP.THE_HINTERLANDS },
					},
					["groups"] = {
						i(17050),	-- Chan's Imperial Robes
					},
				}),
				n(8211, {	-- Old Cliff Jumper
					["coords"] = {
						{ 17.0, 54.6, MAP.THE_HINTERLANDS },
						{ 19.0, 50.6, MAP.THE_HINTERLANDS },
						{ 30.6, 49.4, MAP.THE_HINTERLANDS },
						{ 22.6, 52.4, MAP.THE_HINTERLANDS },
					},
				}),
				n(8210, {	-- Razortalon
					["coords"] = {
						{ 27.0, 54.8, MAP.THE_HINTERLANDS },
						{ 27.0, 66.0, MAP.THE_HINTERLANDS },
						{ 37.8, 44.2, MAP.THE_HINTERLANDS },
						{ 36.8, 51.2, MAP.THE_HINTERLANDS },
					},
				}),
				n(8216, {	-- Retherokk the Berserker
					["coords"] = {
						{ 44.6, 67.4, MAP.THE_HINTERLANDS },
						{ 46.8, 70.2, MAP.THE_HINTERLANDS },
						{ 46.4, 64.6, MAP.THE_HINTERLANDS },
						{ 51.2, 65.6, MAP.THE_HINTERLANDS },
						{ 50.4, 60.4, MAP.THE_HINTERLANDS },
					},
				}),
				n(8212, {	-- The Reak
					["coords"] = {
						{ 46.8, 40.4, MAP.THE_HINTERLANDS },
						{ 49.4, 53.0, MAP.THE_HINTERLANDS },
						{ 58.0, 41.6, MAP.THE_HINTERLANDS },
					},
				}),
				n(8218, {	-- Witherheart the Stalker
					["coords"] = {
						{ 34.2, 68.4, MAP.THE_HINTERLANDS },
						{ 31.4, 73.0, MAP.THE_HINTERLANDS },
						{ 34.0, 75.6, MAP.THE_HINTERLANDS },
						{ 35.0, 74.0, MAP.THE_HINTERLANDS },
						{ 33.8, 73.2, MAP.THE_HINTERLANDS },
					},
				}),
				n(8219, {	-- Zul'arek Hatefowler
					["coords"] = {
						{ 24.2, 57.4, MAP.THE_HINTERLANDS },
						{ 32.8, 57.6, MAP.THE_HINTERLANDS },
					},
				}),
			}),
			n(VENDORS, {
				n(12958, {	-- Gigget Zipcoil <Trade Supplies>
					["coord"] = { 34.4, 38.6, MAP.THE_HINTERLANDS },
					["groups"] = {
						i(15735, {	-- Pattern: Ironfeather Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8161, {	-- Harggan <Blacksmithing Supplies>
					["coord"] = { 13.4, 44.1, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7995, {	-- Plans: Mithril Scale Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8160, {	-- Nioma <Leatherworking Supplies>
					["coord"] = { 13.3, 43.4, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8409, {	-- Pattern: Nightscape Shoulders (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(14738, {	-- Otho Moji'ko <Cooking Supplies>
					["coord"] = { 79.2, 79.0, MAP.THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2688, {	-- Ruppo Zipcoil <Engineering Supplies>
					["coord"] = { 34.2, 37.8, MAP.THE_HINTERLANDS },
					["groups"] = {
						i(10609, {	-- Schematic: Mithril Mechanical Dragonling (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4782, {	-- Truk Wildbeard <Bartender>
					["coord"] = { 14.4, 42.3, MAP.THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(16214, {	-- Formula: Enchant Bracer - Greater Intellect (RECIPE!)
					["cr"] = 2642,	-- Vilebranch Shadowcaster
				}),
				i(4589),	-- Long Elegant Feather
				i(8704, {	-- OOX-09/HL Distress Beacon
					["description"] = "This item can drop off of any hostile creature in the zone. Rare and Elite creatures have higher drop chance.",
				}),
				i(15760, {	-- Pattern: Ironfeather Breastplate (RECIPE!)
					["cr"] = 2644,	-- Vilebranch Hideskinner
					["coords"] = {
						{ 68.2, 75.0, MAP.THE_HINTERLANDS },
						{ 63.8, 73.6, MAP.THE_HINTERLANDS },
						{ 61.2, 68.4, MAP.THE_HINTERLANDS },
					},
				}),
				i(9294, {	-- Recipe: Wildvine Potion (RECIPE!)
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				i(9259, {	-- Troll Tribal Necklace
					["description"] = "Can drop from any troll in The Hinterlands.",
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
			}),
		},
	}),
}));
