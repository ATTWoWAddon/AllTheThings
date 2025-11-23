---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(QUESTS, {
			q(50616, {	-- A Bit of a Bind
				["sourceQuests"] = { 49818 },	-- Trouble at Fort Daelin
				["provider"] = { "n", 131002 },	-- Lieutenant Bauer
				["coord"] = { 30.2, 59.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156472),	-- Songstone (QI!)
					i(160345),	-- Zeth'jir Seacaller Signet
					i(160371),	-- Tidespeaker Belt
					i(160374),	-- Darkwater Waistcord
					i(160377),	-- Stormchaser Chain
					i(160380),	-- Dread Corsair Warbelt
				},
			}),
			q(50593, {	-- A Bloody Mess
				["sourceQuests"] = { 49998 },	-- Voices Below
				["altQuests"] = { 50694 },	-- A Bloody Mess (not sure under what circumstances you pick this version up)
				["provider"] = { "i", 158195 },	-- Frothing Vial
				["races"] = ALLIANCE_ONLY,
				["crs"] = { 130094 },	-- Tidesage Seacaller
				["groups"] = {
					i(158139),	-- Tideblood (QI!)
				},
			}),
			q(50781, {	-- A Bridge Too Far
				["sourceQuests"] = { 50784 },	-- Eye of the Storm
				["provider"] = { "n", 136933 },	-- Brother Pike
				["coord"] = { 69.8, 36.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50814, {	-- A Horrible Place
				["sourceQuests"] = {
					50704,	-- Anchors Aweigh Too Much
					50697,	-- Bomb Beats Rock
					50696,	-- Fun With Magnets
					50691,	-- Not on Our Payroll
				},
				["provider"] = { "n", 135367 },	-- Grettle Haribull
				["coord"] = { 44.2, 54.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50612, {	-- A House Divided
				["sourceQuests"] = { 50611 },	-- Storm's Vengeance
				["provider"] = { "n", 134639 },	-- Brother Pike
				["coord"] = { 66.0, 47.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50742, {	-- All Laid Out For Us
				["sourceQuests"] = { 50793 },	-- Cave Commotion
				["provider"] = { "o", 290993 },	-- Irontide Loot
				["coord"] = { 35.8, 56.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53099, {	-- A Mote of Cosmic Truth
				["sourceQuests"] = { 50389 },	-- Malign Inspiration
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
			}),
			q(50704, {	-- Anchors Aweigh Too Much
				["sourceQuests"] = { 50675 },	-- Treasure Hunting
				["provider"] = { "n", 134702 },	-- Nedly Grinner
				["coord"] = { 44.4, 55.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158724),	-- Old Ship Parts (QI!)
					i(158682),	-- Anchor-Strapped Barrier
					i(158684),	-- Salvage-Hunter's Torch
					i(160332),	-- Mud-Slicked Capote
				},
			}),
			q(50733, {	-- A New Dawn
				["sourceQuests"] = { 50824 },	-- Storm's End
				["provider"] = { "n", 137692 },	-- Taelia
				["coord"] = { 78.2, 28.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(50367, {	-- Anger in a Bottle
				["sourceQuests"] = { 50622 },	-- Deal's Off
				["provider"] = { "i", 157849 },	-- Foul Smelling Flask
				["coord"] = { 42.8, 69.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["crs"] = {
					130075,	-- Briarback Geomancer
					130073,	-- Briarback Lookout
					130395,	-- Briarback Warcaller
					134425,	-- Hulking Kraulguard
				},
				["groups"] = {
					i(157850),	-- Foul-Smelling Sample (QI!)
				},
			}),
			q(49832, {	-- An Illegible Scroll
				["provider"] = { "o", 280576 },	-- Encased Scroll
				["coord"] = { 32.2, 40.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(50672, {	-- Any Ammo Will Do
				["sourceQuests"] = {
					50644,	-- Facing the Invaders
					50653,	-- Reclaiming Our Defenses
				},
				["provider"] = { "n", 131003 },
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156482),	-- Zeth'jir Harpoon (QI!)
				},
			}),
			q(50041, {	-- A Pocket Full of Shells
				["sourceQuests"] = { 50157 },	-- There's Gold in Them There Fields
				["provider"] = { "n", 129808 },	-- Farmer Goldfield
				["coord"] = { 50.7, 73.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160561),	-- Goldfield's Knife (QI!)
					i(156583),	-- Salvaged Azerite Ammunition (QI!)
				},
			}),
			q(50640, {	-- A Question of Quillpower
				["sourceQuests"] = { 50368 },	-- Terror of the Kraul
				["provider"] = { "n", 133953 },	-- Sergeant Calvin
				["coord"] = { 44.8, 75.8, 1183 },	-- Thornheart
				["races"] = ALLIANCE_ONLY,
			}),
			q(50065, {	-- A Reason to Stay
				["provider"] = { "o", 244983 },	-- Dirty Pocketwatch
				["coord"] = { 49.8, 73.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156577),	-- Battered Toy Sword (QI!)
					i(156578),	-- Tarnished Locket (QI!)
				},
			}),
			q(49725, {	-- A Risky Ploy
				["sourceQuests"] = { 51401 },	-- Carry On
				["provider"] = { "n", 129999 },	-- Taelia
				["coord"] = { 59.2, 69.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155859),	-- Military Whistle (QI!)
					i(160408),	-- Stormwake Pendant (QI!)
				},
			}),
			q(52795, {	-- A Saur Point
				["sourceQuests"] = { 52793 },	-- Circle the Wagons (must be on quest)
				["provider"] = { "n", 141603 },	-- Mallory Hood
				["coord"] = { 64.8, 76.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50705, {	-- A Snake with Three Heads
				["sourceQuests"] = {
					50672,	-- Any Ammo Will Do
					50679,	-- Piercing the Shield
					50698,	-- Problem Solving With Gunpowder
				},
				["provider"] = { "n", 131003 },
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158332),	-- Zeth'jir Channeling Rod (QI!)
				},
			}),
			q(50797, {	-- A Turtle's Invitation
				["sourceQuests"] = { 50753 },	-- Earl-E Bot Gets the Worm
				["provider"] = { "n", 135033 },	-- Maokka
				["coord"] = { 42.5, 54.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(51205, {	-- Aww, Rats!
				["provider"] = { "n", 136574 },	-- Charles Davenport
				["coord"] = { 29.8, 67.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159882),	-- Bug Zapper (QI!)
				},
			}),
			q(49908, {	-- Back to Brennadam
				["sourceQuests"] = { 49831 },	-- From the Depths
				["provider"] = { "n", 131000 },	-- Commander Kellam
				["coord"] = { 34.0, 54.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50553, {	-- Back to the Lab
				["sourceQuests"] = {	-- popped before turning in 'free the farmhands.'  i turned in 'the bee team' last, but i'm not sure if the other 2 are actually required.
					50493,	-- Fetching Wrex
					50165,	-- The Bee Team
					50534,	-- Wendigo Away
				},
				["provider"] = { "n", 134447 },	-- Lost Farmhand
				["coord"] = { 72.7, 72.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158558),	-- Luminous Honey Jar
				},
			}),
			q(51251, {	-- Basement Dwellers
				["provider"] = { "n", 136574 },	-- Charles Davenport
				["coord"] = { 29.8, 67.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159839),	-- Spider Silk (QI!)
				},
			}),
			q(51386, {	-- Battle Victorious
				["sourceQuests"] = {
					51220,	-- Deep Sea Venture
					51222,	-- What's Yours is Mined
				},
				["provider"] = { "n", 137554 },	-- Toki
				["coord"] = { 34.3, 26.2, STORMSONG_VALLEY },
				["groups"] = bubbleDown({ ["races"] = ALLIANCE_ONLY }, {	-- even the hidden Horde appearances can only be unlocked by completing the quest on an Alliance character
					i(160335),	-- Tidespeaker Soles
					i(160338),	-- Darkwater Waders
					i(160341),	-- Stormchaser Footgear
					i(160344),	-- Dread Corsair Stompers
					i(160373),	-- Tidespeaker Waistwrap
					i(160376),	-- Darkwater Clasp
					i(160379),	-- Stormchaser Buckle
					i(160382),	-- Dread Corsair Cincture
					--
					h(i(161280)),	-- Lastwind Shoes
					h(i(161283)),	-- Exiled Veteran's Sabatons
					h(i(161282)),	-- Resilient Outcast's Footguards
					h(i(161281)),	-- Scorching Sands Treads
				}),
			}),
			q(52070, {	-- Bauer Backup
				["sourceQuests"] = { 51712 },	-- Eye For an Eye
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 51.2, 36.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,	-- for "Freedom for the Sea"
			}),
			q(51214, {	-- Be A Dear
				["sourceQuests"] = { 51218 },	-- Undelivered Package
				["provider"] = { "n", 136658 },	-- Marie Davenport
				["coord"] = { 30.3, 66.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50594, {	-- Beneath the Veil
				["sourceQuests"] = { 49998 },	-- Voices Below
				["provider"] = { "n", 134639 },	-- Brother Pike
				["coord"] = { 66.1, 47.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158211),	-- Abyssal Beacon (QI!)
					i(155229),	-- Abyssal Beacon
					i(155228),	-- Tideguard Bulwark
					i(155231),	-- Purified Tideblood Band
				},
			}),
			q(50353, {	-- Boaring Company
				["sourceQuests"] = { 50622 },	-- Deal's Off
				["provider"] = { "n", 133953 },	-- Sergeant Calvin
				["coord"] = { 44.7, 64.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50697, {	-- Bomb Beats Rock
				["sourceQuests"] = { 50675 },	-- Treasure Hunting
				["qgs"] = {
					134710,	-- Moxie Lockspinner
					134882,	-- Moxie Lockspinner (alternate ID)
				},
				["coord"] = { 44.4, 55.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49744, {	-- Bombs, Away
				["sourceQuests"] = { 51552 },	-- The Days Are Just Packed
				["provider"] = { "n", 130190 },	-- Sergeant Calvin
				["coord"] = { 57.6, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155877),	-- Horde Explosive (QI!)
				},
			}),
			q(51490, {	-- Border Issues
				["sourceQuests"] = { 51489 },	-- Time to Leave
				["provider"] = { "n", 137866 },	-- Taelia
				["coord"] = { 57.9, 86.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49792, {	-- Bound and Oppressed
				["sourceQuests"] = { 49887 },	-- Forced Labor
				["provider"] = { "n", 130904 },	-- Samuel Williams
				["coord"] = { 64.6, 62.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50810, {	-- Break 'Em Out
				["sourceQuests"] = { 52069 },	-- More Fodder
				["provider"] = { "n", 134720 },	-- Leo Shealds
				["coord"] = { 42.9, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51545, {	-- Breaker Bad
				["sourceQuests"] = { 51540 },	-- Explosive Situation
				["provider"] = { "n", 137453 },	-- Loroja
				["coord"] = { 35.7, 31.1, STORMSONG_VALLEY },
			}),
			q(51159, {	-- Bring out the Big Gun
				["sourceQuests"] = { 50909 },	-- Never Outgunned (in log or completed)
				["provider"] = { "n", 136481 },	-- Cannon
				["coord"] = { 60.2, 54.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51728, {	-- Burn It All Down
				["sourceQuests"] = {	-- may also require 'get out of here'
					51752,	-- Grizzled
					51711,	-- Having a Blast
					51881,	-- The Mine Sweeper
				},
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 46.4, 36.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160604),	-- Patched Mine Sweeper (QI!)
				},
			}),
			q(51401, {	-- Carry On
				["sourceQuests"] = { 51490 },	-- Border Issues
				["provider"] = { "n", 137866 },	-- Taelia
				["coord"] = { 57.9, 86.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(252395, {	-- Brennadam Coop (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(50621, {	-- Caught in the Net
				["sourceQuests"] = { 49818 },	-- Trouble at Fort Daelin
				["provider"] = { "n", 131002 },
				["coord"] = { 30.2, 59.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159752),	-- Fishbone Key (QI!)
				},
			}),
			q(50793, {	-- Cave Commotion
				["sourceQuests"] = { 50774 },	-- No Bot Left Behind
				["provider"] = { "n", 135067 },	-- Moxie Lockspinner
				["coord"] = { 42.6, 54.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51353, {	-- Cave of Ai'twen
				["sourceQuests"] = {
					51339,	-- Cleaning Bills
					51343,	-- Swimming Lessons
				},
				["provider"] = { "n", 135794 },	-- Scrollsage Nola
				["coord"] = { 40.4, 37.0, STORMSONG_VALLEY },
			}),
			q(50158, {	-- Checking Out the Collapse
				["sourceQuests"] = { 49755 },	-- Heavy Artillery
				["provider"] = { "n", 130694 },	-- Mayor Roz
				["coord"] = { 57.5, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(52793, {	-- Circle the Wagons
				["provider"] = { "n", 141769 },	-- Marilyn Hood
				["coord"] = { 60.2, 70.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51339, {	-- Cleaning Bills
				["sourceQuests"] = { 49832 },	-- An Illegible Scroll
				["provider"] = { "n", 135794 },	-- Scrollsage Nola
				["coord"] = { 40.6, 45.5, STORMSONG_VALLEY },
				["groups"] = {
					i(155237),	-- Nola's Shawl
					i(160384),	-- Tidespeaker Armbands
					i(160387),	-- Darkwater Armbands
					i(160390),	-- Stormchaser Wristguards
					i(160393),	-- Dread Corsair Wristguards
				},
			}),
			q(50359, {	-- Cleanup Duty
				["sourceQuests"] = { 50343 },	-- Mayhem at Mildenhall Meadery
				["provider"] = { "n", 132017 },	-- Ancel Mildenhall
				["coord"] = { 68.5, 67.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50706, {	-- Clearing the Delta
				["sourceQuests"] = {
					50672,	-- Any Ammo Will Do
					50679,	-- Piercing the Shield
					50698,	-- Problem Solving With Gunpowder
				},
				["provider"] = { "n", 131003 },
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51504, {	-- Cookie Delivery
				["sourceQuests"] = { 51335 },	-- Cookies and Cream
				["provider"] = { "n", 136658 },	-- Marie Davenport
				["coord"] = { 30.2, 66.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160302),	-- Box of Cookies (QI!)
				},
			}),
			q(51335, {	-- Cookies and Cream
				["sourceQuests"] = { 51215 },	-- Milking Goats
				["provider"] = { "n", 136658 },	-- Marie Davenport
				["coord"] = { 30.3, 66.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51203, {	-- Cry Wolf
				["provider"] = { "n", 136414 },
				["coord"] = { 31.8, 69.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50910, {	-- Dangerous Game
				["sourceQuests"] = { 52067 },	-- Survivors
				["provider"] = { "n", 135682 },	-- Patrick Eckhart
				["coord"] = { 57.8, 55.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52130, {	-- Deadliest Cache: Carpe Diem
				["sourceQuests"] = { 50418 },	-- Deadliest Cache: Sink and Swim
				["provider"] = { "n", 133576 },	-- Coxswain Hook
				["coord"] = { 26.0, 55.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50391, {	-- Deadliest Cache: Gun Fishin'
				["sourceQuests"] = { 50376 },	-- Deadliest Cache: Reel Big Fish
				["provider"] = { "n", 133577 },	-- Master Gunner Line
				["coord"] = { 25.9, 55.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157783),	-- Slagshot Slammer (QI!)
				},
			}),
			q(50376, {	-- Deadliest Cache: Reel Big Fish
				["sourceQuests"] = { 53045 },	-- Surveying the Wharf
				["provider"] = { "n", 133576 },	-- Coxswain Hook
				["coord"] = { 26.0, 55.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50418, {	-- Deadliest Cache: Sink and Swim
				["sourceQuests"] = { 50391 },	-- Deadliest Cache: Gun Fishin'
				["provider"] = { "n", 133578 },	-- "Sinker"
				["coord"] = { 25.8, 55.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50622, {	-- Deal's Off
				["sourceQuests"] = {
					50136,	-- Farming Stimulator
					50088,	-- Golden Fields Forever
				},
				["provider"] = { "n", 132118 },	-- Farmer Burton
				["coord"] = { 51.6, 66.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51220, {	-- Deep Sea Venture
				["sourceQuests"] = { 51427 },	-- I Like Turtles
				["provider"] = { "n", 137453 },
				["coord"] = { 35.7, 31.2, STORMSONG_VALLEY },
			}),
			q(53097, {	-- Despondent Ablutions
				["sourceQuests"] = { 50386 },	-- Flush Them Out
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
			}),
			q(50070, {	-- Detective Mildenhall
				["sourceQuests"] = { 50343 },	-- Mayhem at Mildenhall Meadery
				["provider"] = { "n", 132017 },	-- Ancel Mildenhall
				["coord"] = { 68.5, 67.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156628),	-- Brewmaster's Treatise Vol. 1 (QI!)
				},
			}),
			q(50064, {	-- Don't Go in the Basement
				["sourceQuests"] = {
					50359,	-- Cleanup Duty
					50070,	-- Detective Mildenhall
				},
				["provider"] = { "n", 132017 },	-- Ancel Mildenhall
				["coord"] = { 70.6, 69.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160331),	-- Apiarist's Protective Drape
					i(160346),	-- Honey-Artisan's Ring
				},
			}),
			q(51352, {	-- Don't Play with Matches
				["provider"] = { "n", 135795 },	-- Toki
				["coord"] = { 40.6, 45.5, STORMSONG_VALLEY },
			}),
			q(50741, {	-- Don't Turtle
				["sourceQuests"] = {
					50704,	-- Anchors Aweigh Too Much
					50697,	-- Bomb Beats Rock
					50696,	-- Fun With Magnets
					50691,	-- Not on Our Payroll
				},
				["provider"] = { "n", 134702 },	-- Nedly Grinner
				["coord"] = { 44.4, 55.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49746, {	-- Dousing the Flames
				["provider"] = { "n", 130694 },	-- Mayor Roz
				["coord"] = { 57.6, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50753, {	-- Earl-E Bot Gets the Worm
				["sourceQuests"] = { 50741 },	-- Don't Turtle
				["provider"] = { "n", 135067 },	-- Moxie Lockspinner
				["coord"] = { 42.6, 54.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158636),	-- Mud Worm Meat (QI!)
					i(158635),	-- Remote Earl-E Designator (QI!)
					i(160514, {	-- Maokka's Box
						i(158679),	-- Maokka's Carving
					}),
				},
			}),
			q(50645, {	-- Eeling in a Big One
				["sourceQuests"] = { 50635 },	-- The Shifting Tides
				["provider"] = { "n", 131014 },	-- Rikal
				["coord"] = { 34.9, 47.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158181),	-- Abyssal Fang (QI!)
				},
			}),
			q(51207, {	-- Ettin It Done
				["sourceQuests"] = { 51335 },	-- Cookies and Cream
				["provider"] = { "n", 136658 },	-- Marie Davenport
				["coord"] = { 30.2, 66.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160052),	-- Flour Bomb (QI!)
					i(160333),	-- Tidespeaker Shoes
					i(160336),	-- Darkwater Footwraps
					i(160339),	-- Stormchaser Footguards
					i(160342),	-- Dread Corsair Footguards
					i(160383),	-- Tidespeaker Wristwraps
					i(160386),	-- Darkwater Wristwraps
					i(160389),	-- Stormchaser Bindings
					i(160392),	-- Dread Corsair Armguards
				},
			}),
			q(51540, {	-- Explosive Situation
				["sourceQuests"] = { 51353 },	-- Cave of Ai'twen
				["provider"] = { "o", 290138 },	-- Bot Buster Bomb
				["coord"] = { 37.8, 28.5, STORMSONG_VALLEY },
				-- SQ needs confirmation
				["groups"] = {
					o(286954, {	-- Bot Buster Bomb
						i(160397),	-- Bot Buster Bomb (QI!)
					}),
					i(160556),	-- Bot Cluster Bomb (QI!)
				},
			}),
			q(51712, {	-- Eye for an Eye
				["sourceQuests"] = {
					51728,	-- Burn it All Down
					51720,	-- Get Shredded
					51723,	-- Saw Dusted
				},
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 51.2, 36.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50784, {	-- Eye of the Storm
				["sourceQuests"] = {
					50780,	-- Oathbound
					50783,	-- The Abyssal Council
				},
				["provider"] = { "n", 136497 },	-- Tideguard Victoria
				["coord"] = { 61.7, 36.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49995, {	-- Fabricated Fabrications
				["sourceQuests"] = { 49975 },	-- Rest in the Depths
				["provider"] = { "n", 131248 },	-- Samuel Williams
				["coord"] = { 66.4, 56.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156607),	-- Warship Blueprint (QI!)
				},
			}),
			q(50644, {	-- Facing the Invaders
				["sourceQuests"] = { 50635 },	-- The Shifting Tides
				["provider"] = { "n", 131003 },	-- Specialist Wembley
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50136, {	-- Farming Stimulator
				["sourceQuests"] = {
					50134,	-- Gadgets and Gizmos Aplenty
					50135,	-- Stop Vining
				},
				["provider"] = { "n", 132118 },	-- Farmer Burton
				["coord"] = { 51.5, 65.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155197),	-- Darkwater Bracers
					i(155195),	-- Dread Corsair Bracers
					i(155196),	-- Stormchaser Bracers
					i(155194),	-- Tidespeaker Cuffs
					i(155235),	-- Vineshaper's Grasp
				},
			}),
			q(52512, {	-- Fate's End
				["sourceQuests"] = { 52511 },	-- Opening the Way
				["provider"] = { "n", 141223 },	-- Brother Pike
				["coord"] = { 21.3, 69.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50493, {	-- Fetching Wrex
				["sourceQuests"] = { 50504 },	-- Honey Glazed Sam
				["provider"] = { "n", 134028 },	-- Sam Robinson
				["coord"] = { 72.7, 72.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50649, {	-- Filching from Thieves
				["sourceQuests"] = { 50635 },	-- The Shifting Tides
				["provider"] = { "n", 131014 },	-- Rikal
				["coord"] = { 34.9, 47.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158183),	-- Tidal Beacon (QI!)
				},
			}),
			q(51371, {	-- Flavorable Offering
				["sourceQuests"] = { 51353 },	-- Cave of Ai'twen
				["provider"] = { "n", 137453 },	-- Loroja
				["coord"] = { 35.7, 31.2, STORMSONG_VALLEY },
				["groups"] = {
					o(289317, {	-- Seaweed
						i(160055),	-- Seaweed (QI!)
					}),
				},
			}),
			q(50386, {	-- Flush Them Out
				["sourceQuests"] = { 50417 },	-- Ruin Has Come
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.6, 54.8, STORMSONG_VALLEY },
			}),
			q(49886, {	-- Follow Your Nose
				["provider"] = { "n", 131656 },	-- Houndmaster Archibald
				["coord"] = { 51.0, 70.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				-- UNKNOWN SOURCE. unavailable prior to doing BFA/zone intro. first noticed after doing 'heavy artillery' but could just require zone intro.
			}),
			q(50608, {	-- Forbidden Rites
				["sourceQuests"] = {
					50593,	-- A Bloody Mess
					50594,	-- Beneath the Veil
					50595,	-- No Quarter
				},
				["provider"] = { "n", 134639 },	-- Brother Pike
				["coord"] = { 66.1, 47.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158465),	-- Tidal Kris (QI!)
				},
			}),
			q(49887, {	-- Forced Labor
				["sourceQuests"] = {
					49704,	-- Haywire Harvesters
					49706,	-- Proclamation Investigation
					49705,	-- Unnecessary Duress
				},
				["provider"] = { "n", 130904 },	-- Samuel Williams
				["coord"] = { 64.6, 62.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50614, {	-- Freedom for the Sea
				["sourceQuests"] = {
					52070,	-- Bauer Backup
					52068,	-- Helping Out, Somewhere Else
				},
				["provider"] = { "n", 131002 },	-- Lieutenant Bauer
				["coord"] = { 30.2, 59.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50264, {	-- Free the Farmhands
				["sourceQuests"] = { 50504 },	-- Honey Glazed Sam
				["provider"] = { "n", 134028 },	-- Sam Robinson
				["coord"] = { 72.7, 72.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49831, {	-- From the Depths
				["sourceQuests"] = {
					50705,	-- A Snake With Three Heads
					50706,	-- Clearing the Delta
				},
				["provider"] = { "n", 131000 },	-- Commander Kellam
				["coord"] = { 34.1, 54.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160519),	-- Fort Daelin Speargun
					i(155219),	-- Zeth'jir Scaleguard Pillar
					i(160521),	-- Kellam's Longknife
					i(155198),	-- Fort Daelin Handaxe
					i(155211),	-- Storm's Wake Truncheon
					i(155217),	-- Proudmoore Battalion Pike
					i(155226),	-- Storm's Wake Baton
					i(155212),	-- Zeth'jir Tidemaiden Scepter
				},
			}),
			q(50609, {	-- From the Maw of Madness
				["sourceQuests"] = {
					50593,	-- A Bloody Mess
					50594,	-- Beneath the Veil
					50595,	-- No Quarter
				},
				["provider"] = { "n", 134623 },	-- Taelia
				["coord"] = { 66.2, 47.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50696, {	-- Fun With Magnets
				["sourceQuests"] = { 50675 },	-- Treasure Hunting
				["qgs"] = {
					134710,	-- Moxie Lockspinner
					134882,	-- Moxie Lockspinner (alternate ID)
				},
				["coord"] = { 44.4, 55.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160668),	-- Lost Coin (QI!)
					i(158226),	-- Magnetized Metal Collector (QI!)
				},
			}),
			q(50134, {	-- Gadgets and Gizmos Aplenty
				["sourceQuests"] = { 50158 },	-- Checking Out the Collapse
				["provider"] = { "n", 132118 },	-- Farmer Burton
				["coord"] = { 51.5, 65.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156648),	-- Harvester Gizmo (QI!)
				},
			}),
			q(50610, {	-- Gathering Storm
				["sourceQuests"] = {
					50593,	-- A Bloody Mess
					50594,	-- Beneath the Veil
					50595,	-- No Quarter
				},
				["provider"] = { "n", 134639 },	-- Brother Pike
				["coord"] = { 66.1, 47.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51726, {	-- Get Out of Here
				["provider"] = { "n", 138924 },	-- Holger Nash
				["coord"] = { 67.5, 38.6, 1182 },	-- Saltstone Mine
				["races"] = ALLIANCE_ONLY,
				-- unknown SQ. picked up after picking up "having a blast"
			}),
			q(51720, {	-- Get Shredded
				["sourceQuests"] = {	-- may also require 'get out of here'
					51752,	-- Grizzled
					51711,	-- Having a Blast
					51881,	-- The Mine Sweeper
				},
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 46.4, 36.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160595),	-- Energized Core (QI!)
					i(160593),	-- Grizz's Key (QI!)
				},
			}),
			q(50069, {	-- Goldfield's War
				["sourceQuests"] = {
					50041,	-- A Pocket Full of Shells
					50065,	-- A Reason to Stay
				},
				["provider"] = { "n", 129808 },	-- Farmer Goldfield
				["coord"] = { 50.7, 73.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50088, {	-- Golden Fields Forever
				["sourceQuests"] = { 50069 },	-- Goldfield's War
				["provider"] = { "n", 129808 },	-- Farmer Goldfield
				["coord"] = { 50.7, 73.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160558),	-- River Carnations (QI!)
				},
			}),
			q(51314, {	-- Grain Drain
				["provider"] = { "n", 137094 },	-- Farmer Max
				["coord"] = { 55.0, 67.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155878),	-- Sack of Grain (QI!)
				},
			}),
			q(51752, {	-- Grizzled
				["sourceQuests"] = { 52065 },	-- Worse Than it Looks
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 46.9, 47.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160348),	-- Tidespeaker Handwraps
					i(160351),	-- Darkwater Mitts
					i(160354),	-- Stormchaser Strikers
					i(160357),	-- Dread Corsair Strikers
					i(158686),	-- Tidespeaker Slippers
					i(158688),	-- Darkwater Treads
					i(158687),	-- Stormchaser Striders
					i(158685),	-- Dread Corsair Warboots
				},
			}),
			q(51492, {	-- Gunpowder Plot
				["provider"] = { "n", 136574 },	-- Charles Davenport
				["coord"] = { 29.8, 67.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159776),	-- Gunpowder (QI!)
					i(160350),	-- Darkwater Handwraps
					i(160356),	-- Dread Corsair Gloves
					i(160353),	-- Stormchaser Handguards
					i(160347),	-- Tidespeaker Grips
					i(160362),	-- Darkwater Britches
					i(160368),	-- Dread Corsair Pants
					i(160365),	-- Stormchaser Pants
					i(160359),	-- Tidespeaker Pantaloons
				},
			}),
			q(51711, {	-- Having a Blast
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 46.9, 47.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				-- unknown SQ. possibly #50909, 'never outgunned'?
			}),
			q(49704, {	-- Haywire Harvesters
				["sourceQuests"] = { 49703 },	-- House Stormsong
				["provider"] = { "n", 130715 },	-- Taelia
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155829),	-- Drenched Mainspring (QI!)
				},
			}),
			q(49755, {	-- Heavy Artillery
				["sourceQuests"] = {
					49744,	-- Bombs, Away
					49746,	-- Dousing the Flames
					49745,	-- You Have Their Orders
				},
				["provider"] = { "n", 130694 },	-- Mayor Roz
				["coord"] = { 57.6, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158692),	-- Darkwater Cinch
					i(160364),	-- Darkwater Legwraps
					i(158689),	-- Dread Corsair Greatbelt
					i(160370),	-- Dread Corsair Wargreaves
					i(158691),	-- Stormchaser Cincture
					i(160367),	-- Stormchaser Greaves
					i(158690),	-- Tidespeaker Cord
					i(160361),	-- Tidespeaker Pants
					--
					h(i(161276)),	-- Lastwind Legguards
					h(i(161278)),	-- Resilient Outcast's Leggings
					h(i(161277)),	-- Scorching Sands Britches
				},
			}),
			q(52068, {	-- Helping Out, Somewhere Else
				["description"] = "Without using the Party Sync feature, you cannot complete both this quest and |cffffff00More Fodder|r on the same character.",
				["sourceQuests"] = { 50742 },	-- All Laid Out For Us
				["altQuests"] = { 52069 },	-- More Fodder
				["provider"] = { "n", 134720 },	-- Leo Shealds
				["coord"] = { 43.0, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(50504, {	-- Honey Glazed Sam
				["sourceQuests"] = {
					50168,	-- Royal Succession
					50162,	-- Sticky Situation
				},
				["provider"] = { "n", 132292 },	-- Raimond Mildenhall
				["coord"] = { 74.1, 72.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49703, {	-- House Stormsong
				["sourceQuests"] = { 49725 },	-- A Risky Ploy
				["provider"] = { "n", 130576 },	-- Brother Pike
				["coord"] = { 59.2, 68.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(179386),	-- Tidesage Necklace
				},
			}),
			q(51427, {	-- I like Turtles
				["sourceQuests"] = {
					51371,	-- Flavorable Offering
					51221,	-- Response Required
				},
				["provider"] = { "n", 137453 },	-- Loroja <Watcher of Ai'twen>
				["coord"] = { 35.7, 31.2, STORMSONG_VALLEY },
				["groups"] = bubbleDown({ ["races"] = ALLIANCE_ONLY }, {	-- Horde characters do not earn appearances from this quest.
					i(160395),	-- Ai'twen's Light
					i(160396),	-- Ai'twen's Defender
					i(160352),	-- Darkwater Grasps
					i(160358),	-- Dread Corsair Grips
					i(160355),	-- Stormchaser Handcovers
					i(160349),	-- Tidespeaker Mittens
					--
					h(i(161284)),	-- Faithless Dinorider's Focus
					h(i(161286)),	-- Faithless Dinorider's Shield
				}),
			}),
			q(50385, {	-- Indefatigable Purpose
				["sourceQuests"] = { 53105 },	-- Misplaced Faith
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 50,
				["groups"] = {
					i(157771),	-- Holy Water (QI!)
				},
			}),
			q(50802, {	-- Iron Low Tide
				["sourceQuests"] = { 52069 },	-- More Fodder
				["provider"] = { "n", 134720 },	-- Leo Shealds
				["coord"] = { 42.9, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50803, {	-- I Want It All Now
				["sourceQuests"] = { 50793 },	-- Cave Commotion
				["provider"] = { "n", 135330 },	-- Nedly Grinner
				["coord"] = { 41.1, 54.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160481),	-- Irontide Coin Bag (QI!)
				},
			}),
			q(50354, {	-- Look Out!
				["sourceQuests"] = { 50622 },	-- Deal's Off
				["provider"] = { "n", 133953 },	-- Mayor Roz
				["coord"] = { 44.7, 64.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156516),	-- Sedative Quill (QI!)
				},
			}),
			q(51278, {	-- Lost and Forgotten
				["sourceQuests"] = { 50781 },	-- A Bridge Too Far
				["provider"] = { "n", 136933 },	-- Brother Pike
				["coord"] = { 70.2, 36.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52513, {	-- Lost in Darkness
				["sourceQuests"] = { 52512 },	-- Fate's End
				["provider"] = { "n", 141223 },
				["coord"] = { 6.64, 31.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49791, {	-- Lost, Not Forgotten
				["sourceQuests"] = {
					49704,	-- Haywire Harvesters
					49706,	-- Proclamation Investigation
					49705,	-- Unnecessary Duress
				},
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155919),	-- Dead Ringer (QI!)
				},
			}),
			q(51582, {	-- Make it Mildenhall
				["provider"] = { "o", 290537 },	-- Help Wanted
				["coord"] = { 66.3, 57.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(53369, {	-- Make Loh Go
				["sourceQuests"] = { 51352 },	-- Don't Play With Matches
				["provider"] = { "n", 135795 },	-- Toki
				["coord"] = { 40.2, 37.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50389, {	-- Malign Inspiration
				["sourceQuests"] = { 50385 },	-- Indefatigable Purpose
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
			}),
			q(50343, {	-- Mayhem at Mildenhall Meadery
				["sourceQuests"] = { 51582 },	-- Make it Mildenhall
				["provider"] = { "n", 131793 },	-- Ancel Mildenhall
				["coord"] = { 68.8, 65.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49793, {	-- Means to an End
				["sourceQuests"] = {
					49704,	-- Haywire Harvesters
					49706,	-- Proclamation Investigation
					49705,	-- Unnecessary Duress
				},
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51209, {	-- Mighty Grokkfist
				["sourceQuests"] = { 51504 },	-- Cookie Delivery
				["provider"] = { "n", 136574 },	-- Charles Davenport
				["coord"] = { 36.1, 74.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160063),	-- Pack of Rats (QI!)
				},
			}),
			q(51215, {	-- Milking Goats
				["sourceQuests"] = {
					51205,	-- Aww, Rats!
					51251,	-- Basement Dwellers
					51492,	-- Gunpowder Plot
				},
				["provider"] = { "n", 136658 },	-- Marie Davenport
				["coord"] = { 30.3, 66.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159782),	-- Milk Pail (QI!)
					i(159781),	-- Mountain Goat Milk (QI!)
				},
			}),
			q(53105, {	-- Misplaced Faith
				["sourceQuests"] = { 50388 },	-- The Weight of My Ambition
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
				["groups"] = { i(163212) },	-- Cleansing Thurible (QI!)
			}),
			q(52069, {	-- More Fodder
				["description"] = "Without using the Party Sync feature, you cannot complete both this quest and |cffffff00Helping Out, Somewhere Else|r on the same character.",
				["sourceQuests"] = { 49831 },	-- From the Depths
				["altQuests"] = { 52068 },	-- Helping Out, Somewhere Else
				["provider"] = { "n", 131343 },	-- Williams
				["coord"] = { 33.2, 45.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(50909, {	-- Never Outgunned
				["sourceQuests"] = { 52067 },	-- Survivors
				["provider"] = { "n", 135874 },	-- Lea Martinel
				["coord"] = { 57.9, 55.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159713),	-- Rebel Weapons (QI!)
				},
			}),
			q(50774, {	-- No Bot Left Behind
				["sourceQuests"] = { 50753 },	-- Earl-E Bot Gets the Worm
				["provider"] = { "n", 135067 },	-- Moxie Lockspinner
				["coord"] = { 42.6, 54.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50595, {	-- No Quarter
				["sourceQuests"] = { 49998 },	-- Voices Below
				["provider"] = { "n", 134623 },	-- Taelia
				["coord"] = { 66.2, 47.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50691, {	-- Not On Our Payroll
				["sourceQuests"] = { 50675 },	-- Treasure Hunting
				["provider"] = { "n", 134702 },	-- Nedly Grinner
				["coord"] = { 44.4, 55.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50780, {	-- Oathbound
				["sourceQuests"] = { 50612 },	-- A House Divided
				["provider"] = { "n", 135517 },	-- Tideguard Victoria
				["coord"] = { 60.9, 41.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159157),	-- Rod of Tides (QI!)
				},
			}),
			q(52511, {	-- Opening the Way
				["sourceQuests"] = { 52510 },	-- Shrine of the Storm: The Missing Ritual
				["provider"] = { "n", 141223 },	-- Brother Pike
				["coord"] = { 21.3, 69.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50679, {	-- Piercing the Shield
				["sourceQuests"] = {
					50644,	-- Facing the Invaders
					50653,	-- Reclaiming Our Defenses
				},
				["provider"] = { "n", 131003 },
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158200),	-- Zeth'jir Channeling Rod (QI!)
					i(160885),	-- Fort Daelin Lantern
					i(160360),	-- Tidespeaker Legwarmers
					i(160363),	-- Darkwater Pants
					i(160366),	-- Stormchaser Leggings
					i(160369),	-- Dread Corsair Legguards
					---
					h(i(161285)),	-- Faithless Wingrider's Focus
				},
			}),
			q(50698, {	-- Problem Solving with Gunpowder
				["sourceQuests"] = {
					50644,	-- Facing the Invaders
					50653,	-- Reclaiming Our Defenses
				},
				["provider"] = { "n", 131003 },
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49706, {	-- Proclamation Investigation
				["sourceQuests"] = { 49703 },	-- House Stormsong
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51310, {	-- Raiders of the Lost Crop
				["provider"] = { "n", 137094 },	-- Farmer Max
				["coord"] = { 55.0, 67.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49996, {	-- Rearmament
				["sourceQuests"] = { 49975 },	-- Rest in the Depths
				["provider"] = { "n", 131249 },	-- Taelia
				["coord"] = { 66.4, 56.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156609),	-- Stormfused Weapon (QI!)
					i(155204),	-- Brineworks Boot Knife
					i(155214),	-- Brineworks Hullcracker
					i(155199),	-- Great Sea Waraxe
					i(155221),	-- Stormfused Spire
					i(155208),	-- Stormfused Striker
					i(155216),	-- Tideguard Harpoon
					i(155224),	-- Tideguard Spellblade
					i(155209),	-- Thundershot Rifle
				},
			}),
			q(50653, {	-- Reclaiming our Defenses
				["sourceQuests"] = { 50635 },	-- The Shifting Tides
				["provider"] = { "n", 131003 },	-- Specialist Wembley
				["coord"] = { 34.5, 47.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(160337),	-- Darkwater Footpads
					i(160343),	-- Dread Corsair Boots
					i(155232),	-- Proudmoore Battalion Cloak
					i(160340),	-- Stormchaser Treads
					i(160334),	-- Tidespeaker Footwraps
				},
			}),
			q(50161, {	-- Recovering Raimond
				["sourceQuests"] = { 50064 },	-- Don't Go in the Basement
				["provider"] = { "n", 132647 },	-- Ancel Mildenhall
				["coord"] = { 70.6, 69.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156808),	-- Journal Pages (QI!)
					i(156717),	-- Sticky Boot (QI!)
				},
			}),
			q(51554, {	-- Reloading
				["sourceQuests"] = { 50909 },	-- Never Outgunned
				["provider"] = { "n", 135874 },	-- Lea Martinel
				["coord"] = { 57.9, 55.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				-- may also require 'smells like trouble' and 'dangerous game'
			}),
			q(51221, {	-- Response Required
				["sourceQuests"] = { 51353 },	-- Cave of Ai'twen
				["provider"] = { "n", 137453 },	-- Loroja
				["coord"] = { 35.7, 31.2, STORMSONG_VALLEY },
			}),
			q(49975, {	-- Rest in the Depths
				["sourceQuests"] = {
					49792,	-- Bound and Oppressed
					49791,	-- Lost, Not Forgotten
					49793,	-- Means to an End
					49794,	-- The Rising Tide
				},
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 66.3, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157859),	-- Dead Ringer (QI!)
				},
			}),
			q(52508, {	-- Ritual Effects
				["sourceQuests"] = { 52453 },	-- A Forlorn Hope
				["provider"] = { "n", 141223 },	-- Brother Pike
				["coord"] = { 70.3, 36.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162423),	-- Ritual Knife (QI!)
					i(162425),	-- Ritual Lantern (QI!)
					i(162429),	-- Ritual Robes (QI!)
				},
			}),
			q(50168, {	-- Royal Succession
				["sourceQuests"] = { 50161 },	-- Recovering Raimond
				["provider"] = { "n", 132292 },	-- Raimond Mildenhall
				["coord"] = { 74.1, 72.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157839),	-- Hive Mother's Stinger (QI!)
				},
			}),
			q(50417, {	-- Ruin Has Come
				["provider"] = { "o", 281348 },	-- Crumbling Letter
				["coords"] = {
					{ 59.4, 68.3, STORMSONG_VALLEY },	-- Alliance
					{ 50.0, 31.8, STORMSONG_VALLEY },	-- Horde
				},
				["lvl"] = 120,
				-- unsure if this has any SQs or if it just requires being level 120.
			}),
			q(50365, {	-- Run For the Hills
				["sourceQuests"] = {
					50353,	-- Boaring Company
					50354,	-- Look Out!
				},
				["provider"] = { "n", 133953 },	-- Sergeant Calvin
				["coord"] = { 46.7, 73.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51723, {	-- Saw Dusted
				["sourceQuests"] = {	-- may also require 'get out of here'
					51752,	-- Grizzled
					51711,	-- Having a Blast
					51881,	-- The Mine Sweeper
				},
				["provider"] = { "n", 138735 },	-- Felecia Gladstone
				["coord"] = { 46.4, 36.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51320, {	-- Sealed Fate
				["sourceQuests"] = { 50781 },	-- A Bridge Too Far
				["provider"] = { "n", 136933 },	-- Brother Pike
				["coord"] = { 70.2, 36.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51140, {	-- Share the Wealth
				["sourceQuests"] = { 50697 },	-- Bomb Beats Rock
				["provider"] = { "o", 290765 },	-- Large Pile of Gold
				["coord"] = { 50.8, 56.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52510, {	-- Shrine of the Storm: The Missing Ritual
				["sourceQuests"] = {
					52508,	-- Ritual Effects
					52509,	-- The Strength of the Storm
				},
				["provider"] = { "n", 137691 },	-- Brother Pike
				["coord"] = { 78.3, 28.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162462),	-- Staff of Storms (PQI!)
					o(293699, {	-- Scroll of Safe Passage
						i(162456),	-- Ritual of Safe Passage (QI!)
					}),
				},
			}),
			q(50825, {	-- Shrine of the Storm: Whispers Below
				["sourceQuests"] = { 50824 },	-- Storm's End
				["provider"] = { "n", 137691 },	-- Brother Pike
				["coord"] = { 78.2, 28.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(49960, {	-- Sic 'Em!
				["provider"] = { "n", 131656 },	-- Houndmaster Archibald
				["coord"] = { 51.0, 70.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				-- UNKNOWN SOURCE. unavailable prior to doing BFA/zone intro. first noticed after doing 'heavy artillery' but could just require zone intro.
			}),
			q(50908, {	-- Smells like Trouble
				["sourceQuests"] = { 52067 },	-- Survivors
				["provider"] = { "n", 135682 },	-- Patrick Eckhart
				["coord"] = { 57.8, 55.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159144),	-- Scent Vial (QI!)
				},
			}),
			q(52796, {	-- Sometimes Less is More
				["provider"] = { "n", 141769 },	-- Marilyn Hood
				["coord"] = { 60.2, 70.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50340, {	-- Steal Them Back
				["sourceQuests"] = {
					50353,	-- Boaring Company
					50354,	-- Look Out!
				},
				["provider"] = { "o", 282478 },	-- Empty Crate
				["coord"] = { 46.3, 77.0, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158735),	-- Stolen Crate (QI!)
				},
			}),
			q(50162, {	-- Sticky Situation
				["sourceQuests"] = { 50161 },	-- Recovering Raimond
				["provider"] = { "n", 132292 },	-- Raimond Mildenhall
				["coord"] = { 74.1, 72.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156709),	-- Royal Jelly (QI!)
				},
			}),
			q(50135, {	-- Stop Vining!
				["sourceQuests"] = { 50158 },	-- Checking Out the Collapse
				["provider"] = { "n", 132118 },	-- Farmer Burton
				["coord"] = { 51.5, 65.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50824, {	-- Storm's End
				["sourceQuests"] = { 51319 },	-- The Final Ascent
				["provider"] = { "n", 137506 },	-- Brother Pike
				["coord"] = { 75.5, 26.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					azeriteItem(155180),	-- Darkwater Hood
					azeriteItem(155186),	-- Darkwater Shoulderpads
					azeriteItem(155177),	-- Dread Corsair Greathelm
					azeriteItem(155187),	-- Dread Corsair Shoulderplates
					azeriteItem(155178),	-- Tidespeaker Circlet
					azeriteItem(155188),	-- Tidespeaker Mantle
					azeriteItem(155189),	-- Stormchaser Pauldrons
					azeriteItem(155179),	-- Stormchaser Coif
					azewrongItem(175303),	-- Tidespeaker Circlet (no azerite version)
					azewrongItem(175328),	-- Tidespeaker Mantle (no azerite version)
					azewrongItem(175304),	-- Stormchaser Coif (no azerite version)
					azewrongItem(175329),	-- Stormchaser Pauldrons (no azerite version)
					azewrongItem(175305),	-- Darkwater Hood (no azerite version)
					azewrongItem(175326),	-- Darkwater Shoulderpads (no azerite version)
					azewrongItem(175302),	-- Dread Corsair Greathelm (no azerite version)
					azewrongItem(175327),	-- Dread Corsair Shoulderplates (no azerite version)
				},
			}),
			q(49997, {	-- Storm's Judgment
				["sourceQuests"] = {
					49995,	-- Fabricated Fabrications
					49996,	-- Rearmament
					50139,	-- The Missing Link
				},
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 66.4, 56.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					azeriteItem(155168),	-- Darkwater Tunic
					azeriteItem(160878),	-- Darkwater Shoulderguards
					azeriteItem(155166),	-- Dread Corsair Breastplate
					azeriteItem(160880),	-- Dread Corsair Pauldrons
					azeriteItem(160877),	-- Tidespeaker Amice
					azeriteItem(155185),	-- Tidespeaker Vestments
					azeriteItem(160879),	-- Stormchaser Shoulderguards
					azeriteItem(155167),	-- Stormchaser Chainmail
					azewrongItem(175364),	-- Darkwater Tunic (no azerite version)
					azewrongItem(175343),	-- Darkwater Shoulderguards (no azerite version)
					azewrongItem(175362),	-- Dread Corsair Breastplate (no azerite version)
					azewrongItem(175345),	-- Dread Corsair Pauldrons (no azerite version)
					azewrongItem(175342),	-- Tidespeaker Amice (no azerite version)
					azewrongItem(175365),	-- Tidespeaker Vestments (no azerite version)
					azewrongItem(175344),	-- Stormchaser Shoulderguards (no azerite version)
					azewrongItem(175363),	-- Stormchaser Chainmail (no azerite version)
				},
			}),
			q(50611, {	-- Storm's Vengeance
				["sourceQuests"] = {
					50608,	-- Forbidden Rites
					50609,	-- From the Maw of Madness
					50610,	-- Gathering Storm
				},
				["provider"] = { "n", 134639 },	-- Brother Pike
				["coord"] = { 66.0, 47.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(252655, {	-- Copper Tidesage's Sconce (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(158681),	-- Lightning Tether
				},
			}),
			q(53045, {	-- Surveying the Wharf
				["sourceQuests"] = { 49831 },	-- From the Depths
				["provider"] = { "n", 131001 },	-- Lieutenant Harris
				["coord"] = { 34.7, 47.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(52067, {	-- Survivors
				["sourceQuests"] = { 49755 },	-- Heavy Artillery
				["provider"] = { "n", 130190 },	-- Sergeant Calvin
				["coord"] = { 57.6, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(51343, {	-- Swimming Lessons
				["sourceQuests"] = {
					49832,	-- An Illegible Scroll
					50797,	-- A Turtle's Invitation
				},
				["provider"] = { "n", 135794 },	-- Scrollsage Nola
				["coord"] = { 40.6, 45.5, STORMSONG_VALLEY },
				["groups"] = {
					o(288609, {	-- Tortollan Chest
						i(160270),	-- Scroll of Graceful Breaths (QI!)
					}),
					o(290127, {	-- Tortollan Chest
						i(160327),	-- Scroll of Harmonious Fins (QI!)
					}),
					o(290128, {	-- Tortollan Chest
						i(160329),	-- Scroll of Endless Tides (QI!)
					}),
				},
			}),
			q(50368, {	-- Terror of the Kraul
				["sourceQuests"] = {
					-- may also require 50340 'steal them back'. DOES NOT REQUIRE 'TOTEMS, TOTEMS, TOTEMS;' i picked it up before turning that one in.
					50367,	-- Anger in a Bottle (didn't appear until i turned this in, in addition to 'run for the hills' + 'war pigs')
					50363,	-- War Pigs
					50365,	-- Run For the Hills
				},
				["provider"] = { "n", 133953 },	-- Sergeant Calvin
				["coord"] = { 46.7, 73.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155824),	-- Flask of Enraging Vapors (QI!)
					i(155225),	-- Bramblehulk Greatsword
					i(160522),	-- Brennadam Vinescythe
					i(155205),	-- Briarback Thornshaper
					i(160520),	-- Briarback Thornspike
					i(155210),	-- Briarback Warmace
					i(155223),	-- Kraulguard Longsword
					i(155218),	-- Kraulguard Poleaxe
					i(155203),	-- Needleshot Repeater
					i(155200),	-- Thornmatron's Vinecaller
					--
					h(i(161310)),	-- Glaive of Zak'rajan
				},
			}),
			q(50783, {	-- The Abyssal Council
				["sourceQuests"] = {
					50777,	-- The Storm Awakens
					50778,	-- Twisted Intentions
				},
				["provider"] = { "n", 136498 },	-- Taelia
				["coord"] = { 59.9, 37.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158702),	-- Darkwater Bindings
					i(158700),	-- Dread Corsair Vambraces
					i(245984, {	-- Sagehold Window (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
					i(158701),	-- Stormchaser Shackles
					i(155236),	-- Stormwarden Seal
					i(158699),	-- Tidespeaker Bindings
				},
			}),
			q(50165, {	-- The Bee Team
				["sourceQuests"] = { 50504 },	-- Honey Glazed Sam
				["provider"] = { "n", 134447 },	-- Lost Farmhand
				["coord"] = { 72.7, 72.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(157851),	-- Bee Pheromones (QI!)
				},
			}),
			q(51200, {	-- The Black Sheep
				["provider"] = { "n", 136414 },
				["coord"] = { 31.8, 69.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51552, {	-- The Days Are Just Packed
				["sourceQuests"] = {
					49792,	-- Bound and Oppressed
					49791,	-- Lost, Not Forgotten
					49793,	-- Means to an End
					49794,	-- The Rising Tide
				},
				["provider"] = { "n", 130786 },	-- Hobbs
				["coord"] = { 66.7, 56.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(51319, {	-- The Final Ascent
				["sourceQuests"] = {
					51278,	-- Lost and Forgotten
					51320,	-- Sealed Fate
				},
				["provider"] = { "n", 137220 },	-- Brother Pike / Awakened Tidesage
				["races"] = ALLIANCE_ONLY,
			}),
			q(53476, {	-- The Great Sea Scrolls
				["description"] = "You receive the item that starts this quest from looting any treasure chest.",
				["provider"] = { "i", 163856 },	-- Ancient Pilgrimage Scrollcasing
				["maps"] = {
					NAZMIR,
					VOLDUN,
					TIRAGARDE_SOUND,
					-- STORMSONG_VALLEY,
					ZULDAZAR,
					DRUSTVAR,
				},
				["_drop"] = { "g" },
				["groups"] = {
					i(163853),	-- Pilgrimage Scroll (QI!)
					i(163852),	-- Tortollan Pilgrimage Scroll (QI!)
					azeriteItem(163863),	-- Bartered Vrykul Cowl
					azeriteItem(163864),	-- Bartered Vrykul Facemask
					azeriteItem(163862),	-- Bartered Vrykul Hood
					azeriteItem(163865),	-- Bartered Vrykul Warhelm
					azewrongItem(180028),	-- Bartered Vrykul Cowl
					azewrongItem(180029),	-- Bartered Vrykul Facemask
					azewrongItem(180027),	-- Bartered Vrykul Hood
					azewrongItem(180030),	-- Bartered Vrykul Warhelm
				},
			}),
			q(51881, {	-- The Mine Sweeper
				["provider"] = { "n", 146019 },	-- Cracked Mine Sweeper
				["coord"] = { 48.1, 15.7, 1182 },
				["races"] = ALLIANCE_ONLY,
				-- unknown SQ. picked up after picking up "having a blast"
			}),
			q(50139, {	-- The Missing Link
				["sourceQuests"] = { 49975 },	-- Rest in the Depths
				["provider"] = { "o", 280727 },	-- Charred Note
				["coord"] = { 68.6, 54.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(156629),	-- Architect's Cipher (QI!)
				},
			}),
			q(52132, {	-- The Proof of Piracy
				["sourceQuests"] = { 50793 },	-- Cave Commotion
				["provider"] = { "n", 134882 },	-- Moxie Lockspinner / Worker
				["coord"] = { 41.1, 54.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50157, {	-- There's Gold in Them There Fields
				["sourceQuests"] = { 49755 },	-- Heavy Artillery
				["provider"] = { "n", 130694 },	-- Mayor Roz
				["coord"] = { 57.5, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49794, {	-- The Rising Tide
				["sourceQuests"] = {
					49704,	-- Haywire Harvesters
					49706,	-- Proclamation Investigation
					49705,	-- Unnecessary Duress
				},
				["provider"] = { "n", 130715 },	-- Taelia
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155193),	-- Darkwater Belt
					i(155190),	-- Dread Corsair Girdle
					i(155192),	-- Stormchaser Belt
					i(155191),	-- Tidespeaker Sash
					i(155184),	-- Darkwater Breeches
					i(155181),	-- Dread Corsair Greaves
					i(155183),	-- Stormchaser Legguards
					i(155182),	-- Tidespeaker Leggings
				},
			}),
			q(50635, {	-- The Shifting Tides
				["sourceQuests"] = {
					50616,	-- A Bit of a Bind
					50621,	-- Caught in the Net
					50614,	-- Freedom For the Sea
				},
				["provider"] = { "n", 131002 },	-- Lieutenant Bauer
				["coord"] = { 30.2, 59.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50777, {	-- The Storm Awakens
				["sourceQuests"] = { 50612 },	-- A House Divided
				["provider"] = { "n", 135534 },	-- Brother Pike
				["coord"] = { 63.1, 43.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52509, {	-- The Strength of the Storm
				["sourceQuests"] = { 52453 },	-- A Forlorn Hope
				["provider"] = { "n", 141223 },	-- Brother Pike
				["coord"] = { 70.3, 36.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162446),	-- Staff of Storms (QI!)
				},
			}),
			q(50388, {	-- The Weight of My Ambition
				["sourceQuests"] = { 50387 },	-- Trinkets and Baubles
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
			}),
			q(50111, {	-- Totems, Totems, Totems!
				["provider"] = { "o", 282457 },	-- Brambleguard Totem
				["coord"] = { 44.0, 72.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50675, {	-- Treasure Hunting
				["sourceQuests"] = {
					50810,	-- Break 'Em Out
					50802,	-- Iron Low Tide
					50674,	-- Two Faced Pirate Scum
				},
				["provider"] = { "n", 134720 },	-- Leo Shealds
				["coord"] = { 42.9, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50387, {	-- Trinkets and Baubles
				["sourceQuests"] = { 53097 },	-- Despondent Ablutions
				["qgs"] = {
					133640,	-- Wayne the Ancestral (A)
					143565,	-- Wayne the Ancestral (H)
				},
				["coord"] = { 78.5, 54.8, STORMSONG_VALLEY },
				["lvl"] = 120,
				["groups"] = {
					o(281312, {	-- Stolen Supplies
						["coords"] = {
							{ 84.6, 54.0, STORMSONG_VALLEY },
							{ 81.5, 49.9, STORMSONG_VALLEY },
							{ 82.8, 44.0, STORMSONG_VALLEY },
						},
						["groups"] = {
							i(157784),	-- Stolen Supplies (QI!)
						},
					}),
				},
			}),
			q(49818, {	-- Trouble at Fort Daelin
				["sourceQuests"] = {	-- needs confirmation. may open as early as walking across the bridge north of brennadam. it wasn't here prior to doing that, though. it was available after turning these 3 in but before picking up or doing 'heavy artillery,' so the SQ is either these 3 or walking across the brennadam bridge to pick these 3 up.
					49744,	-- Bombs, Away
					49746,	-- Dousing the Flames
					49745,	-- You Have Their Orders
				},
				["provider"] = { "n", 131004 },	-- Squire Augustus III
				["coord"] = { 59.4, 69.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,	-- for "A Bit of a Bind" and "Caught in the Net"
			}),
			q(50778, {	-- Twisted Intentions
				["sourceQuests"] = { 50612 },	-- A House Divided
				["provider"] = { "n", 136053 },	-- Samuel Williams
				["coord"] = { 63.1, 43.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50674, {	-- Two Faced Pirate Scum
				["sourceQuests"] = { 51554 },	-- Reloading
				["provider"] = { "n", 134720 },	-- Leo Shealds
				["coord"] = { 42.9, 56.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51218, {	-- Undelivered Package
				["provider"] = { "o", 288167 },	-- Marie's Package
				["coord"] = { 38.4, 62.9, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,	-- for "Be a Dear"
			}),
			q(49705, {	-- Unnecessary Duress
				["sourceQuests"] = { 49703 },	-- House Stormsong
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 63.4, 64.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(155893),	-- Imbued Tidewater (QI!)
					i(155173),	-- Darkwater Gloves
					i(155174),	-- Dread Corsair Gauntlets
					i(155176),	-- Stormchaser Gloves
					i(155175),	-- Tidespeaker Gloves
					i(155172),	-- Darkwater Boots
					i(155169),	-- Dread Corsair Sabatons
					i(155171),	-- Stormchaser Boots
					i(155170),	-- Tidespeaker Sandals
				},
			}),
			q(49998, {	-- Voices Below
				["sourceQuests"] = { 49997 },	-- Storm's Judgment
				["provider"] = { "n", 130714 },	-- Brother Pike
				["coord"] = { 66.3, 56.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50956, {	-- Walking-Around Money
				["sourceQuests"] = { 50742 },	-- All Laid Out For Us
				["providers"] = {
					{ "n", 134720 },	-- Leo Shealds
					{ "o", 297071 },	-- Small Coin Bag
				},
				["coord"] = { 43.1, 56.5, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isWeekly"] = true,
			}),
			q(51204, {	-- WANTED: Razorclaw Alpha (A)
				["provider"] = { "o", 287958 },	-- Bulletin Board
				["coord"] = { 30.6, 68.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(53330, {	-- WANTED: Razorclaw Alpha (H)
				["provider"] = { "o", 297492 },	-- Bulletin Board
				["coord"] = { 51.0, 33.6, STORMSONG_VALLEY },
				["races"] = HORDE_ONLY,
				-- unknown if this has any SQs
				["groups"] = {
					i(163636),	-- Razorclaw Alpha Pelt (QI!)
				},
			}),
			q(49730, {	-- WANTED: Thundersnout (A)
				["provider"] = { "o", 287958 },	-- Bulletin Board
				["coord"] = { 30.6, 68.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				-- unknown SQ
				["groups"] = {
					i(158300),	-- Thundersnout's Snout (QI!)
				},
			}),
			q(53348, {	-- WANTED: Thundersnout (H)
				["provider"] = { "o", 297492 },	-- Bulletin Board
				["coord"] = { 51.0, 33.6, STORMSONG_VALLEY },
				["races"] = HORDE_ONLY,
				-- unknown if this has any SQs
				["groups"] = {
					i(158300),	-- Thundersnout's Snout (QI!)
				},
			}),
			q(52876, {	-- WANTED: War Gore
				["provider"] = { "o", 293985 },	-- WANTED: War Gore
				["coord"] = { 46.7, 48.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51217, {	-- WANTED: Yarsel'ghun
				["provider"] = { "o", 288157 },	-- WANTED: Yarsel'ghun
				["coord"] = { 57.8, 55.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50363, {	-- War Pigs
				["sourceQuests"] = {
					50353,	-- Boaring Company
					50354,	-- Look Out!
				},
				["provider"] = { "n", 133953 },	-- Sergeant Calvin
				["coord"] = { 46.7, 73.8, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50534, {	-- Wendigo Away
				["sourceQuests"] = { 50504 },	-- Honey Glazed Sam
				["provider"] = { "n", 134447 },	-- Lost Farmhand
				["coord"] = { 72.7, 72.2, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50955, {	-- We're Not Friends
				["sourceQuests"] = { 50793 },	-- Cave Commotion
				["provider"] = { "n", 134882 },	-- Moxie Lockspinner
				["coord"] = { 41.1, 54.1, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(51222, {	-- What's Yours is Mined
				["sourceQuests"] = { 51427 },	-- I Like Turtles
				["qgs"] = {
					137554,	-- Toki
					137677,	-- Toki
				},
				["coord"] = { 35.7, 31.2, STORMSONG_VALLEY },
				["groups"] = {
					i(160429),	-- Rope and Hook (QI!)
				},
			}),
			q(51208, {	-- Wheat A Minute
				["sourceQuests"] = { 51504 },	-- Cookie Delivery
				["provider"] = { "n", 136574 },	-- Charles Davenport
				["coord"] = { 36.1, 74.6, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(52065, {	-- Worse Than it Looks
				["sourceQuests"] = {
					50909,	-- Never Outgunned
					50910,	-- Dangerous Game
					50908,	-- Smells Like Trouble
				},
				["provider"] = { "n", 135682 },	-- Patrick Eckhart
				["coord"] = { 57.8, 55.3, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
			}),
			q(49745, {	-- You Have Their Orders
				["provider"] = { "n", 130694 },	-- Mayor Roz
				["coord"] = { 57.6, 66.4, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(133510),	-- Warchief's Orders (QI!)
				},
			}),
			q(50773, {	-- You're a Shark
				["sourceQuests"] = {
					50645,	-- Eeling in a Big One
					50649,	-- Filching From Thieves
				},
				["provider"] = { "n", 131014 },	-- Rikal
				["coord"] = { 34.9, 47.7, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158680),	-- Rikal's Ritual Beads
				},
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 50 },
				["races"] = ALLIANCE_ONLY,
			},{
				q(50779, {	-- A Clean Slate
					["description"] = "You must accept |cffffff00The Storm Awakens|r in order for this Bonus Objective to become available.",
					["sourceQuest"] = 50777,	-- The Storm Awakens
				}),
				q(51534, {	-- The Battle for Brennadam
					["sourceQuest"] = 51401,	-- Carry On
				}),
				q(50133, {	-- Weed Whacking
					["sourceQuest"] = 49755,	-- Heavy Artillery
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(STORMSONG_VALLEY, {
			n(QUESTS, {
				q(51354),	-- Anger in a Bottle (seems to just be a duplicate version)
				q(51845),	-- Storm's End - completed with quest 50824
				q(51846),	-- popped with completion of (50824) [VOIDELF] [MAGE]
				q(54852),	-- naming the ship "Anduin's Wrath" during Blessing of the Tides quest to recruit Kul Tirans
				q(54853),	-- naming the ship "Dawnsailor" during Blessing of the Tides quest to recruit Kul Tirans
				q(54854),	-- naming the ship "Tiffin's Melody" during Blessing of the Tides quest to recruit Kul Tirans
				q(54855),	-- naming the ship "The Lionheart" during Blessing of the Tides quest to recruit Kul Tirans
				-- q(54775),	-- Warmode Storm's Rage
				-- q(54716),	-- Secret Chest during Stormsong Valley Incursion in Warmode
				-- q(54317),	-- BfA Alliance Stormsong "Invasion"
				q(50694),	-- triggers with / alternate way of completing 'A Bloody Mess' (50593)
				q(53202),	-- triggered when turning in #50264, "Free the Farmhands"
				q(51163),	-- ??? plays during the cutscene when you walk across the bridge north of Brennadam in Stormsong Valley
			}),
		}),
	}),
})));
