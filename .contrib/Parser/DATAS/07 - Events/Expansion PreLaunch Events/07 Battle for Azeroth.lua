-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, bubbleDown({ ["timeline"] = { ADDED_8_0_1, REMOVED_8_0_1 }, ["lvl"] = 110 }, {
	expansion(EXPANSION.BFA, {
		n(QUESTS, {
			-- Attaching the quests to each zone that is involved in the "War of the Thorns" Campaign. Excluding Undercity, Stormwind and Northern Barrens due to only one quest taking place in these zones and it's not relevant to link for just the one.
			["maps"] = {
				ASHENVALE,
				DARNASSUS,
				DARKSHORE,
			},
			["groups"] = {	-- [Note: Do not adjust ordering.]
				-- ALLIANCE PART I
				q(52062, {	-- A Disturbancee in Ashenvale
					["sourceQuest"] = 52060,	-- The Horde Uprising
					["qg"] = 139798,	-- Master Mathias Shaw
					["races"] = ALLIANCE_ONLY,
				}),
				q(52279, {	-- A Looming Threat [Note: Final Quest for Part 1]
					["sourceQuest"] = 52257,	-- "Rock" The World
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52058, {	-- A Short-Lived Peace
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(157832),	-- A Royal Summons (QI!)
					},
				}),
				q(52116, {	-- A Soft Glow
					["sourceQuests"] = {
						52072,	-- The Light of Elune
						53616,	-- Knives of the Forsaken
					},
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(53619, {	-- Azerite Denial
					["sourceQuest"] = 52242,	-- The Wake of Something New
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(53551, {	-- Elves in the Machine
					["sourceQuest"] = 52240,	-- Garden Grove
					["qg"] = 140728,	-- Captain Delaryn Silvermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52245, {	-- Enraged Furblogs
					["sourceQuest"] = 52240,	-- Garden Grove
					["qg"] = 33072,	-- Onu <Ancient of Lore>
					["races"] = ALLIANCE_ONLY,
				}),
				q(52240, {	-- Garden Grove
					["sourceQuests"] = {
						52234,	-- Hidden Amongst the Leaves
						53617,	-- Mercy for the Mad
					},
					["qg"] = 134578,	-- Captain  Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52234, {	-- Hidden Amongst the Leaves
					["sourceQuest"] = 52116,	-- A Soft Glow
					["qg"] = 133693,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(53616, {	-- Knives of the Forsaken
					["sourceQuest"] = 52062,	-- A Disturbancee in Ashenvale
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52197, {	-- Long Away
					["sourceQuest"] = 52257,	-- "Rock" The World
					["qg"] = 133693,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(52256, {	-- Malfurion Returns
					["sourceQuests"] = {
						53619,	-- Azerite Denial
						53621,	-- No Horde Allowed
					},
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52060, {	-- The Horde Uprising
					["sourceQuest"] = 52058,	-- A Short-Lived Pace
					["qg"] = 107574,	-- Anduin Wrynn
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(157832),	-- A Royal Summons (QI!)
					},
				}),
				q(53617, {	-- Mercy for the Mad
					["sourceQuest"] = 52116,	-- A Soft Glow
					["qg"] = 133693,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(53621, {	-- No Horde Allowed
					["sourceQuest"] = 52242,	-- The Wake of Something New
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52257, {	-- "Rock" The World
					["sourceQuest"] = 52256,	-- Malufrion Returns
					["qg"] = 133693,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(52072, {	-- The Light of Elune
					["sourceQuest"] = 52062,	-- A Disturbancee in Ashenvale
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52242, {	-- The Wake of Something New
					["sourceQuests"] = {
						52245,	-- Enraged Furblogs
						53551,	-- Elves in the Machine
					},
					["qg"] = 33072,	-- Onu <Ancient of Lore>
					["races"] = ALLIANCE_ONLY,
				}),
				-- ALLIANCE PART II [LUCETIA: UNORGANIZED DUE TO WAITING FOR LAUNCH TO VERIFY IN THE ORDER IT ORIGINALLY WAS]
				q(52973, {	-- A Threat From the North
					["sourceQuest"] = 52279,	-- A Looming Threat
					["races"] = ALLIANCE_ONLY,
				}),
				q(52974, {	-- Rescue Effort
					["sourceQuest"] = 52973,	-- A Threat From the North
					["qg"] = 140877,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(53622, {	-- Defending Lor'danel
					["sourceQuest"] = 52973,	-- A Threat From the North
					["qg"] = 140877,	-- Malfurion Stormrage
					["races"] = ALLIANCE_ONLY,
				}),
				q(52975, {	-- Action This Day
					["sourceQuest"] = 52973,	-- A Threat From the North
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(52977, {	-- The Guidance of Our Shan'do
					["sourceQuests"] = {
						52974,	-- Rescue Effort
						53622,	-- Defending Lor'danel
						52975,	-- Action This Day
					},
					["qg"] = 134578,	-- Captain Delaryn Summermoon
					["races"] = ALLIANCE_ONLY,
				}),
				q(53095, {	-- A Flicker of Hope
					["description"] = "You do not have to save all 982 people. Once timer runs out this quest is removed and next one is auto-accepted.",
					["sourceQuest"] = 52977,	-- The Guidance of Our Shan'do
					["qg"] = 142978,	-- Mia Greymane <Queen of Gilneas>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163189),	-- Bucket of Moonwell Water (QI!)
					},
				}),
				q(53310, {	-- From the Ashes… [Note: Final Quest for Part 2]
					["description"] = "Upon either failing or completing \"A Flicker of Hope\" this quest is auto-accepted",
					["sourceQuest"] = 53095,	-- A Flicker of Hope
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163127),	-- Teldrassil Hippogryph (MOUNT!)
					},
				}),
				-- Horde Part I
				q(53627, {	-- A Gift of Azerite
					["sourceQuests"] = {
						53608,	-- Fueling the Horde War Machine
						53609,	-- A Very Clear Message
					},
					["qg"] = 144346,	-- Jux Burstkix
					["races"] = HORDE_ONLY,
				}),
				q(53605, {	-- A Glaive Misunderstanding
					["sourceQuest"] = 50880,	-- An Unstoppable Force
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(158937),	--Everburning Torch (QI!)
					},
				}),
				q(52806, {	-- A Looming Threat [Note: Final Quest for Part 1]
					["sourceQuest"] = 52438,	-- A Wild Ride
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50646, {	-- A Quick Diversion
					["sourceQuest"] = 50642,	-- The Warchief Commands
					["qg"] = 134574,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
				}),
				q(50837, {	-- A Quick Flyover
					["sourceQuest"] = 50823,	-- Ripe for the Picking
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50738, {	-- A Timely Arrival
					["sourceQuest"] = 50647,	-- Everybody Has a Price
					["qg"] = 134573,	-- Lorash
					["races"] = HORDE_ONLY,
				}),
				q(53609, {	-- A Very Clear Message
					["sourceQuest"] = 52437,	-- The Start of Something Good
					["qg"] = 144346,	-- Jux Burstkix
					["races"] = HORDE_ONLY,
				}),
				q(53606, {	-- Aggressive Inspiration
					["sourceQuest"] = 52436,	-- The Blackwood Den
					["qg"] = 135003,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(52438, {	-- A Wild Ride
					["sourceQuest"] = 53627,	-- A Gift of Azerite
					["qg"] = 135501,	-- Zarvik Blastwix
					["races"] = HORDE_ONLY,
				}),
				q(50880, {	-- An Unstoppable Force
					["sourceQuest"] = 50837,	-- A Quick Flyover
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50878, {	-- Blurred Vision
					["sourceQuests"] = {
						53604,	-- Clearing Them Out
						53605,	-- A Glaive Misunderstanding
					},
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(53604, {	-- Clearing Them Out
					["sourceQuest"] = 50880,	-- An Unstoppable Force
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50647, {	-- Everybody Has a Price
					["sourceQuest"] = 50646,	-- A Quick Diversion
					["qg"] = 134573,	-- Lorash
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(158190),	-- Target Marker (QI!)
					},
				}),
				q(53608, {	-- Fueling the Horde War Machine
					["sourceQuest"] = 52437,	-- The Start of Something Good
					["qg"] = 144346,	-- Jux Burstkix
					["races"] = HORDE_ONLY,
				}),
				q(50800, {	-- Into the Woods
					["sourceQuest"] = 50772,	-- On The Prowl
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50772, {	-- On The Prowl
					["sourceQuest"] = 50740,	-- Zoram'gar Outpost
					["qg"] = 134574,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
				}),
				q(50823, {	-- Ripe for the Picking
					["sourceQuest"] = 50800,	-- Into the Woods
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(52436, {	-- The Blackwood Den
					["sourceQuest"] = 50879,	-- The Trees Have Ears
					["qg"] = 135003,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(52437, {	-- The Start of Something Good
					["sourceQuests"] = {
						52436,	-- The Blackwood Den
						53606,	-- Aggressive Inspiration
					},
					["qg"] = 135003,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50879, {	-- The Trees Have Ears
					["sourceQuest"] = 50878,	-- Blurred Vision
					["qg"] = 135003,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50476, {	-- The Warchief Awaits
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(157832),	-- A Royal Summons (QI!)
					},
				}),
				q(50642, {	-- The Warchief Commands
					["sourceQuest"] = 50476,	-- The Warchief Awaits
					["qg"] = 134554,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				q(50740, {	-- Zoram'gar Outpost
					["sourceQuest"] = 50738,	-- A Timely Arrival
					["qg"] = 135003,	-- Lady Sylvanas Windrunner
					["races"] = HORDE_ONLY,
				}),
				-- PART 2
				q(52967, {	-- Saurfang Returns
					["sourceQuest"] = 52806,	-- A Looming Threat
					["races"] = HORDE_ONLY,
				}),
				q(52970, {	-- No Small Mercy
					["sourceQuest"] = 52967,	-- Saurfang Returns
					["qg"] = 142310,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
				}),
				q(52971, {	-- Seaside Rendezvous
					["sourceQuest"] = 52967,	-- Saurfang Returns
					["qg"] = 142310,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
				}),
				q(53610, {	-- Driving Them Out
					["sourceQuest"] = 52967,	-- Saurfang Returns
					["qg"] = 142310,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
				}),
				q(52981, {	-- Killer Queen [Note: Final Quest for Part 2]
					["sourceQuests"] = {
						52970,	-- No Small Mercy
						52971,	-- Seaside Rendezvous
						53610,	-- Driving Them Out
					},
					["qg"] = 142310,	-- High Overlord Saurfang
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(163128),	-- Undercity Plaguebat (MOUNT!)
					},
				}),
			},
		}),
		n(WORLD_QUESTS, {
			["maps"] = { DARKSHORE },	-- Let's attach the map to this zone since all the WQ's are here.
			["groups"] = {
				n(QUESTS, bubbleDown({ ["isWorldQuest"] = true }, {
					q(52895, {	-- Arboria
						["races"] = ALLIANCE_ONLY,
					}),
					q(52506, {	-- Blunt the Spikes
						["races"] = ALLIANCE_ONLY,
					}),
					q(53497, {	-- Break Free
						["races"] = ALLIANCE_ONLY,
					}),
					q(53520, {	-- Detonate!
						["races"] = ALLIANCE_ONLY,
					}),
					q(52894, {	-- Don't Stop Me Now
						["races"] = HORDE_ONLY,
					}),
					q(52312, {	-- Extinguish the Light
						["races"] = HORDE_ONLY,
					}),
					q(52885, {	-- Fey There
						["races"] = ALLIANCE_ONLY,
					}),
					q(52243, {	-- Fuel for the Demolishers
						["races"] = HORDE_ONLY,
					}),
					q(52983, {	-- I Want It All
						["races"] = ALLIANCE_ONLY,
					}),
					q(52890, {	-- It's a Kind of Magic
						["races"] = HORDE_ONLY,
					}),
					q(52893, {	-- One Vision
						["races"] = ALLIANCE_ONLY,
					}),
					q(52505, {	-- Pruning the Thorns
						["races"] = HORDE_ONLY,
					}),
					q(52504, {	-- So We Meat Again
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(162013),	-- Haunch of Meat (QI!)
						},
					}),
					q(52307, {	-- Spiritual Aid
						["races"] = ALLIANCE_ONLY,
					}),
					q(53498, {	-- Staying Power
						["races"] = HORDE_ONLY,
					}),
					q(52244, {	-- Stop the Drilling
						["races"] = ALLIANCE_ONLY,
					}),
					q(52343, {	-- They Eat Like Orcs
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(162013),	-- Haunch of Meat (QI!)
						},
					}),
					q(52896, {	-- Under Pressure
						["races"] = HORDE_ONLY,
					}),
					q(52897, {	-- We Will "Rock" You
						["races"] = ALLIANCE_ONLY,
					}),
					q(53552, {	-- Wicked Kegger
						["races"] = ALLIANCE_ONLY,
					}),
				})),
				n(REWARDS, {
					cl(PRIEST, {
						i(162830),	-- Faithsworn Armwraps
						i(162827),	-- Faithsworn Frock
						i(162825),	-- Faithsworn Hood
						i(162824),	-- Faithsworn Mitts
						i(162826),	-- Faithsworn Pants
						i(162829),	-- Faithsworn Sash
						i(162828),	-- Faithsworn Shoulderpads
						i(162996),	-- Faithsworn Staff
						i(162823),	-- Faithsworn Treads
					}),
					cl(MAGE, {
						i(162805),	-- Spell-Splintered Cord
						i(162801),	-- Spell-Splintered Cowl
						i(162800),	-- Spell-Splintered Gloves
						i(162804),	-- Spell-Splintered Mantle
						i(162802),	-- Spell-Splintered Pantaloons
						i(162803),	-- Spell-Splintered Robes
						i(163015),	-- Spell-Splintered Rod
						i(162799),	-- Spell-Splintered Treads
						i(162806),	-- Spell-Splintered Wristwraps
					}),
					cl(WARLOCK, {
						i(162853),	-- Unshackled Belt
						i(162849),	-- Unshackled Crown
						i(162852),	-- Unshackled Epaulets
						i(162848),	-- Unshackled Handguards
						i(162847),	-- Unshackled Shoes
						i(163016),	-- Unshackled Staff
						i(162850),	-- Unshackled Trousers
						i(162851),	-- Unshackled Vestment
						i(162854),	-- Unshackled Wrappings
					}),
					cl(DRUID, {
						i(162789),	-- Rootweave Binding
						i(162787),	-- Rootweave Britches
						i(162783),	-- Rootweave Garb
						i(162785),	-- Rootweave Gloves
						i(162984),	-- Rootweave Greatstaff
						i(162786),	-- Rootweave Headpiece
						i(162788),	-- Rootweave Mantle
						i(162784),	-- Rootweave Sandals
						i(162985),	-- Rootweave Spear
						i(162986),	-- Rootweave Staff
						i(162790),	-- Rootweave Wraps
					}),
					cl(ROGUE, {
						i(162835),	-- Ambuscade Breeches
						i(163000),	-- Ambuscade Dagger
						i(162832),	-- Ambuscade Footpads
						i(162837),	-- Ambuscade Girdle
						i(162833),	-- Ambuscade Grips
						i(162838),	-- Ambuscade Sabercuffs
						i(162834),	-- Ambuscade Skullcap
						i(162836),	-- Ambuscade Spaulders
						i(163001),	-- Ambuscade Sword
						i(162831),	-- Ambuscade Tunic
					}),
					cl(MONK, {
						i(162808),	-- Serene Disciple's Anklewraps
						i(162813),	-- Serene Disciple's Cord
						i(162814),	-- Serene Disciple's Cuffs
						i(162809),	-- Serene Disciple's Handguards
						i(162807),	-- Serene Disciple's Jerkin
						i(162812),	-- Serene Disciple's Padding
						i(162992),	-- Serene Disciple's Shortsword
						i(162991),	-- Serene Disciple's Staff
						i(162810),	-- Serene Disciple's Sunhat
						i(162990),	-- Serene Disciple's Trident
						i(162811),	-- Serene Disciple's Wrappings
					}),
					cl(DEMONHUNTER, {
						i(163226),	-- Felbound Armguards
						i(163237),	-- Felbound Armguards
						i(163231),	-- Felbound Footwraps
						i(163241),	-- Felbound Footwraps
						i(163228),	-- Felbound Gardbrace
						i(163235),	-- Felbound Gardbrace
						i(163232),	-- Felbound Handwraps
						i(163238),	-- Felbound Handwraps
						i(163229),	-- Felbound Leggings
						i(163240),	-- Felbound Leggings
						i(163233),	-- Felbound Shroud
						i(163234),	-- Felbound Shroud
						i(163230),	-- Felbound Tunic
						i(163236),	-- Felbound Tunic
						i(163227),	-- Felbound Waistchain
						i(163239),	-- Felbound Waistchain
						i(163072),	-- Felbound Warglaive
					}),
					cl(HUNTER, {
						i(162792),	-- Wildguard Boots
						i(162798),	-- Wildguard Bracers
						i(162794),	-- Wildguard Facemask
						i(162793),	-- Wildguard Gloves
						i(162795),	-- Wildguard Poleyn
						i(162791),	-- Wildguard Ringmail
						i(162987),	-- Wildguard Shotgun
						i(162796),	-- Wildguard Spaulders
						i(163014),	-- Wildguard Spear
						i(162797),	-- Wildguard Studded Belt
					}),
					cl(SHAMAN, {
						i(162839),	-- Earthpyre Chain Shirt
						i(163004),	-- Earthpyre Claws
						i(162842),	-- Earthpyre Coif
						i(162841),	-- Earthpyre Demi-Gauntlets
						i(163003),	-- Earthpyre Fangs
						i(162840),	-- Earthpyre Footguards
						i(162845),	-- Earthpyre Furs
						i(162843),	-- Earthpyre Leggings
						i(163168),	-- Earthpyre Shield
						i(162844),	-- Earthpyre Shoulderguards
						i(163002),	-- Earthpyre Talons
						i(162846),	-- Earthpyre Wristguards
					}),
					cl(PALADIN, {
						i(162818),	-- Sacrosanct Barbute
						i(162815),	-- Sacrosanct Breastplate
						i(162821),	-- Sacrosanct Faulds
						i(162817),	-- Sacrosanct Gauntlets
						i(162816),	-- Sacrosanct Greaves
						i(162819),	-- Sacrosanct Legplates
						i(162820),	-- Sacrosanct Pauldrons
						i(163167),	-- Sacrosanct Protector
						i(162993),	-- Sacrosanct Scepter
						i(162994),	-- Sacrosanct Sword
						i(162822),	-- Sacrosanct Vambraces
						i(162995),	-- Sacrosanct Warmaul
					}),
					cl(WARRIOR, {
						i(163169),	-- Bladeplate Barrier
						i(163007),	-- Bladeplate Battleaxe
						i(162862),	-- Bladeplate Braces
						i(162856),	-- Bladeplate Chargers
						i(162855),	-- Bladeplate Cuirass
						i(162858),	-- Bladeplate Greathelm
						i(163009),	-- Bladeplate Handaxe
						i(162859),	-- Bladeplate Legguards
						i(162857),	-- Bladeplate Riveted Gloves
						i(162860),	-- Bladeplate Spiked Shoulders
						i(162861),	-- Bladeplate Waistguard
					}),
					cl(DEATHKNIGHT, {
						i(162782),	-- Gravewalker's Bindings
						i(162775),	-- Gravewalker's Chestplate
						i(162777),	-- Gravewalker's Clutches
						i(162778),	-- Gravewalker's Facegaurd
						i(162779),	-- Gravewalker's Greaves
						i(162781),	-- Gravewalker's Plated Girdle
						i(163010),	-- Gravewalker's Runeblade
						i(162780),	-- Gravewalker's Shoulderplates
						i(163011),	-- Gravewalker's Soulblade
						i(162776),	-- Gravewalker's Treads
					}),
				}),
			},
		}),
	}),
})));
