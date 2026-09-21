---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local OnTooltipForGadgetzhan = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Kill Pirates near Ratchet", 2.5, 42000);
		if reputation < 20999 then
			addRepInfo(tooltipInfo, reputation, "Kill Southsea Pirates in Tanaris (To 11999 Honored)", 5, 20999);
		end
	end
end]];

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.TANARIS, {
		["lore"] = "The Tanaris Desert is vast and unexplored. It is a land of endless sands and cloudless skies. The southern Tanaris Desert is more mountainous than the north, boasting canyons and high bluffs. Numerous tunnels run beneath the sands, purportedly infested with the mysterious silithid. Other creatures in the desert include tallstriders, lions, kodo beasts, drakes and dragons — many the offspring of mighty Nozdormu, who is said to make this land his home.\n\nThe only bit of civilization is Gadgetzhan, a goblin trading post. Many Ironforge prospectors stock up on supplies here before heading out in search of the lost Titan city of Uldum.",
		["icon"] = 236846,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(851),	-- Explore Tanaris
			}),
			explorationHeader({
				exploration(1939),	-- Abyssal Sands
				exploration(1938),	-- Broken Pillar
				visit_exploration(1941,{coord={62.8,50.9,MAP.TANARIS}}),	-- Caverns of Time
				exploration(2300),	-- Caverns of Time
				exploration(983),	-- Dunemaul Compound
				exploration(984),	-- Eastmoon Ruins
				exploration(976),	-- Gadgetzan
				exploration(987),	-- Land's End Beach
				exploration(1336),	-- Lost Rigger Cove
				exploration(1937),	-- Noonshade Ruins
				exploration(979),	-- Sandsorrow Watch
				visit_exploration(1940,{coord={62.3,58.9,MAP.TANARIS}}),	-- Southbreak Shore
				exploration(992),	-- Southmoon Ruins
				visit_exploration(977,{coord={64.9,21.8,MAP.TANARIS}}),	-- Steamwheedle Port
				exploration(981),	-- The Gaping Chasm
				exploration(982),	-- The Noxious Lair
				exploration(980),	-- Thistleshrub Valley
				exploration(990),	-- Valley of the Watchers
				exploration(985),	-- Waterspring Field
				exploration(986),	-- Zalashji's Den
				exploration(978),	-- Zul'Farrak
			}),
			n(FACTIONS, {
				faction(FACTION_GADGETZAN, {	-- Gadgetzan
					["icon"] = 133784,
					["OnTooltip"] = OnTooltipForGadgetzhan,
					["maps"] = {
						MAP.THE_BARRENS,
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(39, {	-- Gadgetzan, Tanaris
					["cr"] = 7823,	-- Bera Stonehammer <Gryphon Master>
					["coord"] = { 51.0, 29.2, MAP.TANARIS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(40, {	-- Gadgetzan, Tanaris
					["cr"] = 7824,	-- Bulkrek Ragefist <Wind Rider Master>
					["coord"] = { 51.6, 26.6, MAP.TANARIS },
					["races"] = HORDE_ONLY,
				}),
			}),
			lockpicking({
				o(179496, {	-- Dented Footlocker
					["coord"] = { 72.6, 45.4, MAP.TANARIS },
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 225,
				}),
			}),
			n(PROFESSIONS, {
				prof(ENGINEERING, {
					n(8736, {	-- Buzzek Bracketswing <Engineering Trainer>
						["coord"] = { 51.6, 30.2, MAP.TANARIS },
						["groups"] = EXPERT_ARTISAN_ENGINEERING,
					}),
					n(8126, {	-- Nixx Sprocketspring <Goblin Engineering Trainer>
						["coord"] = { 52.2, 28.2, MAP.TANARIS },
						["groups"] = ALL_GOBLIN_ENGINEERING,
					}),
				}),
			}),
			n(QUESTS, {
				q(2750, {	-- A Bad Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["cost"] = { { "i", 8646, 1 } },	-- Bad Egg
					["repeatable"] = true,
					["lvl"] = 42,
				}),
				q(7652, {	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["timeline"] = { ADDED_1_11_1 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
				}),
				q(2748, {	-- A Fine Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["cost"] = { { "i", 8644, 1 } },	-- Fine Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9540),	-- Box of Spells
					},
				}),
				q(2771, {	-- A Good Head On Your Shoulders
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = {
						{ "i", 7931, 2 },	-- Mithril Coif
						{ "i", 7928, 1 },	-- Ornate Mithril Shoulder
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						recipe(9980, {	-- Ornate Mithril Helm
						}),
					},
				}),
				q(2747, {	-- An Extraordinary Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["cost"] = { { "i", 8643, 1 } },	-- Extraordinary Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9541),	-- Box of Goodies
					},
				}),
				q(2749, {	-- An Ordinary Egg
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["cost"] = { { "i", 8645, 1 } },	-- Ordinary Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(9539),	-- Box of Rations
					},
				}),
				q(841, {	-- Another Power Source?
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["cost"] = { { "i", 8483, 10 } },	-- Wastewander Water Pouch
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 38,
					["groups"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(4496, {	-- Bungle in the Jungle
					["sourceQuests"] = {
						4494,	-- March of the Silithid [Horde]
						4493,	-- March of the Silithid [Alliance]
					},
					["qg"] = 5594,	-- Alchemist Pestlezugg
					["coord"] = { 50.8, 27.0, MAP.TANARIS },
					["maps"] = { MAP.UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Gorishi Scent Gland
							["provider"] = { "i", 11837 },	-- Gorishi Scent Gland
							["crs"] = {
								6553,	-- Gorishi Reaver
								6554,	-- Gorishi Stinger
								6555,	-- Gorishi Tunneler
								6551,	-- Gorishi Wasp
								6552,	-- Gorishi Worker
							},
						}),
						objective(2, {	-- 0/5 Un'Goro Soil
							["provider"] = { "i", 11018 },	-- Un'Goro Soil
						}),
					},
				}),
				{
					["allianceQuestData"] = q(4508, {	-- Calm Before the Storm (1/2) [A]
						["maps"] = { MAP.DARNASSUS },
					}),
					["hordeQuestData"] = q(4509, {	-- Calm Before the Storm (1/2) [H]
						["maps"] = { MAP.ORGRIMMAR },
					}),
					["providers"] = {
						{ "n", 5594 },	-- Alchemist Pestlezugg <Alchemy Supplies>
						{ "i", 11844 },	-- Pestlezugg's Un'Goro Report
					},
                    ["sourceQuest"] = 4507,	-- Pawn Captures Queen
                    ["coord"] = { 50.8, 27.0, MAP.TANARIS },
                    ["lvl"] = 50,
				},
				q(6610, {	-- Clamlette Surprise
					["sourceQuests"] = {
						6611,	-- To Gadgetzan You Go!
						6612,	-- I Know A Guy...
					},
					["altQuests"] = { 13825 },	-- Clamlette Surprise
					["qgs"] = {
						8125,	-- Dirge Quikcleave
					},
					["coord"] = { 52.6, 28.1, MAP.TANARIS },
					["cost"] = {
						{ "i", 12207, 12 },	-- Giant Egg
						{ "i", 7974, 10 },	-- Zesty Clam Meat
						{ "i", 8932, 20 },	-- Alterac Swiss
					},
					["requireSkill"] = COOKING,
					["learnedAt"] = 225,
					["lvl"] = 35,
					["groups"] = {
						i(16971),	-- Clamlette Surprise
						recipe(18260, {	-- Cooking (Artisan)
							["rank"] = 4,
						}),
					},
				}),
				q(2882, {	-- Cuergo's Gold
					["providers"] = {
						{ "i",   9254 },	-- Cuergo's Treasure Map
						{ "o", 142189 },	-- Inconspicuous Landmark
					},
					["coord"] = { 55.4, 92.2, MAP.TANARIS },
					["cost"] = {
						{ "i", 9275, 1 },	-- Cuergo's Key
						{ "i", 9251, 1 },	-- Upper Map Fragment
						{ "i", 9253, 1 },	-- Middle Map Fragment
						{ "i", 9252, 1 },	-- Lower Map Fragment
					},
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Cuergo's Key
							["provider"] = { "i", 9275 },	-- Cuergo's Key
							["crs"] = {
								7899,	-- Treasure Hunting Pirate
								7901,	-- Treasure Hunting Swashbuckler
								7902,	-- Treasure Hunting Buccaneer
							},
						}),
						i(9265, {	-- Cuergo's Hidden Treasure
							["groups"] = {
								i(9360),	-- Cuergo's Gold
								i(9361),	-- Cuergo's Gold with Worm
								i(9359),	-- Wirt's Third Leg (Patch 9.1.5: Renamed to 'Southsea Lamp')
							},
						}),
					},
				}),
				q(2661, {	-- Delivery for Marin
					["sourceQuest"] = 2641,	-- Sprinkle's Secret Ingredient
					["providers"] = {
						{ "n", 7583 },	-- Sprinkle
						{ "i", 8528 },	-- Violet Powder
					},
					["coord"] = { 51.0, 26.8, MAP.TANARIS },
					["lvl"] = 44,
				}),
				q(2874, {	-- Deliver to MacKinley
					["sourceQuest"] = 2873,	-- Stoley's Shipment
					["providers"] = {
						{ "n", 7881 },	-- Stoley
						{ "i", 9245 },	-- Stoley's Bottle
					},
					["maps"] = { MAP.STRANGLETHORN_VALE },
					["lvl"] = 40,
					["groups"] = {
						i(9636),	-- Swashbuckler Sash
						i(9637),	-- Shinkicker Boots
					},
				}),
				q(3321, {	-- Did You Lose This?
					["sourceQuests"] = {
						2771,	-- A Good Head On Your Shoulders
						2773,	-- The Mithril Kid
						2772,	-- The World At Your Feet
					},
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						i(10418),	-- Glimmering Mithril Insignia
					},
				}),
				q(351, {	-- Find OOX-17/TN!
					["description"] = "The item that starts this quest can be found as a zone drop in Tanaris or in Zul'Farrak.",
					["provider"] = { "i", 8623 },	-- OOX-17/TN Distress Beacon
					["lvl"] = 43,
				}),
				q(992, {	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, MAP.TANARIS },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Tapped Dowsing Widget
							["providers"] = {
								{ "i", 8585 },	-- Tapped Dowsing Widget
								{ "i", 8584 },	-- Untapped Dowsing Widget
							},
							["coord"] = { 39.0, 29.0, MAP.TANARIS },
						}),
					},
				}),
				q(3161, {	-- Gahz'ridian
					["qg"] = 7771,	-- Marvon Rivetseeker
					["coord"] = { 52.6, 45.8, MAP.TANARIS },
					["lvl"] = 43,
					["groups"] = {
						objective(1, {	-- 0/30 Gahz'ridian Ornament
							["providers"] = {
								{ "i",   8443 },	-- Gahz'ridian Ornament
								{ "o", 140971 },	-- Gahz'ridian
							},
						}),
						i(9978),	-- Gahz'ridian Detector
						i(10827),	-- Surveyor's Tunic
						i(10826),	-- Staff of Lore
					},
				}),
				q(3022, {	-- Handle With Care
					["providers"] = {
						{ "n", 7763 },	-- Curgle Cranklehop
						{ "i", 9507 },	-- A Carefully-packed Crate
					},
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["maps"] = { MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
				}),
				q(7653, {	-- Imperial Plate Belt
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 20 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12688),	-- Plans: Imperial Plate Belt (RECIPE!)
					},
				}),
				q(7654, {	-- Imperial Plate Boots
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 40 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12700),	-- Plans: Imperial Plate Boots (RECIPE!)
					},
				}),
				q(7655, {	-- Imperial Plate Bracer
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 20 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12690),	-- Plans: Imperial Plate Bracer (RECIPE!)
					},
				}),
				q(7656, {	-- Imperial Plate Chest
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 60 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12705),	-- Plans: Imperial Plate Chest (RECIPE!)
					},
				}),
				q(7657, {	-- Imperial Plate Helm
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 50 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12701),	-- Plans: Imperial Plate Helm (RECIPE!)
					},
				}),
				q(7658, {	-- Imperial Plate Leggings
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 60 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12715),	-- Plans: Imperial Plate Leggings (RECIPE!)
					},
				}),
				q(7659, {	-- Imperial Plate Shoulders
					["sourceQuest"] = 7652,	-- A Blue Light Bargain
					["qg"] = 14567,	-- Derotain Mudsipper
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = { { "i", 12359, 20 } },	-- Thorium Bar
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 265,
					["lvl"] = 50,
					["groups"] = {
						i(12687),	-- Plans: Imperial Plate Shoulders (RECIPE!)
					},
				}),
				q(2606, {	-- In Good Taste
					["sourceQuest"] = 2605,	-- The Thirsty Goblin
					["providers"] = {
						{ "n", 7564 },	-- Marin Noggenfogger
						{ "i", 8603 },	-- Thistleshrub Dew
					},
					["coord"] = { 51.8, 28.6, MAP.TANARIS },
					["lvl"] = 44,
				}),
				q(110, {	-- Insect Part Analysis (1/2)
					["sourceQuest"] = 10,	-- The Scrimshank Redemption
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, MAP.TANARIS },
					["lvl"] = 39,
				}),
				q(113, {	-- Insect Part Analysis (2/2)
					["sourceQuest"] = 110,	-- Insect Part Analysis (1/2)
					["providers"] = {
						{ "n", 5594 },	-- Alchemist Pestlezugg <Alchemy Supplies>
						{ "i", 8594 },	-- Insect Analysis Report
					},
					["coord"] = { 50.9, 27.0, MAP.TANARIS },
					["lvl"] = 39,
				}),
				q(3914, {	-- Linken's Sword
					["sourceQuest"] = 3913,	-- A Grave Situation
					["providers"] = {
						{ "o", 148504 },	-- A Conspicuous Gravestone
						{ "i",  11162 },	-- Linken's Superior Sword
					},
					["coord"] = { 53.9, 29.0, MAP.TANARIS },
					["maps"] = { MAP.UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3644, {	-- Membership Card Renewal
					["sourceQuest"] = 3639,	-- Show Your Work
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, MAP.TANARIS },
					["cost"] = { { "g", 20000 } },	-- 2g
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(10791),	-- Goblin Engineer Membership Card
					},
				}),
				q(1691, {	-- More Wastewander Justice
					["sourceQuest"] = 1690,	-- Wastewander Justice
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/8 Wastewander Rogue slain
							["provider"] = { "n", 5615 },	-- Wastewander Rogue
						}),
						objective(2, {	-- 0/6 Wastewander Assassin slain
							["provider"] = { "n", 5623 },	-- Wastewander Assassin
						}),
						objective(3, {	-- 0/10 Wastewander Shadow Mage slain
							["provider"] = { "n", 5617 },	-- Wastewander Shadow Mage
						}),
					},
				}),
				q(2662, {	-- Noggenfogger Elixir
					["sourceQuest"] = 2661,	-- Delivery for Marin
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, MAP.TANARIS },
					["lvl"] = 44,
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				q(82, {	-- Noxious Lair Investigation
					["sourceQuest"] = 992,	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, MAP.TANARIS },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/5 Centipaar Insect Parts
							["provider"] = { "i", 8587 },	-- Centipaar Insect Parts
							["crs"] = {
								5460,	-- Centipaar Sandreaver
								5456,	-- Centipaar Stinger
								5457,	-- Centipaar Swarmer
								5459,	-- Centipaar Tunneler
								5455,	-- Centipaar Wasp
								5458,	-- Centipaar Worker
							},
						}),
					},
				}),
				q(4507, {	-- Pawn Captures Queen
					["sourceQuest"] = 4496,	-- Bungle in the Jungle
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.9, 27.0, MAP.TANARIS },
					["maps"] = { MAP.UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Gorishi Queen Brain
							["providers"] = {
								{ "i",  11835 },	-- Gorishi Queen Brain
								{ "i",  11833 },	-- Gorishi Queen Lure
								{ "o", 174792 },	-- Gorishi Silithid Crystal
							},
							["coord"] = { 44.6, 81.6, MAP.UNGORO_CRATER },
							["cr"] = 10041,	-- Gorishi Hive Queen
						}),
					},
				}),
				q(8365, {	-- Pirate Hats Ahoy!
					["qg"] = 15165,	-- Haughty Modiste
					["coord"] = { 66.6, 22.3, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/20 Southsea Pirate Hat
							["provider"] = { "i", 20519 },	-- Southsea Pirate Hat
							["crs"] = {
								7883,	-- Andre Firebeard
								8203,	-- Kregg Keelhaul
								7857,	-- Southsea Dock Worker
								7856,	-- Southsea Freebooter
								15685,	-- Southsea Kidnapper
								7855,	-- Southsea Pirate
								7858,	-- Southsea Swashbuckler
							},
						}),
					},
				}),
				q(648, {	-- Rescue OOX-17/TN!
					["sourceQuest"] = 351,	-- Find OOX-17/TN!
					["qg"] = 7784,	-- Homing Robot OOX-17/TN
					["coord"] = { 60.2, 64.6, MAP.TANARIS },
					["lvl"] = 43,
					["groups"] = {
						i(9643),	-- Optomatic Deflector
						i(9644),	-- Thermotastic Egg Timer
					},
				}),
				q(864, {	-- Return to Apothecary Zinge
					["sourceQuest"] = 654,	-- Tanaris Field Sampling
					["providers"] = {
						{ "n", 7407 },	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
						{ "i", 8527 },	-- Sealed Field Testing Kit
					},
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(11502),	-- Loreskin Shoulders
						i(9635),	-- Master Apothecary Cape
						i(9634),	-- Skilled Handling Gloves
					},
				}),
				{
					["allianceQuestData"] = q(162, {	-- Rise of the Silithid [A]
						["maps"] = { MAP.DARNASSUS },
					}),
					["hordeQuestData"] = q(32, {	-- Rise of the Silithid [H]
						["maps"] = { MAP.ORGRIMMAR },
					}),
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 113,	-- Insect Part Analysis (2/2)
					["coord"] = { 50.2, 27.5, MAP.TANARIS },
					["lvl"] = 39,
				},
				q(3520, {	-- Screecher Spirits
					["qg"] = 8579,	-- Yeh'kinya
					["coord"] = { 67.0, 22.4, MAP.TANARIS },
					["maps"] = { MAP.FERALAS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Screecher Spirit
							["providers"] = {
								{ "n", 8612 },	-- Screecher Spirit
								{ "i", 10699 },	-- Yeh'kinya's Bramble
							},
							["crs"] = {
								5307,	-- Vale Screecher
								5308,	-- Rogue Vale Screecher
							},
						}),
					},
				}),
				q(2876, {	-- Ship Schedules
					["provider"] = { "i", 9250 },	-- Ship Schedule
					["lvl"] = 40,
				}),
				q(3639, {	-- Show Your Work
					["sourceQuest"] = 3638,	-- The Pledge of Secrecy
					["altQuests"] = {
						3641,	-- Show Your Work
						3643,	-- Show Your Work
					},
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, MAP.TANARIS },
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
				}),
				q(379, {	-- Slake That Thirst
					["sourceQuest"] = 243,	-- Into the Field
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["cost"] = { { "i", 8483, 5 } },	-- Wastewander Water Pouch
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(8366, {	-- Southsea Shakedown
					["qg"] = 7882,	-- Security Chief Bilgewhizzle
					["coord"] = { 67.1, 23.9, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Southsea Pirate slain
							["provider"] = { "n", 7855 },	-- Southsea Pirate
						}),
						objective(2, {	-- 0/10 Southsea Freebooter slain
							["provider"] = { "n", 7856 },	-- Southsea Freebooter
						}),
						objective(3, {	-- 0/10 Southsea Dock Worker slain
							["provider"] = { "n", 7857 },	-- Southsea Dock Worker
						}),
						objective(4, {	-- 0/10 Southsea Swashbuckler slain
							["provider"] = { "n", 7858 },	-- Southsea Swashbuckler
						}),
						i(20640),	-- Southsea Head Bucket
						i(20641),	-- Southsea Mojo Boots
					},
				}),
				q(2641, {	-- Sprinkle's Secret Ingredient
					["sourceQuest"] = 2606,	-- In Good Taste
					["qg"] = 7583,	-- Sprinkle
					["coord"] = { 51.1, 26.9, MAP.TANARIS },
					["maps"] = { MAP.THE_HINTERLANDS },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Violet Tragan
							["providers"] = {
								{ "i",   8526 },	-- Violet Tragan
								{ "o", 141853 },	-- Violet Tragan
							},
							["coord"] = { 40.0, 59.0, MAP.THE_HINTERLANDS },
						}),
					},
				}),
				q(2872, {	-- Stoley's Debt
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["coord"] = { 27.8, 77.0, MAP.STRANGLETHORN_VALE },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2873, {	-- Stoley's Shipment
					["sourceQuest"] = 2872,	-- Stoley's Debt
					["qg"] = 7881,	-- Stoley
					["coord"] = { 67.1, 24.0, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Stoley's Shipment
							["providers"] = {
								{ "i",   9244 },	-- Stoley's Shipment
								{ "o", 142181 },	-- Stolen Cargo
							},
							["coord"] = { 72.2, 46.7, MAP.TANARIS },
						}),
					},
				}),
				q(4504, {	-- Super Sticky
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, MAP.TANARIS },
					["maps"] = { MAP.UNGORO_CRATER },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/12 Super Sticky Tar
							["provider"] = { "i", 11834 },	-- Super Sticky Tar
							["crs"] = {
								6517,	-- Tar Beast
								6527,	-- Tar Creeper
								6519,	-- Tar Lord
								6518,	-- Tar Lurker
							},
						}),
					},
				}),
				q(654, {	-- Tanaris Field Sampling
					["sourceQuests"] = {
						379,	-- Slake That Thirst
						-- 841,	-- Another Power Source?	-- Not required in 30403
					},
					["providers"] = {
						{ "i", 8524 },	-- Model 4711-FTZ Power Source
						{ "i", 8523 },	-- Field Testing Kit
					},
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/8 Acceptable Basilisk Sample
							["providers"] = {
								{ "i", 9440 },	-- Acceptable Basilisk Sample
								{ "i", 9437 },	-- Untested Basilisk Sample
							},
							["crs"] = {
								5419,	-- Glasshide Basilisk
								5420,	-- Glasshide Gazer
								5421,	-- Glasshide Petrifier
							},
						}),
						objective(2, {	-- 0/8 Acceptable Hyena Sample
							["providers"] = {
								{ "i", 9441 },	-- Acceptable Hyena Sample
								{ "i", 9439 },	-- Untested Hyena Sample
							},
							["crs"] = {
								5426,	-- Blisterpaw Hyena
								8208,	-- Murderous Blisterpaw
								5427,	-- Rabid Blisterpaw
								5425,	-- Starving Blisterpaw
							},
						}),
						objective(3, {	-- 0/8 Acceptable Scorpid Sample
							["providers"] = {
								{ "i", 9438 },	-- Acceptable Scorpid Sample
								{ "i", 9442 },	-- Untested Scorpid Sample
							},
							["crs"] = {
								7803,	-- Scorpid Duneburrower
								5424,	-- Scorpid Dunestalker
								5422,	-- Scorpid Hunter
								5423,	-- Scorpid Tail Lasher
							},
						}),
					},
				}),
				q(5863, {	-- The Dunemaul Compound
					["qg"] = 11758,	-- Andi Lynn
					["coord"] = { 52.8, 27.4, MAP.TANARIS },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/10 Dunemaul Brute slain
							["provider"] = { "n", 5474 },	-- Dunemaul Brute
						}),
						objective(2, {	-- 0/10 Dunemaul Enforcer slain
							["provider"] = { "n", 5472 },	-- Dunemaul Enforcer
						}),
						objective(3, {	-- 0/1 Gor'marok the Ravager slain
							["provider"] = { "n", 12046 },	-- Gor'marok the Ravager
						}),
						i(16738),	-- Witherseed Gloves
						i(16739),	-- Rugwood Mantle
					},
				}),
				q(2773, {	-- The Mithril Kid
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = {
						{ "i", 7930, 2 },	-- Heavy Mithril Breastplate
						{ "i", 7927, 1 },	-- Ornate Mithril Gloves
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["lvl"] = 40,
					["groups"] = {
						recipe(9972, {	-- Ornate Mithril Breastplate
						}),
					},
				}),
				q(3638, {	-- The Pledge of Secrecy
					["sourceQuests"] = {
						3526,	-- Goblin Engineering
						3629,	-- Goblin Engineering
						3633,	-- Goblin Engineering
						4181,	-- Goblin Engineering
					},
					["altQuests"] = {
						3640,	-- The Pledge of Secrecy
						3642,	-- The Pledge of Secrecy
					},
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, MAP.TANARIS },
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Nixx's Pledge of Secrecy
							["provider"] = { "i", 11270 },	-- Nixx's Pledge of Secrecy
							["cost"] = { { "i", 10792, 1 } },	-- Nixx's Pledge of Secrecy
						}),
					},
				}),
				q(10, {	-- The Scrimshank Redemption
					["sourceQuest"] = 82,	-- Noxious Lair Investigation
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, MAP.TANARIS },
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Scrimshank's Surveying Gear
							["providers"] = {
								{ "i",   8593 },	-- Scrimshank's Surveying Gear
								{ "o", 144053 },	-- Scrimshank's Surveying Gear
							},
							["coord"] = { 56.0, 71.0, MAP.TANARIS },
						}),
					},
				}),
				q(3444, {	-- The Stone Circle
					["sourceQuests"] = {
						3445,	-- The Sunken Temple [Alliance]
						3380,	-- The Sunken Temple [Horde]
					},
					["qg"] = 7771,	-- Marvon Rivetseeker
					["coord"] = { 52.6, 45.8, MAP.TANARIS },
					["maps"] = { MAP.THE_BARRENS },
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Stone Circle
							["providers"] = {
								{ "i",  10556 },	-- Stone Circle
								{ "o", 149036 },	-- Marvon's Chest
							},
							["coord"] = { 62.5, 38.5, MAP.THE_BARRENS },
						}),
					},
				}),
				q(3445, {	-- The Sunken Temple [Alliance]
					["qg"] = 7900,	-- Angelas Moonbreeze
					["coord"] = { 31.8, 45.6, MAP.FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 46,
				}),
				q(3380, {	-- The Sunken Temple [Horde]
					["qg"] = 8115,	-- Witch Doctor Uzer'i
					["coord"] = { 74.4, 43.4, MAP.FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
				}),
				q(2741, {	-- The Super Egg-O-Matic
					["provider"] = { "o", 142071 },	-- Egg-O-Matic
					["maps"] = { MAP.FERALAS },
					["cost"] = { { "i", 8564, 1 } },	-- Hippogryph Egg
					["lvl"] = 42,
					["groups"] = {
						i(8647, {	-- Egg Crate
							["groups"] = {
								i(8646),	-- Bad Egg
								i(8643),	-- Extraordinary Egg
								i(8644),	-- Fine Egg
								i(8645),	-- Ordinary Egg
							},
						}),
					},
				}),
				q(8893, {	-- The Super Egg-O-Matic
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["provider"] = { "o", 142071 },	-- Egg-O-Matic
					["maps"] = { MAP.FERALAS },
					["cost"] = { { "i", 8564, 1 } },	-- Hippogryph Egg
					["repeatable"] = true,
					["lvl"] = 42,
					["groups"] = {
						i(8647, {	-- Egg Crate
							["groups"] = {
								i(8646),	-- Bad Egg
								i(8643),	-- Extraordinary Egg
								i(8644),	-- Fine Egg
								i(8645),	-- Ordinary Egg
							},
						}),
					},
				}),
				q(2944, {	-- The Super Snapper FX
					["sourceQuest"] = 2941,	-- The Borrower
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, MAP.TANARIS },
					["maps"] = { MAP.THE_HINTERLANDS, MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						objective(1, {	-- 0/1 Snapshot of Gammerita
							["providers"] = {
								{ "i", 9330 },	-- Snapshot of Gammerita
								{ "i", 9328 },	-- Super Snapper FX
							},
							["coord"] = { 79.0, 62.0, MAP.THE_HINTERLANDS },
							["cr"] = 7977,	-- Gammerita
						}),
					},
				}),
				q(2605, {	-- The Thirsty Goblin
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, MAP.TANARIS },
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Laden Dew Gland
							["provider"] = { "i", 8428 },	-- Laden Dew Gland
							["coord"] = { 29.8, 66.8, MAP.TANARIS },
							["cr"] = 5481,	-- Thistleshrub Dew Collector
						}),
					},
				}),
				q(2772, {	-- The World At Your Feet
					["sourceQuest"] = 2764,	-- Galvan's Finest Pupil
					["qg"] = 7804,	-- Trenton Lighthammer
					["coord"] = { 51.4, 28.7, MAP.TANARIS },
					["cost"] = {
						{ "i", 7933, 2 },	-- Heavy Mithril Boots
						{ "i", 7926, 1 },	-- Ornate Mithril Pants
					},
					["requireSkill"] = BLACKSMITHING,
					["lvl"] = 40,
					["groups"] = {
						recipe(9979, {	-- Ornate Mithril Boots
						}),
					},
				}),
				q(3362, {	-- Thistleshrub Valley
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, MAP.TANARIS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/8 Gnarled Thistleshrub slain
							["provider"] = { "n", 5490 },	-- Gnarled Thistleshrub
						}),
						objective(2, {	-- 0/8 Thistleshrub Rootshaper slain
							["provider"] = { "n", 5485 },	-- Thistleshrub Rootshaper
						}),
					},
				}),
				q(1560, {	-- Tooga's Quest
					["qg"] = 5955,	-- Tooga
					["coord"] = { 29.6, 60.6, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Lead Tooga to Torta
							["provider"] = { "n", 6015 },	-- Torta
							["coord"] = { 66.6, 25.6, MAP.TANARIS },
						}),
						i(9638),	-- Chelonian Cuffs
						i(9642),	-- Band of the Great Tortoise
					},
				}),
				q(2864, {	-- Tran'rek
					["qg"] = 773,	-- Krazek
					["coord"] = { 51.6, 26.8, MAP.STRANGLETHORN_VALE },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2875, {	-- WANTED: Andre Firebeard
					["providers"] = {
						{ "o", 150075 },	-- Wanted Poster
						{ "o", 142122 },	-- Wanted Poster
						{ "n", 7882 },	-- Security Chief Bilgewhizzle
					},
					["coords"] = {
						{ 51.9, 27.0, MAP.TANARIS },
						{ 66.8, 22.3, MAP.TANARIS },
						{ 67.0, 23.8, MAP.TANARIS },
					},
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Firebeard's Head
							["provider"] = { "i", 9246 },	-- Firebeard's Head
							["coord"] = { 73.4, 47.0, MAP.TANARIS },
							["cr"] = 7883,	-- Andre Firebeard
						}),
					},
				}),
				q(2781, {	-- WANTED: Caliph Scorpidsting
					["providers"] = {
						{ "o", 150075 },	-- Wanted Poster
						{ "o", 142122 },	-- Wanted Poster
						{ "n", 7407 },	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					},
					["coords"] = {
						{ 51.9, 27.0, MAP.TANARIS },
						{ 66.8, 22.3, MAP.TANARIS },
						{ 52.4, 28.4, MAP.TANARIS },
					},
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Caliph Scorpidsting's Head
							["provider"] = { "i", 8723 },	-- Caliph Scorpidsting's Head
							["coord"] = { 61.6, 35.6, MAP.TANARIS },
							["cr"] = 7847,	-- Caliph Scorpidsting
						}),
					},
				}),
				q(9268, {	-- War at Sea
					["qg"] = 16417,	-- Rumsen Fizzlebrack
					["coord"] = { 50.4, 26.2, MAP.TANARIS },
					["maxReputation"] = { FACTION_GADGETZAN, NEUTRAL },	-- Gadgetzan, must be less than Neutral
					["cost"] = {
						{ "i", 4338, 40 },	-- Mageweave Cloth
						{ "i", 3466, 4 },	-- Strong Flux
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(1690, {	-- Wastewander Justice
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, MAP.TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/10 Wastewander Bandit slain
							["provider"] = { "n", 5618 },	-- Wastewander Bandit
						}),
						objective(2, {	-- 0/10 Wastewander Thief slain
							["provider"] = { "n", 5616 },	-- Wastewander Thief
						}),
					},
				}),
				q(1707, {	-- Water Pouch Bounty
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["cost"] = { { "i", 8483, 5 } },	-- Wastewander Water Pouch
					["lvl"] = 40,
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(1878, {	-- Water Pouch Bounty
					["sourceQuest"] = 1707,	-- Water Pouch Bounty
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["coord"] = { 52.4, 28.4, MAP.TANARIS },
					["cost"] = { { "i", 8483, 5 } },	-- Wastewander Water Pouch
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
			}),
			n(RARES, {
				n(8202, {	-- Cyclok the Mad
					["coords"] = {
						{ 39.0, 54.0, MAP.TANARIS },
						{ 42.0, 54.0, MAP.TANARIS },
						{ 46.0, 66.2, MAP.TANARIS },
						{ 40.6, 72.8, MAP.TANARIS },
					},
				}),
				n(8207, {	-- Emberwing [CATA+] / Greater Firebird
					["coords"] = {
						{ 42.2, 36.4, MAP.TANARIS },
						{ 44.6, 35.6, MAP.TANARIS },
						{ 46.4, 33.0, MAP.TANARIS },
						{ 48.0, 35.6, MAP.TANARIS },
						{ 47.0, 38.8, MAP.TANARIS },
						{ 49.6, 38.4, MAP.TANARIS },
						{ 50.8, 39.0, MAP.TANARIS },
						{ 53.4, 39.4, MAP.TANARIS },
					},
				}),
				n(8205, {	-- Haarka the Ravenous
					["coords"] = {
						{ 53.6, 70.2, MAP.TANARIS },
						{ 54.6, 73.6, MAP.TANARIS },
						{ 56.2, 73.6, MAP.TANARIS },
						{ 57.0, 71.4, MAP.TANARIS },
						{ 57.0, 68.8, MAP.TANARIS },
					},
				}),
				n(8200, {	-- Jin'Zallah the Sandbringer
					["coords"] = {
						{ 37.8, 24.8, MAP.TANARIS },
						{ 42.2, 22.6, MAP.TANARIS },
						{ 40.0, 28.6, MAP.TANARIS },
					},
				}),
				n(8203, {	-- Kregg Keelhaul
					["coords"] = {
						{ 72.8, 46.6, MAP.TANARIS },
						{ 74.8, 47.6, MAP.TANARIS },
						{ 76.0, 45.0, MAP.TANARIS },
					},
				}),
				n(8208, {	-- Murderous Blisterpaw
					["coords"] = {
						{ 48.0, 27.0, MAP.TANARIS },
						{ 48.6, 31.6, MAP.TANARIS },
						{ 50.0, 32.6, MAP.TANARIS },
						{ 52.2, 32.8, MAP.TANARIS },
						{ 55.0, 33.4, MAP.TANARIS },
						{ 56.4, 36.6, MAP.TANARIS },
					},
				}),
				n(8201, {	-- Omgorn the Lost
					["coords"] = {
						{ 38.4, 54.2, MAP.TANARIS },
						{ 38.8, 50.6, MAP.TANARIS },
						{ 40.0, 49.8, MAP.TANARIS },
						{ 42.0, 51.4, MAP.TANARIS },
						{ 43.2, 53.6, MAP.TANARIS },
						{ 42.4, 56.4, MAP.TANARIS },
						{ 39.2, 58.6, MAP.TANARIS },
						{ 37.4, 56.2, MAP.TANARIS },
						{ 39.8, 71.6, MAP.TANARIS },
						{ 41.6, 74.4, MAP.TANARIS },
						{ 46.6, 61.8, MAP.TANARIS },
						{ 47.0, 63.6, MAP.TANARIS },
						{ 48.8, 65.2, MAP.TANARIS },
						{ 46.8, 66.8, MAP.TANARIS },
						{ 44.0, 66.4, MAP.TANARIS },
						{ 45.6, 63.6, MAP.TANARIS },
					},
					["groups"] = {
						i(17055),	-- Changuk Smasher
					},
				}),
				n(8204, {	-- Soriid the Devourer
					["coords"] = {
						{ 31.6, 45.0, MAP.TANARIS },
						{ 32.6, 44.2, MAP.TANARIS },
						{ 34.8, 43.2, MAP.TANARIS },
						{ 34.8, 46.0, MAP.TANARIS },
					},
				}),
				n(8199, {	-- Warleader Krazzilak
					["coords"] = {
						{ 37.0, 24.2, MAP.TANARIS },
						{ 38.6, 24.2, MAP.TANARIS },
						{ 41.0, 27.4, MAP.TANARIS },
						{ 42.6, 22.8, MAP.TANARIS },
						{ 44.2, 24.8, MAP.TANARIS },
					},
				}),
			}),
			n(TREASURES, {
				o(142184, {	-- Captain's Chest
					["description"] = "The Captain's Chest is found in the captains quarters in one of the two ships harboured at Lost Rigger's Cove, and is one of three sources for Southsea Lamp. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers, which are commonly found on Southsea mobs around Lost Rigger's Cove.",
					["coord"] = { 76.5, 45.8, MAP.TANARIS },
					["cost"] = { { "i", 9249, 1 } },	-- 1x Captain's Key
					["groups"] = {
						i(9359, {	-- Southsea Lamp (Patch 9.1.5: Renamed from 'Wirt's Third Leg')
							["description"] =
								"This item have three sources: Pirate's Footlocker, Captain's Chest, and Cuergo's Hidden Treasure.\nPirate's Footlocker is a common drop from mobs on Lost Rigger's Cove.\nCaptain's Chest is found in the captain's quarters in one of the two ships harboured at Lost Rigger's Cove. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers.\nCuergo's Hidden Treasure is rewarded from the quest Cuergo's Gold.",
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(5594, {	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.8, 27.0, MAP.TANARIS },
					["groups"] = {
						i(6057, {	-- Recipe: Nature Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(9303),	-- Recipe: Philosopher's Stone (RECIPE!)
						i(12958),	-- Recipe: Transmute Arcanite (RECIPE!)
						i(9304),	-- Recipe: Transmute Iron to Gold (RECIPE!)
						i(9305, {	-- Recipe: Transmute Mithril to Truesilver (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8131, {	-- Blizrik Buckshot <Gunsmith>
					["coord"] = { 50.8, 27.6, MAP.TANARIS },
					["groups"] = {
						i(18650, {	-- Schematic: EZ-Thro Dynamite II (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8125, {	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 28.0, MAP.TANARIS },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				n(8137, {	-- Gikkix <Fisherman>
					["coord"] = { 66.6, 22.1, MAP.TANARIS },
					["groups"] = {
						i(13942),	-- Recipe: Grilled Squid (RECIPE!)
						i(13945),	-- Recipe: Nightfin Soup (RECIPE!)
						i(13946),	-- Recipe: Poached Sunscale Salmon (RECIPE!)
						i(13939),	-- Recipe: Spotted Yellowtail (RECIPE!)
					},
				}),
				n(7733, {	-- Innkeeper Fizzgrimble <Innkeeper>
					["coord"] = { 52.4, 27.8, MAP.TANARIS },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak (RECIPE!)
					},
				}),
				n(8139, {	-- Jabbey <General Goods>
					["coord"] = { 67.0, 22.0, MAP.TANARIS },
					["groups"] = {
						i(16767, {	-- Recipe: Undermine Clam Chowder (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(14743, {	-- Jhordy Lapforge <Engineer>
					["requireSkill"] = GNOMISH_ENGINEERING,
					["description"] = "Gnomish Engineers can speak to Jhordy to learn the recipe.",
					["coord"] = { 52.17, 27.88, MAP.TANARIS },
					["groups"] = {
						r(23489),	-- Ultrasafe Transporter - Gadgetzan
					},
				}),
				n(5411, {	-- Krinkle Goodsteel <Blacksmithing Supplies>
					["coord"] = { 51.5, 28.8, MAP.TANARIS },
					["groups"] = {
						i(6047, {	-- Plans: Golden Scale Coif (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(7564, {	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, MAP.TANARIS },
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				n(16014, {	-- Mux Manascrambler
					["coord"] = { 52.4, 28.3, MAP.TANARIS },
					["groups"] = {
						n(SPECIAL, {
							["description"] = "Available if a specific Quest (8977/8978) has been completed.",
							["sourceQuests"] = {
								8978,	-- Return to Mokvar
								8977,	-- Return to Deliana
							},
							["sourceQuestNumRequired"] = 1,
							["timeline"] = { ADDED_1_11_1 },
							["u_sqs"] = true,	-- remove the u flag if sourcequests are completed
							["groups"] = {
								i(22115),	-- Extra-Dimensional Ghost Revealer
							},
						}),
					},
				}),
				n(6568, {	-- Vizzklick <Tailoring Supplies>
					["coord"] = { 51.0, 27.3, MAP.TANARIS },
					["groups"] = {
						i(7088, {	-- Pattern: Crimson Silk Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(21358),	-- Pattern: Soul Pouch (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility (RECIPE!)
					["crs"] = {
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8623, {	-- OOX-17/TN Distress Beacon
					["description"] = "This item has a chance to drop from any creature in Tanaris and Zul'Farrak.",
				}),
				i(8399, {	-- Pattern: Tough Scorpid Boots (RECIPE!)
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8397, {	-- Pattern: Tough Scorpid Bracers (RECIPE!)
					["cr"] = 5617,	-- Wastewander Shadow Mage
				}),
				i(8395, {	-- Pattern: Tough Scorpid Breastplate (RECIPE!)
					["cr"] = 5618,	-- Wastewander Bandit
				}),
				i(8398, {	-- Pattern: Tough Scorpid Gloves (RECIPE!)
					["cr"] = 5616,	-- Wastewander Thief
				}),
				i(8402, {	-- Pattern: Tough Scorpid Helm (RECIPE!)
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8401, {	-- Pattern: Tough Scorpid Leggings (RECIPE!)
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8400, {	-- Pattern: Tough Scorpid Shoulders (RECIPE!)
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(9276, {	-- Pirate's Footlocker
					["crs"] = {
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
					["groups"] = {
						i(9250),	-- Ship Schedule
						i(9251),	-- Upper Map Fragment
						i(9253),	-- Middle Map Fragment
						i(9252),	-- Lower Map Fragment
						i(9249, {	-- Captain's Key
							["description"] = "Unlocks the Captain's Chest located in one of the ships harboured at Lost Rigger's Cove.",
						}),
						i(9359, {	-- Southsea Lamp (Patch 9.1.5: Renamed from 'Wirt's Third Leg')
							["description"] = "This item have three sources: Pirate's Footlocker, Captain's Chest, and Cuergo's Hidden Treasure.\nPirate's Footlocker is a common drop from mobs on Lost Rigger's Cove.\nCaptain's Chest is found in the captain's quarters in one of the two ships harboured at Lost Rigger's Cove. It only be opened by a Captain's Key, an uncommon item contained in Pirate's Footlockers.\nCuergo's Hidden Treasure is rewarded from the quest Cuergo's Gold.",
						}),
					},
				}),
				i(8483, {	-- Wastewander Water Pouch
					["crs"] = {
						5623,	-- Wastewander Assassin
						5618,	-- Wastewander Bandit
						5615,	-- Wastewander Rogue
						7805,	-- Wastewander Scofflaw
						5617,	-- Wastewander Shadow Mage
						5616,	-- Wastewander Thief
					},
				}),
			}),
		},
	}),
}));
