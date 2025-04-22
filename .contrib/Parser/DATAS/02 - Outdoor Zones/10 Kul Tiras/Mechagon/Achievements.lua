---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(ACHIEVEMENTS, {
			ach(13790, {	-- Armed for Action
				["description"] = "Each criteria can be earned by creating weapons with Rocket-Chief Fuselage during the |cFFffd200Toys for Destruction|r daily.",
			}),
			ach(13513, {	-- Available in Eight Colors (unlocks paint: Battletorn Blue)
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13472),	-- Deep Pockets
			ach(13473, {	-- Diversed Investments
				crit(44303),	-- Flame Turret
				crit(44304),	-- Drill Rig
				crit(44305),	-- Charging Station
				crit(44307),	-- Rustbolt Armory
				crit(44308),	-- Reclamation Rig
			}),
			explorationAch(13776),	-- Explore Mechagon
			ach(13482),	-- Head Financier of Mechagon
			ach(13555, {	-- Junkyard Tinkmaster
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {
					{"meta_achievement",
						13476,	-- Junkyard Tinkerer
						13482,	-- Head Financier of Mechagon
					}},
				["g"] = {
					title(403),	-- Junkyard
				},
			}),
			ach(13477),	-- Junkyard Apprentice
			ach(13479, {	-- Junkyard Architect
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13478, {	-- Junkyard Collector
				["sym"] = {{"partial_achievement",13479}},	-- Junkyard Architect
			}),
			ach(13474),	-- Junkyard Machinist
			ach(13686, {	-- Junkyard Melomaniac
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13475),	-- Junkyard Scavenger
			ach(13476, {	-- Junkyard Tinkerer
				["_noautomation"] = true,
			}),
			ach(13791, {	-- Making the Mount
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13541, {	-- Mecha-Done
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {
					{"meta_achievement",
						13553,	-- The Mechagonian Threat (A)
						13700,	-- The Mechagonian Threat (H)
						13556,	-- Outside Influences
						13513,	-- Available in Eight Colors
						13791,	-- Making the Mount
						13470,	-- Rest In Pistons
						13477,	-- Junkyard Apprentice
						13479,	-- Junkyard Architect
						13474,	-- Junkyard Machinist
						13686,	-- Junkyard Melomaniac
						13790,	-- Armed for Action
					}},
				["g"] = {
					i(168329),	-- Mechacycle Model W (MOUNT!)
				},
			}),
			petbattle(ach(13693, {	-- Mecha-Safari
				crit(45579),	-- Junkheap Roach
				crit(45580),	-- Fleeting Frog
				crit(45581),	-- Mechagon Marmot
				crit(45582),	-- Motorized Croaker
				crit(45583),	-- Scrapyard Tunneler
				crit(45584),	-- Duskytooth Snooter
				crit(45585),	-- Rustbolt Clucker
				crit(45586),	-- Rustyroot Snooter
				crit(45587),	-- Yellow Junkhopper
				crit(45588),	-- Experimental Roach
				crit(45589),	-- Specimen 97
				crit(45590),	-- Malfunctioning Microbot
			})),
			ach(13556, {	-- Outside Influences
				crit(45246, {	-- Aid from Nordrassil
					["_quests"] = { 55463 },	-- Aid from Nordrassil
				}),
				crit(45248, {	-- One Gnome's Trash
					["_quests"] = { 55575 },	-- One Gnome's Trash
				}),
				crit(45249, {	-- Clues Abound
					["_quests"] = { 55658 },	-- Clues Abound
				}),
				crit(45250, {	-- A Historical Mess
					["_quests"] = { 55672 },	-- A Historical Mess
				}),
				crit(45251, {	-- A Growing Mystery
					["_quests"] = { 55688 },	-- A Growing Mystery
				}),
				crit(45252, {	-- Time for Heroics
					["_quests"] = { 55717 },	-- Time for Heroics
				}),
				crit(45253, {	-- Strange Discovery
					["_quests"] = { 55718 },	-- Strange Discovery
				}),
				crit(45258, {	-- Deck 'Em
					["_quests"] = { 56049 },	-- Deck 'Em
				}),
				crit(45255, {	-- Bugs, Lots of 'Em!
					["_quests"] = { 55765 },	-- Bugs, Lots of 'Em!
				}),
				crit(45633, {	-- Pirates? I hate Those Guys!
					["_quests"] = { 56469 },	-- Pirates? I hate Those Guys!
				}),
				crit(45256, {	-- Rico's Rescue
					["_quests"] = { 55885 },	-- Rico's Rescue
				}),
				crit(45257, {	-- The Other Place
					["_quests"] = { 55816 },	-- The Other Place
				}),
				crit(45259, {	-- The Final Act
					["_quests"] = { 56053 },	-- The Final Act
				}),
				crit(45263, {	-- Abduction Reduction
					["_quests"] = { 55905 },	-- Abduction Reduction
				}),
				crit(45264, {	-- Aim High
					["_quests"] = { 55813 },	-- Aim High
				}),
				crit(45368, {	-- Pirates, Sea Monsters, Robots
					["_quests"] = { 56184 },	-- Pirates, Sea Monsters, Robots
				}),
				crit(45369, {	-- Go For The Gold
					["_quests"] = { 56301 },	-- Go For The Gold
				}),
				crit(45370, {	-- The Family Jewels
					["_quests"] = { 56306 },	-- The Family Jewels
				}),
				crit(45371, {	-- Adapt, Improve, Overcome!
					["_quests"] = { 56142 },	-- Adapt, Improve, Overcome!
				}),
				crit(45403, {	-- Toys for Destruction
					["_quests"] = { 54090 },	-- Toys for Destruction
				}),
				crit(45405, {	-- Playtime's Over
					["_quests"] = { 55528 },	-- Playtime's Over
				}),
				crit(45406, {	-- Battle Tested
					["_quests"] = { 56355 },	-- Battle Tested
				}),
				crit(45409, {	-- Be Kind, Rewind
					["_quests"] = { 56365 },	-- Be Kind, Rewind
				}),
				crit(45609, {	-- My Chicken are Not For Eating!
					["_quests"] = { 56523 },	-- My Chicken are Not For Eating!
				}),
				crit(45620, {	-- Off-the-Books Brawlin'
					["_quests"] = { 56552 },	-- Off-the-Books Brawlin' (H)
				}),
				crit(45621, {	-- Off-the-Books Brawlin'
					["_quests"] = { 56558 },	-- Off-the-Books Brawlin' (A)
				}),
				crit(45644, {	-- Discs of Norgannon
					["_quests"] = { 56410 },	-- Discs of Norgannon
				}),
				crit(45643, {	-- Toys Like Us
					["_quests"] = { 56572 },	-- Toys Like Us
				}),
				crit(45645, {	-- Waste Not
					["_quests"] = { 56508 },	-- Waste Not
				}),
				crit(45646, {	-- Taking The Air Out
					["_quests"] = { 56501 },	-- Taking The Air Out
				}),
				crit(45647, {	-- Unprofitable Ventures
					["_quests"] = { 56471 },	-- Unprofitable Ventures
				}),
				crit(45648, {	-- A Direct Approach
					["_quests"] = { 56493 },	-- A Direct Approach
				}),
				crit(45694, {	-- Cogfrenzy's Construction Frenzy
					["_quests"] = { 56405 },	-- Cogfrenzy's Construction Frenzy
				}),
			}),
			ach(13470, {	-- Rest In Pistons
				crit(45117, {	-- Mechagnoian Nullfier
					["_npcs"] = { 151124 },
				}),
				crit(45118, {	-- The Scrap King
					["_npcs"] = { 151625 },
				}),
				crit(45119, {	-- Mecharantuala
					["_npcs"] = { 151672 },
				}),
				crit(45121, {	-- Jawbreaker
					["_npcs"] = { 151684 },
				}),
				crit(45122, {	-- Paol Pondwader
					["_npcs"] = { 151702 },
				}),
				crit(45123, {	-- Rumblerocks
					["_npcs"] = { 150575 },
				}),
				crit(45124, {	-- Arachnoid Harvester
					["_npcs"] = { 151934 },
				}),
				crit(45125,	{	-- Killsaw
					["_npcs"] = { 152007 },
				}),
				crit(45126,	{	-- Fungarian Furor
					["_npcs"] = { 151884 },
				}),
				crit(45127, {	-- Foul Manifestations
					["_npcs"] = { 151202 },
				}),
				crit(45128, {	-- Deepwater Maw
					["_npcs"] = { 151569 },
				}),
				crit(45129, {	-- OOX-Avenger/MG
					["_npcs"] = { 151296 },
				}),
				crit(45130, {	-- Bonepicker
					["_npcs"] = { 152001 },
				}),
				crit(45131, {	-- Boggac Skullbash
					["_npcs"] = { 151308 },
				}),
				crit(45132, {	-- Uncle T'Rogg
					["_npcs"] = { 151940 },
				}),
				crit(45133, {	-- Seaspit
					["_npcs"] = { 150937 },
				}),
				crit(45134, {	-- Sparkqueen P'Emp
					["_npcs"] = { 153000 },
				}),
				crit(45135, {	-- Rustfeather
					["_npcs"] = { 152182 },
				}),
				crit(45136, {	-- Malfunctioning Beasetbot
					["_npcs"] = { 151933 },
				}),
				crit(45137, {	-- Crazed Trogg
					["_npcs"] = { 152569 },
				}),
				crit(45138, {	-- Earthbreaker Gulroc
					["_npcs"] = { 150342 },
				}),
				crit(45145, {	-- Ol' Big Tusk
					["_npcs"] = { 153206 },
				}),
				crit(45146, {	-- Gemicide
					["_npcs"] = { 153205 },
				}),
				crit(45157, {	-- Oxidized Leachbeast
					["_npcs"] = { 152764 },
				}),
				crit(45152, {	-- Boilburn
					["_npcs"] = { 153200 },
				}),
				crit(45153, {	-- The Kleptoboss
					["_npcs"] = { 152113 },
				}),
				crit(45154, {	-- Steel Singer Freza
					["_npcs"] = { 153226 },
				}),
				crit(45155, {	-- Gear Checker Cogstar
					["_npcs"] = { 153228 },
				}),
				crit(45156, {	-- Mr. Fixthis
					["_npcs"] = { 151627 },
				}),
				crit(45158, {	-- Vaultbot
					["_npcs"] = { 150394 },	-- Armored Vaultbot
				}),
				crit(45373, {	-- Enforcer KX-T57
					["_npcs"] = { 154153 },
				}),
				crit(45374, {	-- The Rusty Prince
					["_npcs"] = { 154225 },
				}),
				crit(45410, {	-- Gorged Gear-Cruncher
					["_npcs"] = { 154701 },
				}),
				crit(45411, {	-- Caustic Mechaslime
					["_npcs"] = { 154739 },
				}),
				crit(45433, {	-- The Doppel Gang
					["_npcs"] = { 155060 },
				}),
				crit(45691, {	-- Scrapclaw
					["_npcs"] = { 155583 },
				}),
			}),
			ach(13557),		-- Rustbolt Rebellion
			ach(13553, {	-- The Mechagonian Threat (A)
				["sourceQuests"] = { 55609 },	-- Operation: Mechagon - The Mechoriginator
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(45695, {	-- The Legend of Mechagon
						["_quests"] = { 54088 },	-- The Legend of Mechagon
					}),
					crit(45697, {	-- Looking Inside
						["_quests"] = { 55040 },	-- Looking Inside
					}),
					crit(45699, {	-- Let's Get it Started
						["_quests"] = { 54945 },	-- Let's Get it Started
					}),
					crit(45701, {	-- You Must be This Height
						["_quests"] = { 54087 },	-- You Must be This Height
					}),
					crit(45702, {	-- Report to Gila
						["_quests"] = { 54946 },	-- Report to Gila
					}),
					crit(45703, {	-- A Small Team
						["_quests"] = { 54947 },	-- A Small Team
					}),
					crit(45704, {	-- The Start of Something Bigger
						["_quests"] = { 54992 },	-- The Start of Something Bigger
					}),
					crit(45705, {	-- Princely Visit
						["_quests"] = { 55645 },	-- Princely Visit
					}),
					crit(45706, {	-- The Resistance Needs YOU!
						["_quests"] = { 55729 },	-- The Resistance Needs YOU!
					}),
					crit(45707, {	-- Rescuing the Resistance
						["_quests"] = { 55730 },	-- Rescuing the Resistance
					}),
					crit(45708, {	-- My Father's Armies
						["_quests"] = { 55731 },	-- My Father's Armies
					}),
					crit(45709, {	-- We Can Fix It
						["_quests"] = { 55995 },	-- We Can Fix It
					}),
					crit(45710, {	-- Drill Rig Construction
						["_quests"] = { 55734 },	-- Drill Rig Construction
					}),
					crit(45711, {	-- Send My Father a Message
						["_quests"] = { 55096 },	-- Send My Father a Message
					}),
					crit(45712, {	-- Welcome to the Resistance
						["_quests"] = { 55736 },	-- Welcome to the Resistance
					}),
					crit(45713, {	-- Operation: Mechagon - The Mechoriginator
						["_quests"] = { 55609 },	-- Operation: Mechagon - The Mechoriginator
					}),
				},
			}),
			ach(13700, {	-- The Mechagonian Threat (H)
				["sourceQuests"] = { 55609 },	-- Operation: Mechagon - The Mechoriginator
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(46294, {	-- The Legend of Mechagon
						["_quests"] = { 55646 },	-- The Legend of Mechagon
					}),
					crit(46304, {	-- A Quick Ear Hustle
						["_quests"] = { 55647 },	-- A Quick Ear Hustle
					}),
					crit(46305, {	-- This is Our Vault Now
						["_quests"] = { 55648 },	-- This is Our Vault Now
					}),
					crit(46306, {	-- Let's Get it Started
						["_quests"] = { 55630 },	-- Let's Get it Started
					}),
					crit(46307, {	-- You Must be This Height
						["_quests"] = { 55632 },	-- You Must be This Height
					}),
					crit(46308, {	-- Machinations for Mechagon
						["_quests"] = { 55649 },	-- Machinations for Mechagon
					}),
					crit(46309, {	-- Only the Best Will Do
						["_quests"] = { 55650 },	-- Only the Best Will Do
					}),
					crit(46310, {	-- To Mechagon!
						["_quests"] = { 55651 },	-- To Mechagon!
					}),
					crit(46311, {	-- Prospectus Bay
						["_quests"] = { 55652 },	-- Prospectus Bay
					}),
					crit(46312, {	-- We Come in Peace... and Profit
						["_quests"] = { 55685 },	-- We Come in Peace... and Profit
					}),
					crit(45706, {	-- The Resistance Needs YOU!
						["_quests"] = { 55729 },	-- The Resistance Needs YOU!
					}),
					crit(45707, {	-- Rescuing the Resistance
						["_quests"] = { 55730 },	-- Rescuing the Resistance
					}),
					crit(45708, {	-- My Father's Armies
						["_quests"] = { 55731 },	-- My Father's Armies
					}),
					crit(45709, {	-- We Can Fix It
						["_quests"] = { 55995 },	-- We Can Fix It
					}),
					crit(45710, {	-- Drill Rig Construction
						["_quests"] = { 55734 },	-- Drill Rig Construction
					}),
					crit(45711, {	-- Send My Father a Message
						["_quests"] = { 55096 },	-- Send My Father a Message
					}),
					crit(45712, {	-- Welcome to the Resistance
						["_quests"] = { 55736 },	-- Welcome to the Resistance
					}),
					crit(45713, {	-- Operation: Mechagon - The Mechoriginator
						["_quests"] = { 55609 },	-- Operation: Mechagon - The Mechoriginator
					}),
				},
			}),
			petbattle(ach(13625, {	-- Mighty Minions of Mechagon
				crit(45459, {	-- Gnomefeaster
					["crs"] = { 154922 },	-- Gnomefeaster
					["coord"] = { 64.7, 64.6, MECHAGON },
				}),
				crit(45460, {	-- Sputtertube
					["crs"] = { 154923 },	-- Sputtertube
					["coord"] = { 60.7, 46.5, MECHAGON },
				}),
				crit(45461, {	-- Goldenbot XD
					["crs"] = { 154924 },	-- Goldenbot XD
					["coord"] = { 60.6, 56.9, MECHAGON },
				}),
				crit(45462, {	-- Creakclank
					["crs"] = { 154925 },	-- Creakclank
					["coord"] = { 59.2, 50.9, MECHAGON },
				}),
				crit(45463, {	-- CK-9 Micro-Oppression Unit
					["crs"] = { 154926 },	-- CK-9 Micro-Oppression Unit
					["coord"] = { 65.4, 57.6, MECHAGON },
				}),
				crit(45464, {	-- Unit 35
					["crs"] = { 154927 },	-- Unit 35
					["coord"] = { 51.1, 45.4, MECHAGON },
				}),
				crit(45465, {	-- Unit 6
					["crs"] = { 154928 },	-- Unit 6
					["coord"] = { 39.5, 40.2, MECHAGON },
				}),
				crit(45466, {	-- Unit 17
					["crs"] = { 154929 },	-- Unit 17
					["coord"] = { 72.1, 72.9, MECHAGON },
				}),
			})),
			ach(13708, {	-- Most Minis Wins
				crit(45771, {	-- Izira Gearsworn
					["provider"] = { "i", 169794 },	-- Azeroth Mini: Izira Gearsworn
				}),
				crit(45782, {	-- Wrenchbot
					["provider"] = { "i", 169797 },	-- Azeroth Mini: Wrenchbot
				}),
				crit(45772, {	-- Gazlowe
					["provider"] = { "i", 169840 },	-- Azeroth Mini: Gazlowe
				}),
				crit(45773, {	-- Overspark
					["provider"] = { "i", 169844 },	-- Azeroth Mini: Overspark
				}),
				crit(45774, {	-- Prince Erazmin
					["provider"] = { "i", 169841 },	-- Azeroth Mini: Erazmin
				}),
				crit(45775, {	-- Bondo Bigblock
					["provider"] = { "i", 169795 },	-- Azeroth Mini: Bondo Bigblock
				}),
				crit(45776, {	-- Cork Stuttguard
					["provider"] = { "i", 169843 },	-- Azeroth Mini: Cork Stuttguard
				}),
				crit(45777, {	-- Roadtrogg
					["provider"] = { "i", 169842 },	-- Azeroth Mini: Roadtrogg
				}),
				crit(45778, {	-- Naeno Megacrash
					["provider"] = { "i", 169849 },	-- Azeroth Mini: Naeno Megacrash
				}),
				crit(45779, {	-- Cogstar
					["provider"] = { "i", 169851 },	-- Azeroth Mini: Cogstar
				}),
				crit(45780, {	-- HK-8
					["provider"] = { "i", 169845 },	-- Azeroth Mini: HK-8
				}),
				crit(45781, {	-- Blastatron
					["provider"] = { "i", 169852 },	-- Azeroth Mini: Blastatron
				}),
				crit(45785, {	-- King Mechagon
					["provider"] = { "i", 169846 },	-- Azeroth Mini: King Mechagon
				}),
				crit(45784, {	-- Sapphronetta
					["provider"] = { "i", 169876 },	-- Azeroth Mini: Sapphronetta
				}),
			}),
			ach(13696, {	-- Scrappy's Best Friend
				["description"] = "When you find Scrappy, use an |cff0070ddEnergy Cell|r to revive him and then feed him a |CffffffffMechano-Treat|r.  He runs around after being revived by any player, so if you can't find him try using a /tar macro in the general Rustbolt area.",
				["coords"] = {
					{ 70.4, 30.8, MECHAGON },
					{ 71.8, 34.2, MECHAGON },
					{ 72.4, 38.8, MECHAGON },
					{ 74.0, 36.8, MECHAGON },
				},
				["crs"] = { 150497 },	-- Scrappy
				["g"] = {
					crit(45628, {	-- Revive Scrappy
						["provider"] = { "i", 166970 },	-- 1x Energy Cell
					}),
					crit(45629, {	-- Feed Scrappy
						["provider"] = { "i", 167071 },	-- 1x Mechano-Treat
					}),
				},
			}),
			ach(13489, {	-- Secret Fish of Mechagon
				["requireSkill"] = FISHING,
				["g"] = {
					i(167698, {	-- Secret Fish Goggles
						-- #if BEFORE 11.1.5
						["description"] = "This becomes a toy in 11.1.5.",
						-- #endif
						["g"] = { i(158932) },	-- Secretest Fish
					}),
					crit(44737, {	-- Bottom Feeding Stinkfish
						["_quests"] = { 55299 },
					}),
					crit(44738, {	-- Bolted Steelhead
						["_quests"] = { 55305 },
					}),
					crit(44739, {	-- Pond Hopping Springfish
						["_quests"] = { 55306 },
					}),
					crit(44740, {	-- Shadowy Cave Eel
						["_quests"] = { 55307 },
					}),
					crit(44741, {	-- Mechanical Blowfish
						["_quests"] = { 55308 },
					}),
					crit(44742, {	-- Spitting Clownfish
						["_quests"] = { 55309 },
					}),
					crit(44743, {	-- Sludge-Fouled Carp
						["_quests"] = { 55310 },
					}),
					crit(44744, {	-- Energized Lighting Cod
						["_quests"] = { 55311 },
					}),
					crit(44745, {	-- Solarsprocket Barbel
						["_quests"] = { 55312 },
					}),
					crit(44746, {	-- Tasty Steelfin
						["_quests"] = { 55313 },
					}),
				},
			}),
			pvp(ach(13570)),	-- Tour of Duty: Mechagon
		}),
	}),
})));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
-- 	m(KUL_TIRAS, {
-- 		m(MECHAGON, {
-- 			n(ACHIEVEMENTS, {
-- 				-- Achievement 'Armed for Action' (achievementID 13790)
-- 				hqt(55260, name(HEADERS.AchCriteria, 13790.01)),	-- Volatile Blaster
-- 				hqt(55261, name(HEADERS.AchCriteria, 13790.02)),	-- Lightning Zap 5000
-- 				hqt(55903, name(HEADERS.AchCriteria, 13790.03)),	-- Boltspitter
-- 				hqt(55414, name(HEADERS.AchCriteria, 13790.04)),	-- Ricket's Special Delivery
-- 				hqt(55902, name(HEADERS.AchCriteria, 13790.05)),	-- Supercollider
-- 				-- Achievement 'Most Minis Wins' (achievementID 13708)
-- 				hqt(56624, name(HEADERS.AchCriteria, 13708.01)),	-- Collected Izira Gearsworn
-- 				hqt(56625, name(HEADERS.AchCriteria, 13708.02)),	-- Collected Bondo Grosbloc
-- 				hqt(56626, name(HEADERS.AchCriteria, 13708.03)),	-- Collected Wrenchbot
-- 				hqt(56627, name(HEADERS.AchCriteria, 13708.04)),	-- Collected Roadtrogg
-- 				hqt(56628, name(HEADERS.AchCriteria, 13708.05)),	-- Collected Overspark
-- 				hqt(56629, name(HEADERS.AchCriteria, 13708.06)),	-- Collected Gazlowe
-- 				hqt(56630, name(HEADERS.AchCriteria, 13708.07)),	-- Collected HK-8
-- 				hqt(56631, name(HEADERS.AchCriteria, 13708.08)),	-- Collected King Mechagon
-- 				hqt(56632, name(HEADERS.AchCriteria, 13708.09)),	-- Collected Prince Erazmin
-- 				hqt(56633, name(HEADERS.AchCriteria, 13708.10)),	-- Collected Cork Stuttguard
-- 				hqt(56634, name(HEADERS.AchCriteria, 13708.11)),	-- Collected Naeno Megacrash
-- 				hqt(56635, name(HEADERS.AchCriteria, 13708.12)),	-- Collected Cogstar
-- 				hqt(56652, name(HEADERS.AchCriteria, 13708.13)),	-- Collected Blastatron
-- 				hqt(56729, name(HEADERS.AchCriteria, 13708.14)),	-- Collected Sapphronetta
-- 			}),
-- 		}),
-- 	}),
-- })));