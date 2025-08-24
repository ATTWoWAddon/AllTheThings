---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(RARES, {
			n(COMMON_BOSS_DROPS, {
				i(168908, {	-- Blueprint: Experimental Adventurer Augment
					["description"] = "This blueprint will drop from the first rare you kill once you've reached Neutral with the Rustbolt Resistance.",
				}),
				i(168327),	-- Chain Ignitercoil
			}),
			--[[
				R33-DR - 63.4, 57.0 interactive "data analyzer" npc. Possibly part of a puzzle?
			]]--
			-- TODO:: See Hidden Quest Triggers.lua for remaining first kill id's needed
			n(150306, {	-- Drill Rig
				["description"] = "These rares are only available when the Drill Rig is an active construction project. Speak to |Cff00991aWaren Gearheart|r |Cffffffff(73.0, 33.5)|r to see which construction projects are available.\r\rEach rare spawn is accompanied by a specific zonewide announcement. Hover over each rare in the list to see its announcement.",
				["groups"] = {
					n(153200, {	-- Boilburn
						["questID"] = 55857, -- no second questID
						["coord"] = { 51.1, 50.4, MECHAGON },
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-JD41...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(167042),	-- Blueprint: Scrap Trap
							i(169691),	-- Vinyl: Depths of Ulduar
						},
					}),
					n(154739, {	-- Caustic Mechaslime
						["questID"] = 56368,
						["coords"] = {
							{ 66.5, 58.9, MECHAGON },	-- Cave Entrance
							--{ 51.3, 47.8, MECHAGON },
						},
						["isDaily"] = true,
						["description"] = "Spawning when you this message in chat \"|cffe1780cDrill Rig DR-CC73...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(169170),	-- Blueprint: Utility Mechanoclaw
						},
					}),
					n(150342, {	-- Earthbreaker Gulroc
						["questID"] = 55814,
						["coord"] = { 63.9, 24.4, MECHAGON },
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-TR35...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(167042),	-- Blueprint: Scrap Trap
						},
					}),
					n(153205, {	-- Gemicide
						["questID"] = 55855,
						["coord"] = { 57.6, 69.2, MECHAGON },
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-JD99...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(169691),	-- Vinyl: Depths of Ulduar
						},
					}),
					n(154701, {	-- Gorged Gear-Cruncher
						["questID"] = 56367,
						["coords"] = {
							{ 73.2, 54.2, MECHAGON },	-- Cave Entrance
							--{ 51.3, 47.8, MECHAGON },
						},
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-CC61...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(167846),	-- Blueprint: Mechano-Treat
						},
					}),
					n(153206, {	-- Ol' Big Tusk
						["questID"] = 55853,
						["coord"] = { 55.6, 39.5, MECHAGON },
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-TR28...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(167846),	-- Blueprint: Mechano-Treat
							i(169691),	-- Vinyl: Depths of Ulduar
							i(170466),	-- Junkyard Motivator
						},
					}),
					n(152113, {	-- The Kleptoboss
						["questID"] = 55858,
						["coords"] = {
							{ 68.0, 48.0, MECHAGON },	-- Cave Entrance
							--{ 51.3, 47.8, MECHAGON },
						},
						["isDaily"] = true,
						["description"] = "Spawning when you see this message in chat \"|cffe1780cDrill Rig DR-CC88...|r,\" or activate the |cFFFFD700Drill Rig|r. Only available when the |cFFFFD700Drill Rig|r is a construction project.",
						["groups"] = {
							i(169886),	-- Spraybot 0D (PET!)
						},
					}),
				},
			}),
			n(151934, {	-- Arachnoid Harvester
				["description"] = "Both versions of Arachnoid Harvester (the current timeline and alternate timeline) drop the same loot and share a daily lockout. You can use a Personal Time Displacer to travel to the alternate timeline if Chromie is not in Rustbolt.",
				["questID"] = 55512,
				["isDaily"] = true,
				["coord"] = { 52.6, 41.0, MECHAGON },
				["crs"] = { 154342 },	-- Arachnoid Harvester (alt-time)
				["groups"] = {
					i(168823),	-- Rusty Mechanocrawler (MOUNT!)
				},
			}),
			n(150394, {	-- Armored Vaultbot
				["cr"] = 154968,	-- future ID
				["questID"] = 55546,
				["isDaily"] = true,
				["description"] = "Kite it to the large magnet at |cFFFFD700Bondo's Scrapyard|r to make it vulnerable to kill it, or use the |cFFFFD700Armored Vaultbot Key|r to unlock it BEFORE it is engaged in combat. If you've time-traveled to the future, you must use a key to unlock it.",
				["cost"] = { { "i", 167062, 1 } },	-- 1x Armored Vaultbot Key
				["coords"] = {
					{ 53.6, 46.4, MECHAGON },
					{ 53.8, 49.4, MECHAGON },
					{ 53.2, 49.7, MECHAGON },
				},
				["groups"] = {
					o(322020, {	-- Pile of Coins
						i(167843),	-- Blueprint: Vaultbot Key
						i(167796),	-- Paint Vial: Mechagon Gold
						i(170072),	-- Armored Vaultbot (PET!)
					}),
				},
			}),
			n(151308, {	-- Boggac Skullbash
				["questID"] = 55539,
				["coord"] = { 55.4, 25.9, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(169688),	-- Vinyl: Gnomeregan Forever
				},
			}),
			n(152001, {	-- Bonepicker
				["questID"] = 55537,
				["coord"] = { 65.8, 22.9, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(169392),	-- Bonebiter (PET!)
					i(167846),	-- Blueprint: Mechano-Treat
				},
			}),
			n(152569, {	-- Crazed Trogg
				["questID"] = 55812,
				["coord"] = { 82.3, 21.0, MECHAGON },
				["isDaily"] = true,
				["description"] = "The trogg will yell a specific color. Go to Bondo's Yard |cFFFFFFFF(63.3, 42.5)|r to paint yourself that color, then return to his cave.",
				["crs"] = {
					149847,	-- Crazed Trogg
					152570,	-- Crazed Trogg
				},
				["groups"] = {
					i(169674),	-- Green Paint Filled Bladder
					i(167792),	-- Paint Vial: Fel Mint Green
					i(169169),	-- Blueprint: Blue Spraybot
					i(169168),	-- Blueprint: Green Spraybot
					i(169167),	-- Blueprint: Orange Spraybot
					i(167793),	-- Paint Vial: Overload Orange
				},
			}),
			n(151569, {	-- Deepwater Maw
				["cr"] = 151558,	-- Hundred-Fathom Lure
				["questID"] = 55514,
				["coord"] = { 35.3, 43.0, MECHAGON },
				["isDaily"] = true,
				["description"] = "Must complete the |cFFFFD700Let's Fish!|r questline to spawn Deepwater Maw. Summoning requires a |cffa335eeHundred-Fathom Lure|r.",
				["groups"] = {
					i(168804),	-- Powered Piscine Procurement Pole
					i(167836),	-- Blueprint: Canned Minnows
				},
			}),
			n(155060, {	-- Doppel Ganger
				["description"] = "This rare only spawns when the |cFFFFD700Cogfrenzy's Construction Frenzy|r quest is active and requires three |cFF0070ddPressure Relief Valves|r to summon.",
				["questID"] = 56419,
				["coord"] = { 81.0, 20.2, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168631),	-- Metal Detector
				},
			}),
			n(154153, {	-- Enforcer KX-T57
				["questID"] = 56207,
				["coord"] = { 55.4, 55.0, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(170466),	-- Junkyard Motivator
					i(170470),	-- Reinforced Grease Deflector
					i(170467),	-- Whirring Chainblade
					i(170468),	-- Supervolt Zapper
					i(169174),	-- Blueprint: Rustbolt Pocket Turret
				},
			}),
			n(151202, {	-- Foul Manifestation
				["questID"] = 55513,
				["coord"] = { 65.7, 51.7, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(167871),	-- Blueprint: G99.99 Landshark
				},
			}),
			n(151884, {	-- Fungarian Furor
				["description"] = "When the |cFFFFD700Aid From Nordrassil|r quest is active, fly around the quest area and look for a mushroom with the NPC ID 135497. Clicking on that mushroom will spawn the rare. If no mushroom with that ID is up, you'll need to click on some other ones to try to get the correct one to respawn.",
				["questID"] = 55367,
				["isDaily"] = true,
				["coord"] = { 44.5, 41.1, MECHAGON },	-- center of quest area / area with mushrooms
				["crs"] = { 135497 },	-- Mushroom that spawns the rare
				["groups"] = {
					i(169379),	-- Snowsoft Nibbler
					i(167793),	-- Paint Vial: Overload Orange
				},
			}),
			n(153228, {	-- Gear Checker Cogstar -- possibly 154184?
				["questID"] = 55852,
				["isDaily"] = true,
				["description"] = "Random spawn when you kill |cFFFFD700Upgraded Sentries|r.",
				["groups"] = {
					i(167847),	-- Blueprint: Ultrasafe Transporter: Mechagon
					i(170467),	-- Whirring Chainblade
				},
			}),
			n(151684, {	-- Jawbreaker
				["questID"] = 55399,
				["coord"] = { 77.3, 44.8, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168752),	-- Omnipurpose Efficient Logic Board
				},
			}),
			n(152007, {	-- Killsaw
				["description"] = "This rare doesn't spawn on days when the Venture Co. invades the Fleeting Forest.",
				["questID"] = 55369,
				["coords"] = {
					{ 42.6, 48.7, MECHAGON },
					{ 41.0, 28.0, MECHAGON },
				},
				["isDaily"] = true,
				["groups"] = {
					i(167931),	-- Mechagonian Sawblades (TOY!)
				},
			}),
			n(151933, {	-- Malfunctioning Beastbot
				["questID"] = 55544,
				["coord"] = { 60.7, 42.2, MECHAGON },
				["isDaily"] = true,
				["description"] = "Requires a |cFFFFD700Beastbot Powerpack|r.",
				["groups"] = {
					i(169173),	-- Blueprint: Anti-Gravity Pack
					i(169382),	-- Lost Robogrip (PET!)
					i(169848),	-- Azeroth Mini Pack: Bondo's Yard
				},
			}),
			n(151124, {	-- Mechagonian Nullifier
				["questID"] = 55207,
				["coord"] = { 56.9, 52.1, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168490),	-- Blueprint: Protocol Transference Device
					i(169688),	-- Vinyl: Gnomeregan Forever
				},
			}),
			n(151672, {	-- Mecharantula
				["questID"] = 55386,
				["coord"] = { 88.3, 20.6, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(169393),	-- Arachnoid Skitterbot (PET!)
				},
			}),
			n(151627, {	-- Mr. Fixthis
				["questID"] = 55859,
				["coord"] = { 61.0, 61.4, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168248),	-- Blueprint: BAWLD-371
					i(170467),	-- Whirring Chainblade
				},
			}),
			n(151296, {	-- OOX-Avenger/MG
				["description"] = "This rare only spawns when the |cFFFFD700My Chickens are Not for Eating!|r quest is active. Finding and killing OOX-Fleetfoot/MG will spawn the rare, but you'll probably need a group to do it.",
				["questID"] = 55515,
				["coord"] = { 57.0, 39.8, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168492),	-- Blueprint: Emergency Rocket Chicken
				},
			}),
			n(152764, {	-- Oxidized Leachbeast
				["coord"] = { 55.8, 60.6, MECHAGON },
				["questID"] = 55856,
				["isDaily"] = true,
				["groups"] = {
					i(170273),	-- Oxidizied Refuse Remover
					i(167794),	-- Paint Vial: Lemonade Steel
				},
			}),
			n(151702, {	-- Paol Pondwader
				["questID"] = 55405,
				["coord"] = { 23.0, 68.4, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(170468),	-- Supervolt Zapper
				},
			}),
			n(150448, {	-- Reclamaton Rig
			--	TODO: figure out questIDs for:
				--	hardmode rig (irradiated box of assorted parts)
				--	irradiated undercoat usage (may not have associated quest and may just be based on the shirt's timer)
			--	verify that epic recycling requisition is daily. possibly repeatable?
			--	if recycling requisitions are separate based on whether you get the items from the scrapyard or the reclamation rig, we should probably move the quests to the NYI file or something so that one doesn't check off the other!  (or mark them repeatable or whatever)
			--	possibly attach just the 'box of assorted parts' questID to the overall header instead of the box itself?
				["modelScale"] = 4.2,
				["cr"] = 150451,	-- Reclamation Rig (before being built)
				["questID"] = 57132,	-- normal
			--	["altQuests"] = { 55848 },	-- hardmode
				["isDaily"] = true,	-- for some reason with the quests attached it won't reset after dailies
				["coord"] = { 70.0, 61.5, MECHAGON },
				["groups"] = {
					i(168394, {	-- Box of Assorted Parts
						["questID"] = 55847,
						["isDaily"] = true,
						["groups"] = {
							i(169396),	-- Echoing Oozeling (PET!)
							i(169850, {	-- Azeroth Mini Pack: Mechagon
								["sym"] = {{"fill"}},	-- fill with sourced content
							}),
							i(169692),	-- Vinyl: Triumph of Gnomeregan
						},
					}),
					i(168395, {	-- Irradiated Box of Assorted Parts
						["description"] = "During the Reclamation Rig event, use the Supercollider on each Irradiated Elemental to make them unstable. If you complete the hardmode event correctly, you'll face three Unstable Irradiated Golems at the end of the encounter.",
						["questID"] = 55794,	-- popped immediately upon death of final golems; shift+clicking to refresh afterwards also popped 55848. this item was the only thing i received from HM rig. it's possible that 55848 is the "item received" quest and that 55794 is the "rig done for the first time today" quest when hardmode is active (or vice versa!)... if we could isolate the non-hardmode "rig is done for the first time today" quest then we could maybe attach both with altQuests. WHY IS QUEST TRACKING SO COMPLICATED. @BLIZZARD ANSWER FOR YOUR CRIMES
						["isDaily"] = true,
						["groups"] = {
							i(168495),	-- Blueprint: Rustbolt Requisitions
							i(169396),	-- Echoing Oozeling (PET!)
							i(169692),	-- Vinyl: Triumph of Gnomeregan
						},
					}),
					i(169878, {	-- Irradiated Undercoat
						["description"] = "This shirt can drop from mobs during the Reclamation Rig event. Equip it, collect 100 Unstable Isotopes from attacking more of the event mobs, and then use the shirt to absorb the isotopes. You can only absorb isotopes once every 24 hours, and you'll get the pet after you use all five of the shirt's charges.",
						["groups"] = {
							i(169879),	-- Irradiated Elementaling (PET!)
							i(169877),	-- Unstable Isotopes
						},
					}),
					i(168264, {["sym"]={{"fill"}}}),	-- Recycling Requisition (Green)
					i(168266, {["sym"]={{"fill"}}}),	-- Recycling Requisition (Epic)
				},
			}),
			n(150575, {	-- Rumblerocks
				["questID"] = 55368,
				["coord"] = { 39.9, 53.2, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168001),	-- Paint Vial: Big-ol Bronze
				},
			}),
			n(152182, {	-- Rustfeather
				["questID"] = 55811,
				["coord"] = { 65.6, 78.3, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168370),	-- Junkheap Drifter (MOUNT!)
					i(169173),	-- Blueprint: Anti-Gravity Pack
				},
			}),
			n(155583, {	-- Scrapclaw
				["questID"] = 56737,
				["coord"] = { 82.3, 77.8, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168490),	-- Blueprint: Protocol Transference Device
					i(170470),	-- Reinforced Grease Deflector
				},
			}),
			n(150937, {	-- Seaspit
				["questID"] = 55545,
				["coord"] = { 19.3, 80.4, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168063),	-- Blueprint: Rustbolt Kegerator
				},
			}),
			n(153000, {	-- Sparkqueen P'Emp
				["description"] = "This rare only spawns when the |cFFFFD700Bugs, Lots of 'Em!|r quest is active. When it spawns, Razak Ironsides will yell, \"|cFFff4040Wait till that bug gets close, then blow it to pieces!  I want nothing left.|r  Kill it before it gets close to Razak, or he'll kill it and you won't get loot or credit.",
				["questID"] = 55810,
				["coord"] = { 83.8, 22.0, MECHAGON },
				["isDaily"] = true,
			}),
			n(153226, {	-- Steel Singer Freza
				["questID"] = 55854,
				["coord"] = { 25.1, 77.4, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168062),	-- Blueprint: Rustbolt Gramophone
					i(169689),	-- Vinyl: Mimiron's Brainstorm
					i(169692),	-- Vinyl: Triumph of Gnomeregan
					i(169690),	-- Vinyl: Battle of Gnomeregan
				},
			}),
			n(154225, {	-- The Rusty Prince
				["questID"] = 56182,
				["coord"] = { 57.2, 58.6, MECHAGON },
				["isDaily"] = true,
				["description"] = "Does not spawn when the daily quest |cFFFFD700The Other Place|r is active, must use the Personal Time Displacer to access Alt Time.",
				["groups"] = {
					i(169347),	-- Judgment of Mechagon (TOY!)
					i(170467),	-- Whirring Chainblade
				},
			}),
			n(151625, {	-- The Scrap King
				["questID"] = 55364,
				["coord"] = { 72.3, 49.8, MECHAGON },
				["isDaily"] = true,
				["crs"] = {
					151623,	-- The Scrap King (while mounted on goretusk)
				},
				["groups"] = {
					i(167846),	-- Blueprint: Mechano-Treat
					i(168435),	-- Remote Circuit Bypasser
					i(170467),	-- Whirring Chainblade
				},
			}),
			n(151940, {	-- Uncle T'Rogg
				["questID"] = 55538,
				["coord"] = { 57.3, 20.7, MECHAGON },
				["isDaily"] = true,
				["groups"] = {
					i(168749),	-- Performant Effective Logic Board
				},
			}),
		}),
		n(REWARDS, {
			container(169848, {	-- Azeroth Mini Pack: Bondo's Yard
				i(169843),	-- Azeroth Mini: Cork Stuttguard
				i(169842),	-- Azeroth Mini: Roadtrogg
				i(169840),	-- Azeroth Mini: Gazlowe
				i(169795),	-- Azeroth Mini: Bondo Bigblock
				i(169849),	-- Azeroth Mini: Naeno Megacrash
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(KUL_TIRAS, {
		m(MECHAGON, {
			n(RARES, {
				-- First rare kill
				q(55913),	-- Arachnoid Harvester
				q(56996),	-- Armored Vaultbot
				q(56997),	-- Armored Vaultbot (Alternate timeline)
				-- q(TODO),	-- Boilburn (maybe no ID)
				q(55920),	-- Boggac Skullbash
				q(55919),	-- Bonepicker
				-- q(TODO),	-- Caustic Mechaslime
				q(55927),	-- Crazed Trogg
				q(55917),	-- Deepwater Maw
				-- q(55544),	-- Doppel Ganger
				q(55932),	-- Earthbreaker Gulroc
				q(56994),	-- Enforcer KX-T57
				q(55916),	-- Foul Manifestation
				q(55915),	-- Fungarian Furor
				q(55934),	-- Gear Checker Cogstar
				q(55929),	-- Gemicide
				-- q(TODO),	-- Gorged Gear-Cruncher
				q(55910),	-- Jawbreaker
				q(55914),	-- Killsaw
				q(55926),	-- Malfunctioning Beastbot
				q(55907),	-- Mechagonian Nullifier
				q(55909),	-- Mecharantula
				q(55935),	-- Mr. Fixthis
				q(55928),	-- Ol' Big Tusk
				q(55918),	-- OOX-Avenger/MG
				q(55936),	-- Oxidized Leachbest
				q(55911),	-- Paol Pondwader
				q(55912),	-- Rumblerocks
				q(55924),	-- Rustfeather
				q(57084),	-- Scrapclaw
				q(55922),	-- Seaspit
				q(55923),	-- Sparkqueen P'Emp
				q(55933),	-- Steel Singer Freza
				q(55931),	-- The Kleptoboss
				q(56995),	-- The Rusty Prince
				q(55908),	-- The Scrap King
				q(55921),	-- Uncle T'Rogg
			}),
		}),
	}),
})));
