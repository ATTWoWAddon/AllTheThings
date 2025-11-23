---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(QUESTS, {
			-- TODO:
			-- while on "armed and ready," i chose the staff and it triggered quest #49684. do the other 2 weapon choices have different quests?
			-- SQ for "missing business" needs confirmation. some quests in vol'dun are available before you even start in dazar'alor, with 0 prereqs. this isn't one of them. is it available as soon as you land in vol'dun on "into the dunes," or is it truly unavailable until turning in "an explosive exit"?
			-- SQ for "forced grounding" needs confirmation. this was not available with 0 prereqs. i noticed it after turning in "crater conquered" and picking up "diplomacy and dominance" and "don't drop it...yet."
			-- SQ for "wasteland survivor" needs confirmation. i saw it before turning in "i heard you lost the herd" (where previous person had placed it) and after "i've got your back," while on "mystery meat" and "vol'duni fried chicken," but i'm not sure if it's available earlier.
			-- SQ for "snarltooth's last laugh" needs verification. previous person had marked the 2 there now + "alpacas gone wild" as SQs, but "alpacas" isn't. i had already done up through "savage saurolisks" + "they might be delicious" and was turning them in when i saw "snarltooth's last laugh."
			q(47320, {	-- A Balm to Calm
				["sourceQuests"] = {
					47319,	-- Restorative Venom
					51574,	-- Freshly Squeezed
				},
				["provider"] = { "n", 123586 },	-- Kiro
				["coord"] = { 56.7, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(150759),	-- Restorative Balm (QI!)
				},
			}),
			q(50817, {	-- A Charming Tail
				["sourceQuests"] = { 50818 },	-- A Lost Flute
				["provider"] = { "n", 135400 },	-- Jenoh
				["coord"] = { 29.5, 59.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158883),	-- Charming Flute (QI!)
				},
			}),
			q(48322, {	-- A Goldtusk Greeting
				["sourceQuests"] = {
					48321,	-- Creative Marketing
					47564,	-- Restocking the Buffet
					48320,	-- The Best Kill is Overkill
				},
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.4, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50818, {	-- A Lost Flute
				["provider"] = { "o", 282498 },	-- Desert Flute
				["coord"] = { 28.9, 54.6, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50755, {	-- A Meal for Birds
				["provider"] = { "n", 137629 },	-- Mekaru
				["coord"] = { 54.8, 42.4, VOLDUN },	-- The Brine Basin
				["races"] = HORDE_ONLY,
			}),
			q(49334, {	-- A Powerful Prisoner
				["sourceQuests"] = { 47324 },	-- Unlikely Allies
				["provider"] = { "n", 128687 },	-- Serrik
				["coord"] = { 27.2, 53.8, VOLDUN },	-- Terrace of the Devoted
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155457),	-- Devoted Defender's Cloak
					i(155454),	-- Devoted Defender's Band
				},
			}),
			q(48327, {	-- A Strange Delivery
				["sourceQuests"] = { 51062 },	-- Escaping Zem'lan
				["provider"] = { "n", 125904 },	-- Norah
				["coord"] = { 38.8, 77.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["groups"] = {
					i(159677),	-- Juicy Pineapple (QI!)
				},
			}),
			q(47574, {	-- All Webbed Up
				["sourceQuests"] = { 47965 },	-- The Ruined Temple
				["provider"] = { "n", 134134 },	-- Tulu
				["coord"] = { 58.5, 11.8, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(49139, {	-- An Army's Arsenal
				["sourceQuests"] = {
					49001,	-- Inconvenient Spirits
					48332,	-- Ranishu Are Resources
					48334,	-- They've Got Golems
				},
				["provider"] = { "n", 129451 },	-- Omi
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47322, {	-- Aided Escape
				["provider"] = { "n", 137631 },	-- Neri
				["coord"] = { 54.6, 42.4, VOLDUN },	-- The Brine Basin
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155388),	-- Exiled Veteran's Treads
					i(155389),	-- Lastwind Sandals
					i(155390),	-- Resilient Outcast's Boots
					i(155391),	-- Scorching Sands Footpads
					i(155409),	-- Exiled Veteran's Greatbelt
					i(155410),	-- Lastwind Cord
					i(155411),	-- Resilient Outcast's Chain
					i(155412),	-- Scorching Sands Belt
				},
			}),
			q(48715, {	-- Akunda Awaits
				["sourceQuests"] = { 48894 },	-- Trial of Truth
				["provider"] = { "n", 127570 },	-- Bladeguard Kaja
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(50913, {	-- Akunda's Blessing
				["sourceQuests"] = { 48996 },	-- Ending the Madness
				["provider"] = { "n", 128152 },	-- Akunda
				["coord"] = { 53.2, 91.6, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(49664, {	-- Allies in Anarchy
				["sourceQuests"] = { 50745 },	-- Infiltrating the Empire
				["provider"] = { "n", 135172 },	-- Vorrik
				["coord"] = { 47.9, 36.4, VOLDUN },	-- Vorrik's Sanctum
				["races"] = HORDE_ONLY,
			}),
			q(48532, {	-- Alpacas Gone Wild
				["sourceQuests"] = { 48530 },	-- I Heard You Lost the Herd
				["provider"] = { "n", 126085 },	-- Mugjabu
				["coord"] = { 42.1, 76.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152570),	-- Alpaca Whistle (QI!)
				},
			}),
			q(51364, {	-- An Explosive Exit
				["sourceQuests"] = {
					47327,	-- Answering Their Attacks
					49677,	-- Plans for Attack
				},
				["provider"] = { "n", 130474 },	-- Reckless Vulpera (Nisha)
				["coord"] = { 60.9, 32.6, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161188),	-- Fangcaller's Staff
					i(155443),	-- Sandcaster's Conductive Scimitar
					i(161190),	-- Sandscout's Kris
					i(161194),	-- Sethrak Aggressor's Scimitar
					i(161193),	-- Sethrak Ravager's Claws
					i(161191),	-- Sethrak Sandscout's Bow
					i(161192),	-- Sethrak Warbringer's Scimitar
					i(161195),	-- Sethrak Warden's Scimitar
					i(161189),	-- Sethrak Warden's Staff
					--
					a(i(161309)),	-- Ashvane Captain's Gladius
					a(i(161305)),	-- Ashvane Captain's Shortsword
					a(i(161300)),	-- Stoat-Trapper's Striker
				},
			}),
			q(47327, {	-- Answering Their Attacks
				["sourceQuests"] = { 51357 },	-- Armed and Ready
				["qgs"] = {
					130455,	-- Nisha
					130474,	-- Reckless Vulpera (Nisha)
				},
				["coord"] = { 65.9, 36.6, VOLDUN },	-- Shrouded Hollow
				["races"] = HORDE_ONLY,
			}),
			q(51357, {	-- Armed and Ready
				["sourceQuests"] = { 47315 },	-- Into the Dunes
				["provider"] = { "n", 130455 },	-- Nisha
				["coord"] = { 65.9, 36.6, VOLDUN },	-- Shrouded Hollow
				["races"] = HORDE_ONLY,
			}),
			q(48847, {	-- Arming the Tribe
				["sourceQuests"] = {
					51602,	-- Bandit Blades
					48790,	-- Stolen Goods
					48850,	-- Tongo
				},
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.4, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50617, {	-- Atul'Aman
				["sourceQuests"] = { 50751 },	-- Sanctuary Under Siege
				["provider"] = { "n", 129588 },		-- Vorrik
				["coord"] = { 27.09, 52.56, VOLDUN },	-- Sanctuary of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(50812, {	-- Awakened Elements
				["sourceQuests"] = {
					51991,	-- Charging the Batteries
					50775,	-- Get Us Some Beach
				},
				["provider"] = { "n", 135180 },	-- Nerin Solvis
				["coord"] = { 26.1, 73.6, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51602, {	-- Bandit Blades
				["sourceQuests"] = { 48846 },	-- Liquid Motivation
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(290712, {	-- Sandworn Blade
						i(160515),	-- Sandworn Blade (QI!)
					}),
				},
			}),
			q(48329, {	-- Beaten But Not Broken
				["sourceQuests"] = { 50746 },	-- Crater Conquered
				["provider"] = { "i", 158909 },	-- Beastbreaker Cage Key
				["coord"] = { 49.1, 38.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47581, {	-- Blessing of Kimbul
				["sourceQuests"] = { 47965 },	-- The Ruined Temple
				["provider"] = { "n", 134133 },	-- Teekcha
				["coord"] = { 58.5, 11.8, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160657),	-- Ring of Tides (QI!)
					i(155450),	-- Ring of Tides
				},
			}),
			q(50641, {	-- Break Their Ranks
				["sourceQuests"] = { 47324 },	-- Unlikely Allies
				["provider"] = { "n", 128696 },	-- Zissiah
				["coord"] = { 27.2, 53.8, VOLDUN },	-- Terrace of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(49333, {	-- Building Our Arsenal
				["provider"] = { "n", 128691 },	-- Izarn
				["coord"] = { 32.3, 48.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o_repeated({	-- Sethrak Weapon
						["coords"] = {
							{ 35.4, 46.5, VOLDUN },
							{ 35.6, 47.8, VOLDUN },
							{ 37.4, 47.3, VOLDUN },
							{ 37.7, 47.2, VOLDUN },
							{ 38.4, 47.7, VOLDUN },
						},
						["groups"] = {
							o(278190),	-- Sethrak Weapon
							o(278192),	-- Sethrak Weapon
							i(153556),	-- Sethrak Weapon (QI!)
						},
					}),
				},
			}),
			q(50771, {	-- Calldown: Cleaner
				["sourceQuests"] = { 50834 },	-- Keep It Down! (breadcrumb)
				["provider"] = { "n", 135179 },	-- Merd Archfeld
				["coord"] = { 26.2, 73.6, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158725),	-- Target Painter (QI!)
				},
			}),
			q(51775, {	-- Camp Lastwind
				["sourceQuests"] = { 51668 },	-- Mojambo
				["provider"] = { "n", 126085 },	-- Mugjabu
				["coord"] = { 42.1, 76.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49138, {	-- Captain Gulnaku's Treasure
				["sourceQuests"] = {
					51056,	-- My Last Day Alive
					51055,	-- The Yard Arm of the Law
				},
				["provider"] = { "o", 289728 },	-- Captain Gulnaku's Treasure Map
				["coord"] = { 35.0, 80.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153419),	-- Captain Gulnaku's Key (QI!)
					i(163633, {	-- Captain Gulnaku's Treasure
						["description"] = "Contains a small amount of gold and some green gems.",
					}),
				},
			}),
			q(51810, {	-- Captain Hartford
				["sourceQuests"] = {
					47870,	-- Dead Men Tell No Tales
					47871,	-- Seafaring Necessities
				},
				["qgs"] = {
					124468,	-- Randall Redmond <Ashvane Trading Co.>
					139069,	-- First Mate Redmond <Ashvane Trading Co.>
				},
				["coord"] = { 44.6, 86.9, VOLDUN },
			}),
			q(51991, {	-- Charging the Batteries
				["sourceQuests"] = { 52129 },	-- Power Problems
				["provider"] = { "n", 140046 },	-- Rozzy
				["coord"] = { 28.5, 68.5, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48887, {	-- Cleanse the Mind
				["sourceQuests"] = {
					48993,	-- Powerful Conductors
					48992,	-- Sacred Remains
					48991,	-- Vile Infestation
				},
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(47874, {	-- Clearing the Fog
				["sourceQuests"] = { 50913 },	-- Akunda's Blessing
				["provider"] = { "n", 130660 },	-- Warguard Rakera
				["coord"] = { 53.6, 91.6, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(245417, {	-- Akunda the Tapestry (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(47943, {	-- Crab Trapping
				["sourceQuests"] = { 51772 },	-- The Tortaka Tribe
				["provider"] = { "n", 134128 },	-- Churka
				["coord"] = { 61.9, 22.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151763),	-- Crab Trap (QI!)
				},
			}),
			q(49261, {	-- Crabby Crew Stew
				["description"] = "Must be wearing Ashvane Garb to pick up and turn in the quest.",
				["provider"] = { "n", 128618 },	-- Dockmaster Herrington
				["coord"] = { 44.6, 88.2, VOLDUN },
				-- ["races"] = HORDE_ONLY,	-- via #errors 20201105-14:19
				["groups"] = {
					i(151627),	-- Lumpy Crab Meat (QI!)
				},
			}),
			q(50746, {	-- Crater Conquered
				["sourceQuests"] = {
					49666,	-- Make Them Fear Us
					49665,	-- Ready to Riot
				},
				["provider"] = { "n", 135090 },	-- Nisha
				["coord"] = { 46.1, 33.2, VOLDUN },	-- Crater of Conquerors
				["races"] = HORDE_ONLY,
			}),
			q(48321, {	-- Creative Marketing
				["sourceQuests"] = { 47638 },	-- Powerful Spirits
				["provider"] = { "n", 123730 },	-- Man'zul
				["coord"] = { 43.5, 59.8, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153593),	-- Bloodcrest's Giant Rib (QI!)
					i(160021),	-- Exiled Veteran's Waistplate
					i(160022),	-- Lastwind Cincture
					i(160023),	-- Scorching Sands Waistwrap
					i(160024),	-- Resilient Outcast's Belt
					i(160009),	-- Lastwind Wristwraps
					i(160010),	-- Exiled Veteran's Bracers
					i(160011),	-- Resilient Outcast's Bindings
					i(160012),	-- Scorching Sands Armguards
				},
			}),
			q(48314, {	-- Creeping Death
				["sourceQuests"] = { 47716 },	-- Searching the Ruins
				["provider"] = { "n", 135154 },	-- Kiro
				["coord"] = { 47.0, 75.5, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152397),	-- Scorpashi Stinger (QI!)
				},
			}),
			q(51145, {	-- Curse of Jani
				["sourceQuests"] = { 51142 },	-- Pests
				["provider"] = { "n", 136559 },	-- Jani
				["coord"] = { 36.2, 36.8, VOLDUN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(47870, {	-- Dead Men Tell No Tales
				["sourceQuests"] = { 51773 },	-- The Ashvane Threat
				["provider"] = { "n", 124468 },	-- Randall Redmond
				["coord"] = { 45.6, 82.3, VOLDUN },
				["groups"] = {	-- quest is neutral, but rewards are horde-only
					i(161168, {	-- Scorching Sands Grasps
						["races"] = HORDE_ONLY,
					}),
					i(161169, {	-- Exiled Veteran's Grasps
						["races"] = HORDE_ONLY,
					}),
					i(161170, {	-- Lastwind Grasps
						["races"] = HORDE_ONLY,
					}),
					i(161171, {	-- Resilient Outcast's Grasps
						["races"] = HORDE_ONLY,
					}),
					i(160000, {	-- Exiled Veteran's Waistguard
						["races"] = HORDE_ONLY,
					}),
					i(160001, {	-- Lastwind Cinch
						["races"] = HORDE_ONLY,
					}),
					i(160002, {	-- Scorching Sands Waistband
						["races"] = HORDE_ONLY,
					}),
					i(160003, {	-- Resilient Outcast's Girdle
						["races"] = HORDE_ONLY,
					}),
				},
			}),
			q(50702, {	-- Defeat Jakra'zet
				["sourceQuests"] = { 50904 },	-- The Abandoned Passage
				["provider"] = { "n", 134803 },	-- Warguard Rakera
				["coord"] = { 55.63, 36.23, 1009 },	-- The Blood Font (Vol'dun)
				["races"] = HORDE_ONLY,
				["groups"] = {
					azeriteItem(155396),	-- Exiled Veteran's Helm
					azeriteItem(161158),	-- Exiled Veteran's Spaulders
					azeriteItem(155397),	-- Lastwind Hood
					azeriteItem(161161),	-- Lastwind Shoulderpads
					azeriteItem(155398),	-- Resilient Outcast's Coif
					azeriteItem(161159),	-- Resilient Outcast's Spaulders
					azeriteItem(155399),	-- Scorching Sands Mask
					azeriteItem(161160),	-- Scorching Sands Shoulderspads
					azewrongItem(175310),	-- Exiled Veteran's Helm (no azerite version)
					azewrongItem(175346),	-- Exiled Veteran's Spaulders (no azerite version)
					azewrongItem(175311),	-- Lastwind Hood (no azerite version)
					azewrongItem(175349),	-- Lastwind Shoulderpads (no azerite version)
					azewrongItem(175312),	-- Resilient Outcast's Coif (no azerite version)
					azewrongItem(175347),	-- Resilient Outcast's Spaulders (no azerite version)
					azewrongItem(175313),	-- Scorching Sands Mask (no azerite version)
					azewrongItem(175348),	-- Scorching Sands Shoulderspads (no azerite version)
				},
			}),
			q(49141, {	-- Diplomacy and Dominance
				["sourceQuests"] = { 50746 },	-- Crater Conquered
				["provider"] = { "n", 135172 },	-- Vorrik
				["coord"] = { 48.0, 36.3, VOLDUN },	-- Vorrik's Sanctum
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160510),	-- Vorrik's Staff (QI!)
				},
			}),
			q(47501, {	-- Dirty Work for Dirty Drinks
				["sourceQuests"] = { 47497 },	-- Meet the Goldtusk Gang
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.5, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(150923),	-- Caustic Scorpid Blood (QI!)
				},
			}),
			q(50748, {	-- Don't Drop It... Yet
				["sourceQuests"] = { 50746 },	-- Crater Conquered
				["provider"] = { "n", 135172 },	-- Vorrik
				["coord"] = { 48.0, 36.3, VOLDUN },	-- Vorrik's Sanctum
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154896),	-- Volatile Lightning Bomb (QI!)
				},
			}),
			q(49676, {	-- Dressed for Battle
				["sourceQuests"] = { 51357 },	-- Armed and Ready
				["qgs"] = {
					130455,	-- Nisha
					130474,	-- Reckless Vulpera (Nisha)
				},
				["coord"] = { 65.9, 36.6, VOLDUN },	-- Shrouded Hollow
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155414),	-- Exiled Veteran's Armguards
					i(159982),	-- Exiled Veteran's Crushers
					i(155413),	-- Lastwind Bands
					i(159981),	-- Lastwind Handwraps
					i(159980),	-- Resilient Outcast's Guantlets
					i(155415),	-- Resilient Outcast's Vambraces
					i(159983),	-- Scorching Sands Handwraps
					i(155416),	-- Scorching Sands Wristwraps
					--
					a(i(158694)),	-- Darkwater Grips
					a(i(158695)),	-- Dread Corsair Handguards
					a(i(158696)),	-- Tidespeaker Mitts
					a(i(158697)),	-- Stormchaser Grips
				},
			}),
			q(50770, {	-- Effective Antivenom
				["sourceQuests"] = {
					48314,	-- Creeping Death
					48313,	-- Nature's Remedy
				},
				["provider"] = { "n", 135154 },	-- Kiro
				["coord"] = { 47.0, 75.5, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158678),	-- Antivenom (QI!)
				},
			}),
			q(48996, {	-- Ending the Madness
				["sourceQuests"] = { 48889 },	-- Repairing the Past
				["provider"] = { "n", 138382 },	-- Akunda
				["coord"] = { 52.2, 79.8, VOLDUN },	-- Valley of Sorrows
				["races"] = HORDE_ONLY,
				["groups"] = {
					azeriteItem(155404),	-- Lastwind Robes
					azeriteItem(155407),	-- Lastwind Mantle
					azeriteItem(155386),	-- Resilient Outcast's Hauberk
					azeriteItem(155408),	-- Resilient Outcasat's Shoulderguards
					azeriteItem(155385),	-- Exiled Veteran's Cuirass
					azeriteItem(155406),	-- Exiled Veteran's Pauldrons
					azeriteItem(155387),	-- Scorching Sands Wraps
					azeriteItem(155405),	-- Scorching Sands Shoulderguards
					azewrongItem(175373),	-- Lastwind Robes (no azerite item)
					azewrongItem(175340),	-- Lastwind Mantle (no azerite item)
					azewrongItem(175371),	-- Resilient Outcast's Hauberk (no azerite item)
					azewrongItem(175341),	-- Resilient Outcasat's Shoulderguards (no azerite item)
					azewrongItem(175370),	-- Exiled Veteran's Cuirass (no azerite item)
					azewrongItem(175339),	-- Exiled Veteran's Pauldrons (no azerite item)
					azewrongItem(175372),	-- Scorching Sands Wraps (no azerite item)
					azewrongItem(175338),	-- Scorching Sands Shoulderguards (no azerite item)
				},
			}),
			q(51062, {	-- Escaping Zem'lan
				["sourceQuests"] = { 48326 },	-- This Be Mutiny
				["provider"] = { "n", 136779 },	-- First Mate Jamboya
				["coord"] = { 30.2, 86.4, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48872, {	-- Expedite the Excavation
				["sourceQuests"] = { 50536 },	-- Magic Decoder Device
				["provider"] = { "n", 134164 },	-- Amre
				["coord"] = { 47.4, 72.8, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
			}),
			q(50596, {	-- Exterminate the Vermin
				["description"] = "Use the Scepter of Prescience in the building at 47.73 to get the snake disguise to pick up this quest.",
				["sourceQuests"] = { 50536 },	-- Magic Decoder Device (appears while on quest while friendly to sethrak)
				["provider"] = { "n", 134408 },	-- Foreman Jethek
				["coords"] = {
					{ 49.8, 74.6, VOLDUN },	-- Zul'Ahjin
					{ 49.8, 76.6, VOLDUN },
					{ 47.4, 72.7, VOLDUN },	-- Scepter of Prescience
				},
				["races"] = HORDE_ONLY,
				["crs"] = { 134245 },	-- Scepter of Prescience
			}),
			q(49040, {	-- Fond Farewells
				["description"] = "This version is available before completing Ending the Madness.",
				["sourceQuests"] = { 48895 },	-- The Perfect Offering
				["provider"] = { "n", 127691 },	-- Jorak
				["coord"] = { 52.8, 89.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153016),	-- Sealed Scroll (QI!)
				},
			}),
			q(49731, {	-- Fond Farewells
				["description"] = "This version is available after completing Ending the Madness.",
				["sourceQuests"] = { 48996 },	-- Ending the Madness
				["provider"] = { "n", 128339 },	-- Jorak
				["coord"] = { 52.9, 89.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153016),	-- Sealed Scroll (QI!)
				},
			}),
			q(49002, {	-- Forced Grounding
				["sourceQuests"] = { 50746 },	-- Crater Conquered
				["provider"] = { "o", 278447 },	-- Faithless Trapper's Spear
				["coord"] = { 47.1, 38.8, VOLDUN },	-- Rakjan's Peak
				["races"] = HORDE_ONLY,
				-- SQ needs verification.
				["groups"] = {
					i(154893),	-- Faithless Trapper's Spear (QI!)
					i(161166),	-- Faithless Skyrider's Focus
					i(161167),	-- Faithless Skyrider's Shield
				},
			}),
			q(50749, {	-- Free Ride
				["sourceQuests"] = {
					49669,	-- Unleash the Beasts
					50757,	-- Untame Slaughter
				},
				["provider"] = { "n", 135099 },	-- Kiro
				["coord"] = { 55.4, 35.0, VOLDUN },	-- Slithering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(51574, {	-- Freshly Squeezed
				["sourceQuests"] = { 51364 },	-- An Explosive Exit
				["provider"] = { "n", 122583 },	-- Meerah
				["coord"] = { 56.7, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160448),	-- Pricklevine Juice (QI!)
				},
			}),
			q(49262, {	-- Gang Bustin'
				["description"] = "Must be wearing Ashvane Garb to pick up and turn in the quest.",
				["provider"] = { "n", 128618 },	-- Dockmaster Herrington
				["coord"] = { 44.6, 88.2, VOLDUN },
				-- ["races"] = HORDE_ONLY,	-- via #errors 20201105-14:19
			}),
			q(50775, {	-- Get Us Some Beach
				["sourceQuests"] = { 50834 },	-- Keep It Down! (breadcrumb)
				["provider"] = { "n", 135179 },	-- Merd Archfeld
				["coord"] = { 26.2, 73.6, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158707),	-- Pile of Sand (QI!)
				},
			}),
			q(47503, {	-- Gozda'kun the Slaver
				["sourceQuests"] = {
					47501,	-- Dirty Work for Dirty Drinks
					47498,	-- Rhan'ka's Lost Friend
				},
				["provider"] = { "n", 138749 },	-- Rhan'ka
				["coord"] = { 37.4, 51.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48549, {	-- Grozztok the Blackheart
				["sourceQuests"] = { 47959 },	-- The Warguard's Trail
				["provider"] = { "n", 126696 },	-- Jorak
				["coord"] = { 53.2, 66.2, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(51718, {	-- Harvesting "Honey"
				["sourceQuests"] = { 51717 },	-- The Best Honey in Vol'dun
				["provider"] = { "n", 133833 },	-- Rikati
				["coord"] = { 40.4, 55.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157541),	-- Bilewing Stinger (QI!)
				},
			}),
			q(47570, {	-- Hidden Motives
				["sourceQuests"] = { 51772 },	-- The Tortaka Tribe
				["provider"] = { "n", 134098 },	-- Torka
				["coord"] = { 61.9, 22.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157866),	-- Invasion Plans (QI!)
				},
			}),
			q(48315, {	-- Hollow, Empty Eyes
				["sourceQuests"] = { 50539 },	-- The Secrets of Zul'Ahjin
				["provider"] = { "o", 281639 },	-- Crumbling Statue
				["coord"] = { 48.8, 74.4, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(281558, {	-- Glittering Sapphire
						["coords"] = {
							{ 49.9, 73.2, VOLDUN },
							{ 51.0, 72.4, VOLDUN },
						},
						["groups"] = { i(157864) },	-- Glittering Sapphire (QI!)
					}),
				},
			}),
			q(48529, {	-- Hungry Mouths To Feed
				["sourceQuests"] = { 51573 },	-- I've Got Your Back
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(56250, {	-- I Am the Trashmaster
				["description"] = "You need to get Trashmaster's Mantle from K.U.-J.0. boss in Mechagon for this quest.",
				-- ["sourceQuests"] = { },
				["provider"] = { "n", 136559 },	-- Jani <Loa of Scavengers>
				["coord"] = { 36.2, 36.8, VOLDUN },
				["cost"] = { { "i", 168970, 1 } },	-- Trashmaster's Mantle
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(169394),	-- Richly Appointed Drape
					title(324),	-- Trashmaster
				},
			}),
			q(48530, {	-- I Heard You Lost the Herd
				["sourceQuests"] = { 51573 },	-- I've Got Your Back
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51573, {	-- I've Got Your Back
				["sourceQuests"] = { 50794 },	-- Seeking Shelter
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47939, {	-- If the Key Fits...
				["provider"] = { "n", 128422 },	-- Keerin
				["coord"] = { 47.5, 86.0, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151777),	-- Ashvane Trader Key (QI!)
				},
			}),
			q(49001, {	-- Inconvenient Spirits
				["sourceQuests"] = { 48840 },	-- Ruins-Level Marketing
				["provider"] = { "n", 129453 },	-- Kenzou
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50745, {	-- Infiltrating the Empire
				["sourceQuests"] = { 49662 },	-- The Missing Key
				["provider"] = { "n", 137970 },	-- Vorrik
				["coord"] = { 42.9, 35.7, VOLDUN },	-- Bwoljin's Fall
				["races"] = HORDE_ONLY,
			}),
			q(50703, {	-- Informing the Horde
				["sourceQuests"] = { 50702 },	-- Defeat Jakra'zet
				["provider"] = { "n", 135133 },	-- Warguard Rakera
				["coord"] = { 27.0, 52.6, VOLDUN },	-- Sanctuary of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(52023, {	-- Informing the Horde
				["sourceQuests"] = { 50702 },	-- Defeat Jakra'zet
				["provider"] = { "n", 135133 },	-- Warguard Rakera
				["coord"] = { 27.0, 52.5, VOLDUN },
				["races"] = HORDE_ONLY,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(52024, {	-- Informing the Horde
				["sourceQuests"] = { 50702 },	-- Defeat Jakra'zet
				["provider"] = { "n", 135133 },	-- Warguard Rakera
				["coord"] = { 27.0, 52.5, VOLDUN },
				["races"] = HORDE_ONLY,
				["u"] = REMOVED_FROM_GAME,
			}),
			q(50750, {	-- Infuriating the Emperor
				["sourceQuests"] = { 49003 },	-- Vengeance From Above
				["provider"] = { "n", 135111 },	-- Vorrik
				["coord"] = { 51.9, 28.7, VOLDUN },	-- Skycallers' Spire
				["races"] = HORDE_ONLY,
			}),
			q(48888, {	-- It Springs Eternal
				["sourceQuests"] = {
					48993,	-- Powerful Conductors
					48992,	-- Sacred Remains
					48991,	-- Vile Infestation
				},
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(47573, {	-- Jungleweb Infestation
				["sourceQuests"] = { 47965 },	-- The Ruined Temple
				["provider"] = { "n", 134134 },	-- Tulu
				["coord"] = { 58.5, 11.8, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50979, {	-- Just a Nip
				["sourceQuests"] = { 50818 },	-- A Lost Flute
				["provider"] = { "n", 135400 },	-- Jenoh
				["coord"] = { 29.5, 59.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159675),	-- Atrivax Gel Sample (QI!)
				},
			}),
			q(50834, {	-- Keep It Down!
				["sourceQuests"] = { 50980 },	-- My Hungry Neighbor
				["provider"] = { "n", 135400 },	-- Jenoh
				["coord"] = { 29.5, 59.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(47321, {	-- Knickknack Takeback
				["sourceQuests"] = { 47320 },	-- A Balm to Calm
				["provider"] = { "n", 123586 },	-- Kiro
				["coord"] = { 56.7, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151273, {	-- Knickknacks (QI!)
						i(144299),	-- Chipped Statuette (QI!)
						i(151276),	-- Cloudy Potion (QI!)
						i(151277),	-- Coiled Idol (QI!)
						i(144325),	-- Crystalline Dagger (QI!)
						i(150761),	-- Crystalline Spear (QI!)
						i(144302),	-- Gem-Studded Chalice (QI!)
						i(150752),	-- Heavy Coin Pouch (QI!)
						i(144301),	-- Ornate Brooch (QI!)
						i(151278),	-- Roaring Idol (QI!)
						i(151274),	-- Salted Meats (QI!)
						i(144323),	-- Silken Slippers (QI!)
						i(150763),	-- Spiked Pauldrons (QI!)
						i(144324),	-- Tarnished Band (QI!)
						i(151279),	-- Thundering Idol (QI!)
						i(144322),	-- Torn Painting (QI!)
						i(144300),	-- Unstrung Bowstaff (QI!)
						i(151275),	-- Worn Leather Satchel (QI!)
						i(150762),	-- Woven Basket (QI!)
						-- All the items in this list are counted as "Knickknacks" when looted
					}),
				},
			}),
			q(48896, {	-- Knowledge of the Past
				["sourceQuests"] = { 47874 },	-- Clearing the Fog
				["provider"] = { "n", 130667 },	-- Warguard Rakera
				["coord"] = { 52.8, 89.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(48553, {	-- Let it Flow
				["sourceQuests"] = { 51829 },	-- Ranah's Wrench
				["provider"] = { "n", 126814 },	-- Ranah
				["coord"] = { 53.8, 69.4, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(49668, {	-- Light Up the Gulch
				["sourceQuests"] = {
					49666,	-- Make Them Fear Us
					49665,	-- Ready to Riot
				},
				["provider"] = { "n", 137981 },	-- Kiro
				["coord"] = { 46.0, 33.2, VOLDUN },	-- Crater of Conquerors
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158896),	-- Kiro's Torch (QI!)
				},
			}),
			q(48846, {	-- Liquid Motivation
				["sourceQuests"] = {
					48656,	-- Savage Saurolisks
					48657,	-- They Might Be Delicious
					48534,	-- Snarltooth's Last Laugh
				},
				["provider"] = { "n", 125862 },	-- Zauljin
				["coord"] = { 43.2, 76.9, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160499),	-- Zanchuli Reserve (QI!)
				},
			}),
			q(48324, {	-- Lost in Zem'lan
				["sourceQuests"] = { 51775 },	-- Camp Lastwind (breadcrumb)
				["provider"] = { "n", 125904 },	-- Norah
				["coord"] = { 38.8, 77.2, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50536, {	-- Magic Decoder Device
				["sourceQuests"] = { 50770 },	-- Effective Antivenom
				["provider"] = { "n", 134148 },	-- Maaz
				["coord"] = { 47.2, 72.8, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
			}),
			q(49666, {	-- Make Them Fear Us
				["sourceQuests"] = { 49664 },	-- Allies in Anarchy
				["provider"] = { "n", 135090 },	-- Nisha
				["coord"] = { 46.1, 33.2, VOLDUN },	-- Crater of Conquerors
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158884),	-- Vulpera Banners (QI!)
				},
			}),
			q(47578, {	-- Mark of the Loa
				["sourceQuests"] = { 47576 },	-- Wrath of the Tiger
				["provider"] = { "n", 123052 },	-- Kimbul
				["coord"] = { 56.6, 10.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51057, {	-- Maroon 'em with Fire
				["sourceQuests"] = {
					51056,	-- My Last Day Alive
					51055,	-- The Yard Arm of the Law
				},
				["provider"] = { "n", 136309 },	-- First Mate Jamboya
				["coord"] = { 35.3, 83.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47497, {	-- Meet the Goldtusk Gang
				["sourceQuests"] = { 48327 },	-- A Strange Delivery (breadcrumb)
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.5, 60.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48988, {	-- Memory Breach
				["sourceQuests"] = { 48987 },	-- Valley of Sorrows
				["provider"] = { "n", 127989 },	-- Meijani
				["coord"] = { 53.0, 78.8, VOLDUN },	-- Valley of Sorrows
				["races"] = HORDE_ONLY,
			}),
			q(50739, {	-- Missing Business
				["sourceQuests"] = { 51364 },	-- An Explosive Exit
				["provider"] = { "n", 135012 },	-- Vivi
				["coord"] = { 55.2, 48.4, VOLDUN },	-- The Prickly Grove
				["races"] = HORDE_ONLY,
				-- SQ needs confirmation. was not available with 0 prereqs, picked it up after "an explosive exit" while on "restorative venom" and "freshly squeezed"
				["groups"] = {
					i(158464),	-- Poda (PET!)
					i(159729),	-- Sandstinger Remedy (QI!)
				},
			}),
			q(51668, {	-- Mojambo
				["sourceQuests"] = { 48847 },	-- Arming the Tribe
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.4, 75.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155424),	-- Mozesha's Hexblade
					i(155419),	-- Sezahjin's Chopper
					i(160029),	-- Mojambo's Stabber
					i(160030),	-- Sezahjin's Vulture Bow
					i(160031),	-- Mugjabu's Quarterstaff
					i(155441),	-- Razgaji's Cutter
					i(155429),	-- Sezahjin's Tenderizer
					i(155442),	-- Razgaji's Machete
					i(155420),	-- Xombo's Prized Greataxe
					i(161308, { ["races"] = ALLIANCE_ONLY }),	-- Ashvane Captain's Quickblade
					i(161297, { ["races"] = ALLIANCE_ONLY }),	-- Hacksaw Skinning Knife
					--
					i(158879),	-- Bloodstained Message
					i(160525),	-- Tongo's Head (QI!)
				},
			}),
			q(50980, {	-- My Hungry Neighbor
				["sourceQuests"] = {
					50817,	-- A Charming Tail
					50979,	-- Just a Nip
				},
				["provider"] = { "n", 135400 },	-- Jenoh
				["coord"] = { 29.5, 59.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160847),	-- Guardian Cobra Hatchling (PET!)
					i(160005),	-- Exiled Veteran's Footguards
					i(160006),	-- Lastwind Treads
					i(160007),	-- Resilient Outcast's Treads
					i(160008),	-- Scorching Sands Footwraps
					i(160004),	-- Cobra Charmer's Ring
				},
			}),
			q(51056, {	-- My Last Day Alive
				["sourceQuests"] = { 51054 },	-- Overdue Mutiny
				["provider"] = { "n", 136309 },	-- First Mate Jamboya
				["coord"] = { 35.3, 83.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159757),	-- First Mate Jamboya's Medallion (QI!)
				},
			}),
			q(48531, {	-- Mystery Meat
				["sourceQuests"] = { 48529 },	-- Hungry Mouths to Feed
				["provider"] = { "n", 126108 },	-- Sezahjin
				["coord"] = { 43.6, 76.7, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152566),	-- Dung Beetle Innards (QI!)
					i(163841),	-- Dung Beetle Surprise
				},
			}),
			q(48313, {	-- Nature's Remedy
				["sourceQuests"] = { 47716 },	-- Searching the Ruins
				["provider"] = { "n", 135154 },	-- Kiro
				["coord"] = { 47.0, 75.5, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(273193, {	-- Prickly Plum
						["coords"] = {
							{ 45.6, 73.5, VOLDUN },
							{ 45.7, 71.8, VOLDUN },
							{ 45.7, 74.7, VOLDUN },
							{ 45.7, 76.9, VOLDUN },
							{ 46.2, 76.2, VOLDUN },
							{ 46.4, 70.2, VOLDUN },
							{ 46.4, 73.4, VOLDUN },
							{ 46.5, 70.0, VOLDUN },
							{ 47.2, 71.5, VOLDUN },
							{ 47.7, 70.2, VOLDUN },
							{ 48.0, 70.6, VOLDUN },
						},
						["groups"] = { i(152393) },	-- Prickly Plum Cactus (QI!)
					}),
				},
			}),
			q(47928, {	-- Offering for the Loa
				["sourceQuests"] = {
					47574,	-- All Webbed Up
					47581,	-- Blessing of Kimbul
					47573,	-- Jungleweb Infestation
				},
				["provider"] = { "n", 134133 },	-- Teekcha
				["coord"] = { 58.5, 11.8, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48684, {	-- On the Move
				["sourceQuests"] = {
					48550,	-- Stolen Satchels
					48549,	-- Grozztok the Blackheart
				},
				["provider"] = { "n", 122289 },	-- Bladeguard Kaja
				["coord"] = { 53.2, 66.0, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(51060, {	-- Our Share of the Plunder
				["sourceQuests"] = { 51059 },	-- The Golden Isle
				["provider"] = { "n", 136779 },	-- First Mate Jamboya
				["coord"] = { 30.2, 86.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o_repeated({
						i(152659),	-- Cursed Treasure of Zem'lan (QI!)
						o(272622),	-- Cursed Treasure
						o(287490),	-- Cursed Treasure
						o(287493),	-- Cursed Treasure
						o(287314),	-- Disturbed Sand
					}),
				},
			}),
			q(51054, {	-- Overdue Mutiny
				["sourceQuests"] = { 51053 },	-- The Day the Port Fell
				["provider"] = { "n", 128261 },	-- First Mate Jamboya
				["coord"] = { 35.4, 83.7, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51142, {	-- Pests
				["provider"] = { "n", 136562 },	-- Quartermaster Alfin
				["coord"] = { 36.6, 32.4, VOLDUN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49677, {	-- Plans for Attack
				["sourceQuests"] = {
					49676,	-- Dressed for Battle
				},
				["provider"] = { "n", 130474 },	-- Reckless Vulpera (Nisha)
				["races"] = HORDE_ONLY,
				-- no coords for this one. you pick it up from Nisha anywhere in the Abandoned Burrows
				["groups"] = {
					i(158651),	-- Nisha's Attack Plans (QI!)
				},
			}),
			q(50535, {	-- Power of the Overseer
				["sourceQuests"] = {
					48872,	-- Expedite the Excavation
					48871,	-- Rescue the Relics
				},
				["provider"] = { "n", 134148 },	-- Maaz
				["coord"] = { 47.2, 72.8, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157855),	-- Azerite Shard (QI!)
				},
			}),
			q(52129, {	-- Power Problems
				["sourceQuests"] = { 50834 },	-- Keep It Down! (breadcrumb)
				["provider"] = { "n", 135179 },	-- Merd Archfeld
				["coord"] = { 26.2, 73.6, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48993, {	-- Powerful Conductors
				["sourceQuests"] = { 48895 },	-- The Perfect Offering
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153029),	-- Rorgog's Antennae (QI!)
					i(159979),	-- Rorgog's Antenna
					i(155451),	-- Akunda Adherent's Cloak
				},
			}),
			q(47638, {	-- Powerful Spirits
				["sourceQuests"] = {
					47503,	-- Gozda'kun the Slayer
					47502,	-- The Great Cranium Caper
					50328,	-- Unconventional Aromatics
				},
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.5, 60.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(49327, {	-- Push Them Back!
				["sourceQuests"] = { 47324 },	-- Unlikely Allies
				["provider"] = { "n", 128696 },	-- Zissiah
				["coord"] = { 27.2, 53.8, VOLDUN },	-- Terrace of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(51829, {	-- Ranah's Wrench
				["provider"] = { "o", 291143 },	-- Ranah's Wrench
				["coord"] = { 50.7, 64.7, VOLDUN },	-- Atul'aman
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["groups"] = {
					i(160747),	-- Ranah's Wrench (QI!)
				},
			}),
			q(48332, {	-- Ranishu Are Resources
				["provider"] = { "n", 129451 },	-- Omi
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154713),	-- Ranishu Stomach (QI!)
				},
			}),
			q(49665, {	-- Ready to Riot
				["sourceQuests"] = { 49664 },	-- Allies in Anarchy
				["provider"] = { "n", 135090 },	-- Nisha
				["coord"] = { 46.1, 33.2, VOLDUN },	-- Crater of Conquerors
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(287006, {	-- Faithless Weapon Rack
						i(159470),	-- Faithless Scimitar (QI!)
					}),
				},
			}),
			q(50752, {	-- Relics of Sethraliss
				["sourceQuests"] = { 49003 },	-- Vengeance From Above
				["provider"] = { "n", 135111 },	-- Vorrik
				["coord"] = { 51.9, 28.7, VOLDUN },	-- Skycallers' Spire
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(290757, {	-- Blood of the Fallen Loa
						["coord"] = { 49.6, 24.4, VOLDUN },
						["groups"] = { i(160528) },	-- Blood of the Fallen Loa (QI!)
					}),
					o(282451, {	-- Rebirth Creed
						["coord"] = { 49.9, 28.4, VOLDUN },
						["groups"] = { i(158722) },	-- Rebirth Creed (QI!)
					}),
					o(290756, {	-- Sethraliss Sight Stone
						["coord"] = { 48.3, 26.2, VOLDUN },
						["groups"] = { i(160527) },	-- Sethraliss Sight Stone (QI!)
					}),
					o(290755, {	-- Skull of the First Skycaller
						["coord"] = { 50.2, 26.7, VOLDUN },
						["groups"] = { i(160526) },	-- Skull of the First Skycaller (QI!)
					}),
				},
			}),
			q(48889, {	-- Repairing the Past
				["sourceQuests"] = {
					48988,	-- Memory Breach
					49005,	-- Shattered and Broken
				},
				["provider"] = { "n", 127989 },	-- Meijani
				["coord"] = { 53.0, 78.8, VOLDUN },	-- Valley of Sorrows
				["races"] = HORDE_ONLY,
			}),
			q(48871, {	-- Rescue the Relics
				["sourceQuests"] = { 50536 },	-- Magic Decoder Device
				["provider"] = { "n", 134148 },	-- Maaz
				["coord"] = { 47.2, 72.8, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(281608, {	-- Relic of the Keepers
						i(152787),	-- Relic of the Keepers (QI!)
					}),
				},
			}),
			q(47564, {	-- Restocking the Buffet
				["sourceQuests"] = { 47638 },	-- Powerful Spirits
				["provider"] = { "n", 122725 },	-- Zulsan
				["coord"] = { 43.7, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(278242, {	-- Whistlebloom Juicy Fruit
						["coords"] = {
							{ 40.4, 61.6, VOLDUN },
							{ 40.4, 62.8, VOLDUN },
							{ 40.9, 62.2, VOLDUN },
							{ 41.2, 63.3, VOLDUN },
							{ 41.5, 62.6, VOLDUN },
							{ 42.0, 61.8, VOLDUN },
							{ 42.7, 62.6, VOLDUN },
							{ 43.2, 62.0, VOLDUN },
						},
						["groups"] = { i(151022) },	-- Whistlebloom Juicy Fruit (QI!)
					}),
				},
			}),
			q(47319, {	-- Restorative Venom
				["sourceQuests"] = { 51364 },	-- An Explosive Exit
				["provider"] = { "n", 123586 },	-- Kiro
				["coord"] = { 56.7, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160441),	-- Sandstinger Venom Gland (QI!)
				},
			}),
			q(47498, {	-- Rhan'ka's Lost Friend
				["sourceQuests"] = { 47497 },	-- Meet the Goldtusk Gang
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.5, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(271794, {	-- Deathsnap Elder
						["coord"] = { 36.9, 50.4, VOLDUN },
						["groups"] = { i(150916) },	-- Zulsan's Cracked Skull (QI!)
					}),
				},
			}),
			q(50656, {	-- Risky Rescue
				["provider"] = { "n", 134611 },	-- Seriah
				["coord"] = { 32.6, 48.4, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48840, {	-- Ruins-Level Marketing
				["sourceQuests"] = { 48322 },	-- A Goldtusk Greeting
				["provider"] = { "n", 122723 },	-- Rhan'ka
				["coord"] = { 43.4, 60.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["groups"] = {
					i(159676),	-- Goldtusk Inn Coupon (QI!)
				},
			}),
			q(48992, {	-- Sacred Remains
				["sourceQuests"] = { 48895 },	-- The Perfect Offering
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(277285,{	-- Sacred Remains
						["coords"] = {
							{ 53.7, 86.9, VOLDUN },
							{ 54.0, 88.7, VOLDUN },
							{ 54.1, 88.2, VOLDUN },
							{ 54.4, 86.2, VOLDUN },
							{ 54.7, 85.3, VOLDUN },
							{ 54.7, 87.9, VOLDUN },
							{ 55.3, 83.8, VOLDUN },
							{ 55.5, 84.4, VOLDUN },
							{ 55.9, 84.9, VOLDUN },
						},
						["groups"] = { i(153028) },	-- Sacred Remains (QI!)
					}),
				},
			}),
			q(50751, {	-- Sanctuary Under Siege
				["sourceQuests"] = { 50550 },	-- The Fall of Emperor Korthek
				["provider"] = { "n", 138519 },		-- Vorrik
				["coord"] = { 51.98, 27.71, VOLDUN },	-- Skycallers' Spire
				["races"] = HORDE_ONLY,
			}),
			q(50901, {	-- Saurid Surprise
				["sourceQuests"] = {
					51145,	-- Curse of Jani [Alliance]
					47442,	-- Curse of Jani [Horde]
				},
				["provider"] = { "n", 133859 },	-- Jani
				["coord"] = { 42.1, 72.1, VOLDUN },
			}),
			q(48656, {	-- Savage Saurolisks
				["sourceQuests"] = { 48655 },	-- The Chef's Apprentice
				["provider"] = { "o", 276187 },	-- Junji
				["coord"] = { 43.3, 78.6, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47871, {	-- Seafaring Necessities
				["sourceQuests"] = { 51773 },	-- The Ashvane Threat
				["provider"] = { "n", 124468 },	-- Randall Redmond
				["coord"] = { 45.6, 82.3, VOLDUN },
				["groups"] = {
					i(151628),	-- Seafaring Hat (QI!)
					o(272292, {
						["coord"] = { 47.9, 87.1, VOLDUN },
						["groups"] = { i(151629) },	-- Nautical Map (QI!)
					}),
					o(272294, {
						["coord"] = { 46.7, 87.2, VOLDUN },
						["groups"] = { i(151631) },	-- Weathered Spyglass (QI!)
					}),
				},
			}),
			q(47317, {	-- Searching for Survivors
				["sourceQuests"] = { 47320 },	-- A Balm to Calm
				["provider"] = { "n", 130341 },	-- Bladeguard Kaja
				["coord"] = { 56.8, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
			}),
			q(47716, {	-- Searching the Ruins
				["sourceQuests"] = { 48896 },	-- Knowledge of the Past
				["provider"] = { "n", 129514 },	-- Zandalari Warguard
				["coord"] = { 47.8, 82.3, VOLDUN },	-- Redrock Lowlands
				["races"] = HORDE_ONLY,
			}),
			q(47316, {	-- Secrets in the Sand
				["sourceQuests"] = { 47320 },	-- A Balm to Calm
				["provider"] = { "n", 122583 },	-- Meerah
				["coord"] = { 56.7, 50.5, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(271844, {	-- Rakera's Journal Page
						["coords"] = {
							{ 52.8, 41.8, VOLDUN },
							{ 52.8, 46.4, VOLDUN },
							{ 55.8, 48.7, VOLDUN },
							{ 56.3, 43.9, VOLDUN },
						},
						["groups"] = { i(151346) },	-- Rakera's Journal Page (QI!)
					}),
					i(158936),	-- Rakera's Journal
				},
			}),
			q(50794, {	-- Seeking Shelter
				["sourceQuests"] = { 50561 },	-- Sulthis' Stone
				["provider"] = { "n", 134162 },	-- Julwaba
				["coord"] = { 47.0, 75.6, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49005, {	-- Shattered and Broken
				["sourceQuests"] = { 48987 },	-- Valley of Sorrows
				["provider"] = { "n", 127989 },	-- Meijani
				["coord"] = { 53.0, 78.8, VOLDUN },	-- Valley of Sorrows
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155455),	-- Ring of Akunda's Chosen
					i(161268),	-- Lastwind Bracers
					i(161270),	-- Scorching Sands Wristguards
					i(161272),	-- Resilient Outcast's Bands
					i(161274),	-- Exiled Veteran's Bindings
				},
			}),
			q(48331, {	-- Siphoning Souls
				["sourceQuests"] = {
					49001,	-- Inconvenient Spirits
					48332,	-- Ranishu Are Resources
					48334,	-- They've Got Golems
				},
				["provider"] = { "n", 129450 },	-- Tacha
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(154051),	-- Salvaged Soulcatcher Totem (QI!)
				},
			}),
			q(49335, {	-- Skycaller Slaughter
				["provider"] = { "n", 128691 },	-- Izarn
				["coord"] = { 32.6, 48.4, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48534, {	-- Snarltooth's Last Laugh
				["sourceQuests"] = {
					48531,	-- Mystery Meat
					48533,	-- Vol'duni Fried Chicken
				},
				["provider"] = { "n", 126085 },	-- Mugjabu
				["coord"] = { 42.1, 76.2, VOLDUN },
				["races"] = HORDE_ONLY,
				-- SQ needs verification.
				["groups"] = {
					i(152573),	-- Snarltooth's Head (QI!)
				},
			}),
			q(48790, {	-- Stolen Goods
				["sourceQuests"] = { 48846 },	-- Liquid Motivation
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(282633, {
						["coord"] = { 40.8, 74.5, VOLDUN },
						["groups"] = { i(158903) },	-- Alpaca Butter (QI!)
					}),
					o(282635, {
						["coord"] = { 40.7, 74.5, VOLDUN },
						["groups"] = { i(158904) },	-- Alpaca Hides (QI!)
					}),
					o(282632, {
						["coord"] = { 40, 75.6, VOLDUN },
						["groups"] = { i(158902) },	-- Fresh Water (QI!)
					}),
					o(282634, {
						["coord"] = { 40, 75.2, VOLDUN },
						["groups"] = { i(158901) },	-- Hyena Jerky (QI!)
					}),
					o(282631, {
						["coord"] = { 40.1, 75.4, VOLDUN },
						["groups"] = { i(158876) },	-- Medicinal Herbs (QI!)
					}),
					o(282636, {
						["coord"] = { 40.8, 74.4, VOLDUN },
						["groups"] = { i(158905) },	-- Sezahjin's Meat Pies (QI!)
					}),
				},
			}),
			q(48550, {	-- Stolen Satchels
				["sourceQuests"] = { 47959 },	-- The Warguard's Trail
				["provider"] = { "n", 126696 },	-- Jorak
				["coord"] = { 53.2, 66.2, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152660),	-- Weathered Satchel (QI!)
					i(161275),	-- Exiled Veteran's Armbands
					i(155400),	-- Exiled Veteran's Wargreaves
					i(155401),	-- Lastwind Trousers
					i(161269),	-- Lastwind Wristguards
					i(155402),	-- Resilient Outcast's Greaves
					i(161273),	-- Resilient Outcast's Wristguards
					i(161271),	-- Scorching Sands Bindings
					i(155403),	-- Scorching Sands Breeches
					--
					a(i(160388)),	-- Darkwater Bands
					a(i(160394)),	-- Dread Corsair Shackles
					a(i(160391)),	-- Stormchaser Coils
					a(i(160385)),	-- Tidespeaker Bracers
				},
			}),
			q(50561, {	-- Sulthis' Stone
				["sourceQuests"] = { 48315 },	-- Hollow, Empty Eyes
				["provider"] = { "o", 281583 },	-- Ancient Reliquary
				["coord"] = { 48.8, 74.2, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(157865),	-- Sulthis' Stone (QI!)
					i(159984),	-- Exiled Veteran's Girdle
					i(159988),	-- Exiled Veteran's Stompers
					i(159985),	-- Lastwind Sash
					i(159989),	-- Lastwind Slippers
					i(159987),	-- Resilient Outcast's Clasp
					i(159990),	-- Resilient Outcast's Sabatons
					i(159991),	-- Scorching Sands Boots
					i(159986),	-- Scorching Sands Girdle
				},
			}),
			q(49437, {	-- Tattered Note
				["sourceQuests"] = { 49668 },	-- Light Up the Gulch
				["provider"] = { "o", 278368 },	-- Tattered Note
				["coord"] = { 54.5, 34.2, VOLDUN },	-- Slithering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(50551, {	-- Temple of Sethraliss: Avatar of the Loa
				["sourceQuests"] = { 50702 },	-- Defeat Jakra'zet
				["provider"] = { "n", 129588 },	-- Vorrik
				["coord"] = { 27.0, 52.6, VOLDUN },	-- Sanctuary of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(50904, {	-- The Abandoned Passage
				["sourceQuests"] = { 50617 },	-- Atul'Aman
				["provider"] = { "n", 135625 },	-- Vorrik
				["coord"] = { 43.0, 68.2, VOLDUN },	-- Abandoned Passage
				["races"] = HORDE_ONLY,
			}),
			q(51773, {	-- The Ashvane Threat
				["sourceQuests"] = { 51668 },	-- Mojambo
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.4, 75.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(51717, {	-- The Best Honey In Vol'dun
				["sourceQuests"] = {
					47501,	-- Dirty Work for Dirty Drinks
					47498,	-- Rhan'ka's Lost Friend
				},
				["provider"] = { "n", 138749 },	-- Rhan'ka
				["coord"] = { 37.4, 51.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48320, {	-- The Best Kill is Overkill
				["sourceQuests"] = { 47638 },	-- Powerful Spirits
				["provider"] = { "n", 123729 },	-- Volni
				["coord"] = { 42.7, 61.0, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47873, {	-- The Captain's Cache
				["sourceQuests"] = { 51810 },	-- Captain Hartford
				["provider"] = { "n", 139070 },	-- Captain Redmond
				["coord"] = { 43.2, 90.8, VOLDUN },
			}),
			q(48655, {	-- The Chef's Apprentice
				["sourceQuests"] = {
					48531,	-- Mystery Meat
					48533,	-- Vol'duni Fried Chicken
				},
				["provider"] = { "n", 126108 },	-- Sezahjin
				["coord"] = { 43.6, 76.7, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47580, {	-- The Curse of Mepjila
				["sourceQuests"] = { 47928 },	-- Offering for the Loa
				["provider"] = { "n", 123052 },	-- Kimbul
				["coord"] = { 56.6, 10.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151826),	-- Spirit Mask (QI!)
				},
			}),
			q(51053, {	-- The Day the Port Fell
				["sourceQuests"] = { 48324 },	-- Lost in Zem'lan
				["provider"] = { "n", 128261 },	-- First Mate Jamboya
				["coord"] = { 35.4, 83.7, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(159747),	-- First Mate Jamboya's Medallion (QI!)
				},
			}),
			q(47571, {	-- The Elder's Wisdom
				["sourceQuests"] = {
					47943,	-- Crab Trapping
					47570,	-- Hidden Motives
					47577,	-- They Came From The Sea
				},
				["provider"] = { "n", 134098 },	-- Torka
				["coord"] = { 61.9, 22.3, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50550, {	-- The Fall of Emperor Korthek
				["sourceQuests"] = {
					50750,	-- Infuriating the Emperor
					50752,	-- Relics of Sethraliss
				},
				["provider"] = { "n", 138411 },	-- Vorrik
				["coord"] = { 51.9, 28.7, VOLDUN },	-- Skycallers' Spire
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155417),	-- Keeper's Crescent
					i(155440),	-- Korthek's Greatstaff
					i(160032),	-- Korthek's Staff
					i(155444),	-- Sethraliss-Blessed Greatblade
					i(160033),	-- Sethraliss-Blessed Shortblade
					i(155434),	-- Skycaller's Ceremonial Mace
					i(160034),	-- Spireguard's Greatbow
					i(155418),	-- Spireguard's Waraxe
					--
					a(i(161292)),	-- Grimestone Spellmaul
					a(i(155146)),	-- Swinestained Pummeler
				},
			}),
			q(51061, {	-- The First Time I Died
				["sourceQuests"] = { 51059 },	-- The Golden Isle
				["provider"] = { "n", 136779 },	-- First Mate Jamboya
				["coord"] = { 30.2, 86.4, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51059, {	-- The Golden Isle
				["sourceQuests"] = {
					51057,	-- Maroon 'em with Fire
					47499,	-- The Grinning Idols
				},
				["provider"] = { "n", 136310 },	-- First Mate Jamboya
				["coord"] = { 33.2, 81.7, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47502, {	-- The Great Cranium Caper
				["sourceQuests"] = {
					47501,	-- Dirty Work for Dirty Drinks
					47498,	-- Rhan'ka's Lost Friend
				},
				["provider"] = { "n", 138749 },	-- Rhan'ka
				["coord"] = { 37.4, 51.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(271793, {	-- Grenja's Skull
						["coord"] = { 47.5, 58.1, VOLDUN },
						["groups"] = { i(151220) },	-- Grenja's Skull (QI!)
					}),
					o(271792, {	-- Man'zul's Skull
						["coord"] = { 47, 59.8, VOLDUN },
						["groups"] = { i(151218) },	-- Man'zul's Skull (QI!)
					}),
					o(271795, {	-- Volni's Skull
						["coord"] = { 46.4, 57.8, VOLDUN },
						["groups"] = { i(151219) },	-- Volni's Skull (QI!)
					}),
					i(161176),	-- Sunbeaten Oasis Band
					i(161177),	-- Resilient Outcast's Handlers
					i(161178),	-- Lastwind Handlers
					i(161179),	-- Exiled Veteran's Handlers
					i(161180),	-- Scorching Sands Handlers
				},
			}),
			q(47499, {	-- The Grinning Idols
				["sourceQuests"] = {
					51056,	-- My Last Day Alive
					51055,	-- The Yard Arm of the Law
				},
				["provider"] = { "n", 136309 },	-- First Mate Jamboya
				["coord"] = { 35.3, 83.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153351),	-- Idol of Binding (QI!)
					i(151021),	-- Idol of Immortality (QI!)
					i(153352),	-- Idol of Sacrifice (QI!)
					i(155456),	-- Zem'lan Crewman's Cloak
					i(159976),	-- Liberated Idol of Binding
				},
			}),
			q(49340, {	-- The Keepers' Keys
				["sourceQuests"] = {
					49334,	-- A Powerful Prisoner
					50641,	-- Break Their Ranks
					49327,	-- Push Them Back!
				},
				["provider"] = { "n", 129519 },	-- Vorrik
				["coord"] = { 27.5, 52.5, VOLDUN },	-- Sanctuary of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(49667, {	-- The Little Ones
				["sourceQuests"] = { 50745 },	-- Infiltrating the Empire
				["provider"] = { "n", 135355 },	-- Meerah
				["coord"] = { 47.9, 36.4, VOLDUN },	-- Vorrik's Sanctum
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160019),	-- Exiled Veteran's Gauntlets
					i(159992),	-- Exiled Veteran's Legguards
					i(160018),	-- Lastwind Gloves
					i(159993),	-- Lastwind Legwraps
					i(159994),	-- Resilient Outcast's Breeches
					i(160017),	-- Resilient Outcast's Handguards
					i(160020),	-- Scorching Sands Gloves
					i(159995),	-- Scorching Sands Pants
					--
					a(i(158706)),	-- Darkwater Trousers
					a(i(158703)),	-- Dread Corsair Chausses
					a(i(158705)),	-- Stormchaser Links
					a(i(158704)),	-- Tidespeaker Legwraps
				},
			}),
			q(49227, {	-- The Master Key
				["sourceQuests"] = { 47939 },	-- If the Key Fits...
				["provider"] = { "n", 128422 },	-- Keerin
				["coord"] = { 47.5, 86.1, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153420),	-- Morrison's Master Key (QI!)
				},
			}),
			q(49662, {	-- The Missing Key
				["sourceQuests"] = { 49340 },	-- The Keepers' Key
				["provider"] = { "n", 128694 },	-- Vorrik
				["coord"] = { 27.1, 52.5, VOLDUN },	-- Sanctuary of the Devoted
				["races"] = HORDE_ONLY,
			}),
			q(48895, {	-- The Perfect Offering
				["sourceQuests"] = { 48684 },	-- On the Move
				["provider"] = { "n", 127691 },	-- Jorak
				["coord"] = { 52.8, 89.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152894),	-- Jorak's Offering (QI!)
				},
			}),
			q(47965, {	-- The Ruined Temple
				["sourceQuests"] = { 47571 },	-- The Elder's Wisdom
				["provider"] = { "n", 123063 },	-- Elder Kuppaka
				["coord"] = { 61.6, 20.5, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(50539, {	-- The Secrets of Zul'Ahjin
				["sourceQuests"] = { 50770 },	-- Effective Antivenom
				["provider"] = { "n", 134533 },	-- Serrik
				["coord"] = { 47.0, 75.6, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
			}),
			q(48554, {	-- The Source of the Problem
				["sourceQuests"] = {
					48553,	-- Let it Flow
					48555,	-- We Can Salvage the Seeds
					48551,	-- Wither Without Water
				},
				["provider"] = { "n", 126814 },	-- Ranah
				["coord"] = { 53.8, 69.4, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155392),	-- Scorching Sands Grips
					i(155393),	-- Exiled Veteran's Handguards
					i(155394),	-- Lastwind Grips
					i(155395),	-- Resilient Outcast's Gloves
					i(155448),	-- Deserted Divining Rod
					i(159975),	-- Scorched Plateau Defender
					i(245263, {	-- Zocalo Drinks (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(48335, {	-- The Strongest Rope in Vol'dun
				["sourceQuests"] = {
					49001,	-- Inconvenient Spirits
					48332,	-- Ranishu Are Resources
					48334,	-- They've Got Golems
				},
				["provider"] = { "n", 129453 },	-- Kenzou
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(153699),	-- Sandspinner Silk (QI!)
				},
			}),
			q(51772, {	-- The Tortaka Tribe
				["sourceQuests"] = { 51668 },	-- Mojambo
				["provider"] = { "n", 126108 },	-- Sezahjin
				["coord"] = { 43.6, 76.7, VOLDUN },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(47959, {	-- The Warguard's Trail
				["sourceQuests"] = {
					47321,	-- Knickknack Takeback
					47317,	-- Searching for Survivors
					47316,	-- Secrets in the Sand
				},
				["provider"] = { "n", 130341 },	-- Bladeguard Kaja
				["coord"] = { 56.8, 50.4, VOLDUN },	-- Vulpera Hideaway
				["races"] = HORDE_ONLY,
			}),
			q(51055, {	-- The Yard Arm of the Law
				["sourceQuests"] = { 51054 },	-- Overdue Mutiny
				["provider"] = { "n", 136309 },	-- First Mate Jamboya
				["coord"] = { 35.3, 83.1, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(47577, {	-- They Came From The Sea
				["sourceQuests"] = { 51772 },	-- The Tortaka Tribe
				["provider"] = { "n", 134098 },	-- Torka
				["coord"] = { 61.9, 22.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160585),	-- Soulcaller Scroll (QI!)
				},
			}),
			q(48657, {	-- They Might Be Delicious
				["sourceQuests"] = { 48655 },	-- The Chef's Apprentice
				["provider"] = { "o", 276187 },	-- Junji
				["coord"] = { 43.3, 78.6, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(275099, {	-- Saurolisk Egg
						i(152647),	-- Saurolisk Egg (QI!)
					}),
					i(159997),	-- Exiled Veteran's Vambraces
					i(159978),	-- Junji's Egg Timer
					i(159996),	-- Lastwind Cuffs
					i(159998),	-- Resilient Outcast's Bracers
					i(159999),	-- Scorching Sands Bracers
				},
			}),
			q(48334, {	-- They've Got Golems
				["provider"] = { "n", 129450 },	-- Tacha
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161181),	-- Golem Socket Band
					i(159977),	-- Vindictive Golem Core
				},
			}),
			q(48326, {	-- This Be Mutiny
				["sourceQuests"] = {
					51060,	-- Our Share of the Plunder
					51061,	-- The First Time I Died
				},
				["provider"] = { "n", 136317 },	-- Cursed Skeleton
				["coord"] = { 29.0, 88.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161172),	-- Scorching Sands Footgear
					i(161173),	-- Resilient Outcast's Footgear
					i(161174),	-- Lastwind Footgear
					i(161175),	-- Exiled Veteran's Footgear
					i(160013),	-- Exiled Veteran's Legplates
					i(160014),	-- Lastwind Leggings
					i(160015),	-- Resilient Outcast's Legguards
					i(160016),	-- Scorching Sands Legwraps
				},
			}),
			q(48850, {	-- Tongo
				["sourceQuests"] = { 48846 },	-- Liquid Motivation
				["provider"] = { "n", 126576 },	-- Razgaji
				["coord"] = { 43.3, 75.4, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(158875),	-- Tongo's Head (QI!)
				},
			}),
			q(48894, {	-- Trial of Truth
				["sourceQuests"] = {
					48887,	-- Cleanse the Mind
					48888,	-- It Springs Eternal
				},
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(50328, {	-- Unconventional Aromatics
				["sourceQuests"] = { 51718 },	-- Harvesting "Honey"
				["provider"] = { "n", 133833 },	-- Rikati
				["coord"] = { 40.4, 55.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(160665),	-- Batch of Bilewing "Honey" (QI!)
				},
			}),
			q(47324, {	-- Unlikely Allies
				["sourceQuests"] = { 50561 },	-- Sulthis' Stone
				["provider"] = { "n", 134533 },	-- Serrik
				["coord"] = { 47.0, 75.7, VOLDUN },	-- Zul'Ahjin
				["races"] = HORDE_ONLY,
			}),
			q(49669, {	-- Unleash the Beasts
				["sourceQuests"] = { 49668 },	-- Light Up the Gulch
				["provider"] = { "n", 135099 },	-- Kiro
				["coord"] = { 55.4, 35.0, VOLDUN },	-- Slithering Gulch
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161182),	-- Cracked Crawg Shackles
				},
			}),
			q(50757, {	-- Untame Slaughter
				["sourceQuests"] = { 49668 },	-- Light Up the Gulch
				["provider"] = { "n", 135099 },	-- Kiro
				["coord"] = { 55.4, 35.0, VOLDUN },	-- Slithering Gulch
				["races"] = HORDE_ONLY,
			}),
			q(48987, {	-- Valley of Sorrows
				["sourceQuests"] = { 48715 },	-- Akunda Awaits
				["provider"] = { "n", 127980 },	-- Akunda the Sensible
				["coord"] = { 53.6, 91.4, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(49003, {	-- Vengeance From Above
				["sourceQuests"] = {
					49141,	-- Diplomacy and Dominance
					50748,	-- Don't Drop It... Yes
				},
				["provider"] = { "n", 135110 },	-- Vorrik
				["coord"] = { 47.1, 39.1, VOLDUN },	-- Rakjan's Peak
				["races"] = HORDE_ONLY,
			}),
			q(48991, {	-- Vile Infestation
				["sourceQuests"] = { 48895 },	-- The Perfect Offering
				["provider"] = { "n", 127992 },	-- Akunda the Exalted
				["coord"] = { 53.2, 90.2, VOLDUN },	-- Temple of Akunda
				["races"] = HORDE_ONLY,
			}),
			q(48533, {	-- Vol'duni Fried Chicken
				["sourceQuests"] = { 48529 },	-- Hungry Mouths to Feed
				["provider"] = { "n", 126108 },	-- Sezahjin
				["coord"] = { 43.6, 76.7, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152571),	-- Roasted Buzzard (QI!)
					i(152572),	-- Sezahjin's Trusty Vulture Bow (QI!)
				},
			}),
			q(51164, {	-- WANTED: Cobra Excursion Participants
				["provider"] = { "o", 287442 },	-- Wanted: Cobra Excursion Participants
				["coord"] = { 43.6, 59.9, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51165, {	-- WANTED: Sandscout Vesarik
				["provider"] = { "o", 287441 },	-- Wanted: Sandscout Vesarik
				["coord"] = { 26.9, 52.7, VOLDUN },	-- Terrace of the Devoted
			}),
			q(51162, {	-- WANTED: Taz'raka the Traitor
				["provider"] = { "o", 287440 },	-- Wanted: Taz'raka
				["coord"] = { 38.8, 77.0, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(51161, {	-- WANTED: Za'roco
				["sourceQuests"] = { 51668 },	-- Mojambo
				["provider"] = { "o", 287398 },	-- Wanted: Za'roco
				["coord"] = { 43.1, 76.5, VOLDUN },
				["races"] = HORDE_ONLY,
			}),
			q(48585, {	-- Wasteland Survivor
				["sourceQuests"] = { 50794 },	-- I've Got Your Back
				["provider"] = { "o", 273854 },	-- Backpack
				["coord"] = { 40.4, 73.6, VOLDUN },
				["races"] = HORDE_ONLY,
				-- SQ needs verification. i saw it before turning in "i heard you lost the herd," not sure if it pops up any earlier than this.
				["groups"] = {
					o_repeated({
						i(152601),	-- Scavenged Supplies (QI!)
						o(273836),	-- Backpack
						o(273837),	-- Supply Pouch
					}),
				},
			}),
			q(48555, {	-- We Can Salvage the Seeds
				["sourceQuests"] = { 51829 },	-- Ranah's Wrench
				["provider"] = { "n", 126814 },	-- Ranah
				["coord"] = { 53.8, 69.4, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152644),	-- Thistlevine Seeds (QI!)
				},
			}),
			q(48551, {	-- Wither Without Water
				["sourceQuests"] = { 51829 },	-- Ranah's Wrench
				["provider"] = { "n", 126814 },	-- Ranah
				["coord"] = { 53.8, 69.4, VOLDUN },	-- Withering Gulch
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(152630),	-- Ranah's Watering Can (QI!)
				},
			}),
			q(47576, {	-- Wrath of the Tiger
				["sourceQuests"] = { 47580 },	-- The Curse of Mepjila
				["provider"] = { "n", 123052 },	-- Kimbul
				["coord"] = { 56.6, 10.3, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(161187),	-- Exiled Veteran's Leg Armor
					i(161183),	-- Honorable Tiger's Cloak
					i(161186),	-- Lastwind Pants
					i(161185),	-- Resilient Outcast's Legplates
					i(161184),	-- Scorching Sands Leggings
					--
					a(i(161296)),	-- Autumnvale Hunting Rifle
				},
			}),
			q(48330, {	-- Zandalari Treasure Trove
				["sourceQuests"] = {
					49139,	-- An Army's Arsenal
					48331,	-- Siphoning Souls
					48335,	-- The Strongest Rope in Vol'dun
				},
				["provider"] = { "n", 129451 },	-- Omi
				["coord"] = { 45.3, 46.2, VOLDUN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(155421),	-- Jam'jen's Shortbow
					i(155445),	-- Mugabu's Soulwand
					i(155432),	-- Soul-Cursed Skullcracker
					i(160028),	-- Soul-Cursed Warglaive
					i(155433),	-- Soul-Cursed Warmaul
					i(155427),	-- Soulwrenching Claws
					i(155423),	-- Soulwrenching Shortblade
					i(155430),	-- Trapped Soul Warmace
					i(155438),	-- Trapped Soul Warstaff
					i(155431),	-- Zak'rajan's Hexmace
					--
					a(i(161290)),	-- Grimestone Greatmace
					a(i(161304)),	-- Mad-Butcher's Mace
					a(i(161301)),	-- Storm's Wake Mace
				},
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 50 },
				["races"] = HORDE_ONLY,
			},{
				-- TODO: probably can't do after a certain level?
				q(47647, {	-- Monsters of Zem'lan
					["sourceQuests"] = {
						51054,	-- Overdue Mutiny
					},
				}),
				q(50805, {	-- Skycaller Shutdown
					["sourceQuests"] = {
						50751,	-- Sanctuary Under Siege
					},
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(VOLDUN, {
			n(QUESTS, {
				q(51648),	-- Vol'dun - select "The Nimble" as your Akunda title during "Trial of Truth"
				q(51649),	-- Vol'dun - select "the Serene" as your Akunda title during "Trial of Truth"
				q(51650),	-- Vol'dun - select "the Courageous" as your Akunda title during "Trial of Truth"
				q(54525),	-- looting Loose Parts from the bridge elites during the Vol'dun incursion, as Horde (the associated WQ wasn't up, not sure if that makes a difference)
				q(49414),	-- Vol'dun - beat Akunda the Exalted to trigger the cinematic and phase the area
				q(51685),	-- Vol'dun - triggers when turning in "Akunda's Blessing". Probably controls the activation of the Akunda buff idol in Dazar'alor
				q(51684),	-- Vol'dun - triggers when turning in "Mark of the Loa". Probably controls the activation of the Kimbal buff idol in Dazar'alor
				q(49416),	-- Vol'dun - triggers during "The Keeper's Keys" after the cinematic
				q(47887),	-- Vol'dun - triggered when entering the Ashvane Encampment. Possibly controls the spawn of Randall Redmond?
				q(50522),	-- Vol'dun - triggered after getting a food buff from the goldtusk inn's "All-You-Can-Eat Breakfast Buffet". Could also be related to feeding Tarkaj during "A Goldtusk Greeting"
				q(49684),	-- triggered when picking the staff on "Armed and Ready"
				q(49685),	-- triggered when picking the scythe/glaive thing on "Armed and Ready"
			}),
		}),
	}),
})));
