---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

PREY = createHeader({
	readable = "Prey",
	icon = 237274,
	text = {
		en = "Prey",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDown({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	-- TODO: Move this all to Expansion Features instead?
	n(PREY, {
		n(ACHIEVEMENTS, {
			ach(62142),	-- I Didn't Hear No Bell
			ach(62136),	-- I'm Good At What I Do
			ach(62137),	-- I'm Not Trapped In Here With You
			ach(62140),	-- Kitchen Nightmare
			ach(62141),	-- Look, I'm Just Trying To Fish Here
			ach(62139),	-- Midnight Hunter
			ach(62135),	-- Now It's A Party
			ach(62154, {	-- Prey: A Different Kind of Void (Hard)
				i(265798),	-- Preyseeker's Ren'dorei Bust (DECOR!)
			}),
			ach(62169, {	-- Prey: A Different Kind of Void (Nightmare)
				i(265796),	-- Preyseeker's Ren'dorei Effigy (DECOR!)
			}),
			ach(62165, {	-- Prey: A Thorn in the Side (Hard)
				i(265707),	-- Preyseeker's Thornspeaker Bust (DECOR!)
			}),
			ach(62183, {	-- Prey: A Thorn in the Side (Nightmare)
				i(265692),	-- Preyseeker's Thornspeaker Effigy (DECOR!)
			}),
			ach(62156, {	-- Prey: Anger Management (Hard)
				i(265699),	-- Preyseeker's Breaker Bust (DECOR!)
			}),
			ach(62174, {	-- Prey: Anger Management (Nightmare)
				i(265684),	-- Preyseeker's Breaker Effigy (DECOR!)
			}),
			ach(62160, {	-- Prey: Blinded By The Light (Hard)
				i(265702),	-- Preyseeker's Vindicator Bust (DECOR!)
			}),
			ach(62178, {	-- Prey: Blinded By The Light (Nightmare)
				i(265687),	-- Preyseeker's Vindicator Effigy (DECOR!)
			}),
			ach(62159, {	-- Prey: Bloody Green Thumbs (Hard)
				i(265701),	-- Preyseeker's Rutaani Bust (DECOR!)
			}),
			ach(62177, {	-- Prey: Bloody Green Thumbs (Nightmare)
				i(265686),	-- Preyseeker's Rutaani Effigy (DECOR!)
			}),
			ach(62166, {	-- Prey: Breaking the Blade (Hard)
				i(265708),	-- Preyseeker's Twilight Bust (DECOR!)
			}),
			ach(62184, {	-- Prey: Breaking the Blade (Nightmare)
				i(265694),	-- Preyseeker's Twilight Effigy (DECOR!)
			}),
			ach(62163, {	-- Prey: Chasing Death (Hard)
				i(265705),	-- Preyseeker's Knight-Errant Bust (DECOR!)
			}),
			ach(62181, {	-- Prey: Chasing Death (Nightmare)
				i(265690),	-- Preyseeker's Knight-Errant Effigy (DECOR!)
			}),
			ach(62162, {	-- Prey: Dominating the Void (Hard)
				i(265704),	-- Preyseeker's Executor Bust (DECOR!)
			}),
			ach(62180, {	-- Prey: Dominating the Void (Nightmare)
				i(265689),	-- Preyseeker's Executor Effigy (DECOR!)
			}),
			ach(62155, {	-- Prey: Ethereal Assassins (Hard)
				i(265698),	-- Preyseeker's Ethereal Bust (DECOR!)
			}),
			ach(62173, {	-- Prey: Ethereal Assassins (Nightmare)
				i(265683),	-- Preyseeker's Ethereal Effigy (DECOR!)
			}),
			ach(61389),	-- Prey: Hard Mode I
			ach(61388),	-- Prey: Hard Mode II
			ach(42702),	-- Prey: Hard Mode III
			ach(62153, {	-- Prey: Insane Inventors (Hard)
				i(265697),	-- Preyseeker's Tinker Bust (DECOR!)
			}),
			ach(62168, {	-- Prey: Insane Inventors (Nightmare)
				i(265682),	-- Preyseeker's Tinker Effigy (DECOR!)
			}),
			ach(62144, {	-- Prey: Mad Magisters (Hard)
				i(265696),	-- Preyseeker's Magister Bust (DECOR!)
			}),
			ach(62167, {	-- Prey: Mad Magisters (Nightmare)
				i(265681),	-- Preyseeker's Magister Effigy (DECOR!)
			}),
			ach(61392),	-- Prey: Nightmare Mode I
			ach(61391),	-- Prey: Nightmare Mode II
			ach(42703, {	-- Prey: Nightmare Mode III
				i(257193),	-- Preyseeker's Nightmare (MOUNT!)
			}),
			ach(62164, {	-- Prey: No Rest for the Wretched (Hard)
				i(265706),	-- Preyseeker's Wretched Bust (DECOR!)
			}),
			ach(62182, {	-- Prey: No Rest for the Wretched (Nightmare)
				i(265691),	-- Preyseeker's Wretched Effigy (DECOR!)
			}),
			ach(61387),	-- Prey: Normal Mode I
			ach(61386),	-- Prey: Normal Mode II
			ach(42701),	-- Prey: Normal Mode III
			ach(62161, {	-- Prey: Outsmarting the Schemers (Hard)
				i(265703),	-- Preyseeker's Consul Bust (DECOR!)
			}),
			ach(62179, {	-- Prey: Outsmarting the Schemers (Nightmare)
				i(265688),	-- Preyseeker's Consul Effigy (DECOR!)
			}),
			ach(62157, {	-- Prey: Sadistic Shamans (Hard)
				i(265700),	-- Preyseeker's Amani Bust (DECOR!)
			}),
			ach(62175, {	-- Prey: Sadistic Shamans (Nightmare)
				i(265685),	-- Preyseeker's Amani Effigy (DECOR!)
			}),
			ach(62158, {	-- Prey: The Fallen Farstriders (Hard)
				i(265799),	-- Preyseeker's Farstrider Bust (DECOR!)
			}),
			ach(62176, {	-- Prey: The Fallen Farstriders (Nightmare)
				i(265797),	-- Preyseeker's Farstrider Effigy (DECOR!)
			}),
			ach(62134),	-- The Deadliest of Prey
			ach(62143),	-- Trapped In The Middle With You
			ach(62138),	-- You're Trapped In Here With Me
		}),
		n(QUESTS, {
			q(95114, {	-- Prey: A Crimson Summons
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 259865 },	-- Image of Astalor Bloodsworn
				["coord"] = { 47.6, 71.1, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isBreadcrumb"] = true,
			}),
			q(92926, {	-- Astalor's Initiative
				["sourceQuests"] = { 95114 },	-- Prey: A Crimson Summons
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92945, {	-- The Power of Anguish
				["sourceQuests"] = { 92926 },	-- Astalor's Initiative
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(93043, {	-- When Predator Becomes Prey
				["sourceQuests"] = { 92945 },	-- The Power of Anguish
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(93086, {	-- To the Sanctum!
				["sourceQuests"] = { 93043 },	-- When Predator Becomes Prey
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(92177, {	-- One Hero's Prey
				["sourceQuests"] = { 93086 },	-- To the Sanctum! (TODO: unsure if it is still same quest chain, but up after this quest)
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92178, {	-- Practical Magic
				["sourceQuests"] = { 92177 },	-- One Hero's Prey
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(264513),	-- Crystalline Vessel (QI!)
					--spell(1270744),	-- Prey: Hard Difficulty
				},
			}),
			-- Renown 3 (but it "technically" just one big chain but unsure if there will be kind of rep boost and it could be skipped, gonna figure out)
			q(92179, {	-- Dark Mending
				["sourceQuests"] = { 92178 },	-- Practical Magic
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92180, {	-- Precious Jewels
				["sourceQuests"] = { 92179 },	-- Dark Mending
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(258023),	-- Skilled Preyseeker's Knapsack (COSMETIC!)
				},
			}),
			-- Renown 4 / Nightmare mode
			q(92181, {	-- Garden Variety Sacrifices
				["sourceQuests"] = { 92180 },	-- Precious Jewels
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92182, {	-- The Sheep or the Wolf
				["sourceQuests"] = { 92181 },	-- Garden Variety Sacrifices
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Weekly, up after r4 chain
			q(94446, {	-- A Nightmarish Task
				["sourceQuests"] = { 92182 },	-- The Sheep or the Wolf
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
				["groups"] = {
					i(253342),	-- Beacon of Hope
				},
			}),
		}),
		n(QUESTS, sharedData({
			["provider"] = { "n", 245824 },	-- Hunt Table
			["coord"] = { 56.8, 65.3, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
		}, {
			q(91114),	-- Prey: Consul Nebulor (Normal)
			q(91245),	-- Prey: Consul Nebulor (Hard)
			q(91259),	-- Prey: Consul Nebulor (Nightmare)
			q(91112),	-- Prey: Crusader Luxia Maxwell (Normal)
			q(91243),	-- Prey: Crusader Luxia Maxwell (Hard)
			q(91257),	-- Prey: Crusader Luxia Maxwell (Nightmare)
			q(91100),	-- Prey: Deliah Gloomsong (Normal)
			q(91220),	-- Prey: Deliah Gloomsong (Hard)
			q(91221),	-- Prey: Deliah Gloomsong (Nightmare)
			q(91124),	-- Prey: Dengzag, the Darkened Blaze (Normal)
			q(91255),	-- Prey: Dengzag, the Darkened Blaze (Hard)
			q(91269),	-- Prey: Dengzag, the Darkened Blaze (Nightmare)
			q(91115),	-- Prey: Executor Kaenius (Normal)
			q(91246),	-- Prey: Executor Kaenius (Hard)
			q(91260),	-- Prey: Executor Kaenius (Nightmare)
			q(91123),	-- Prey: Grothoz, the Burning Shadow (Normal)
			q(91254),	-- Prey: Grothoz, the Burning Shadow (Hard)
			q(91268),	-- Prey: Grothoz, the Burning Shadow (Nightmare)
			q(91111),	-- Prey: High Vindicator Vureem (Normal)
			q(91242),	-- Prey: High Vindicator Vureem (Hard)
			q(91256),	-- Prey: High Vindicator Vureem (Nightmare)
			q(91116),	-- Prey: Imperator Enigmalia (Normal)
			q(91247),	-- Prey: Imperator Enigmalia (Hard)
			q(91261),	-- Prey: Imperator Enigmalia (Nightmare)
			q(91103),	-- Prey: Jo'zolo the Breaker (Normal)
			q(91226),	-- Prey: Jo'zolo the Breaker (Hard)
			q(91227),	-- Prey: Jo'zolo the Breaker (Nightmare)
			q(91117),	-- Prey: Knight-Errant Bloodshatter (Normal)
			q(91248),	-- Prey: Knight-Errant Bloodshatter (Hard)
			q(91262),	-- Prey: Knight-Errant Bloodshatter (Nightmare)
			q(91098),	-- Prey: L-N-0R the Recycler (Normal)
			q(91216),	-- Prey: L-N-0R the Recycler (Hard)
			q(91217),	-- Prey: L-N-0R the Recycler (Nightmare)
			q(91110),	-- Prey: Lamyne of the Undercroft (Normal)
			q(91240),	-- Prey: Lamyne of the Undercroft (Hard)
			q(91241),	-- Prey: Lamyne of the Undercroft (Nightmare)
			q(91108),	-- Prey: Lieutenant Blazewing (Normal)
			q(91236),	-- Prey: Lieutenant Blazewing (Hard)
			q(91237),	-- Prey: Lieutenant Blazewing (Nightmare)
			q(91119),	-- Prey: Lost Theldrin (Normal)
			q(91250),	-- Prey: Lost Theldrin (Hard)
			q(91264),	-- Prey: Lost Theldrin (Nightmare)
			q(91095),	-- Prey: Magister Sunbreaker (Normal)
			q(91210),	-- Prey: Magister Sunbreaker (Hard)
			q(91211),	-- Prey: Magister Sunbreaker (Nightmare)
			q(91096),	-- Prey: Magistrix Emberlash (Normal)
			q(91212),	-- Prey: Magistrix Emberlash (Hard)
			q(91213),	-- Prey: Magistrix Emberlash (Nightmare)
			q(91099),	-- Prey: Mordril Shadowfell (Normal)
			q(91218),	-- Prey: Mordril Shadowfell (Hard)
			q(91219),	-- Prey: Mordril Shadowfell (Nightmare)
			q(91102),	-- Prey: Nexus-Edge Hadim (Normal)
			q(91224),	-- Prey: Nexus-Edge Hadim (Hard)
			q(91225),	-- Prey: Nexus-Edge Hadim (Nightmare)
			q(91120),	-- Prey: Neydra the Starving (Normal)
			q(91251),	-- Prey: Neydra the Starving (Hard)
			q(91265),	-- Prey: Neydra the Starving (Nightmare)
			q(91109),	-- Prey: Petyoll the Razorleaf (Normal)
			q(91238),	-- Prey: Petyoll the Razorleaf (Hard)
			q(91239),	-- Prey: Petyoll the Razorleaf (Nightmare)
			q(91101),	-- Prey: Phaseblade Talasha (Normal)
			q(91222),	-- Prey: Phaseblade Talasha (Hard)
			q(91223),	-- Prey: Phaseblade Talasha (Nightmare)
			q(91113),	-- Prey: Praetor Singularis (Normal)
			q(91244),	-- Prey: Praetor Singularis (Hard)
			q(91258),	-- Prey: Praetor Singularis (Nightmare)
			q(91107),	-- Prey: Ranger Swiftglade (Normal)
			q(91234),	-- Prey: Ranger Swiftglade (Hard)
			q(91235),	-- Prey: Ranger Swiftglade (Nightmare)
			q(91097),	-- Prey: Senior Tinker Ozwold (Normal)
			q(91214),	-- Prey: Senior Tinker Ozwold (Hard)
			q(91215),	-- Prey: Senior Tinker Ozwold (Nightmare)
			q(91105),	-- Prey: The Talon of Janali (Normal)
			q(91230),	-- Prey: The Talon of Janali (Hard)
			q(91231),	-- Prey: The Talon of Janali (Nightmare)
			q(91106),	-- Prey: The Wing of Akil'zon (Normal)
			q(91232),	-- Prey: The Wing of Akil'zon (Hard)
			q(91233),	-- Prey: The Wing of Akil'zon (Nightmare)
			q(91122),	-- Prey: Thorn-Witch Liset (Normal)
			q(91253),	-- Prey: Thorn-Witch Liset (Hard)
			q(91267),	-- Prey: Thorn-Witch Liset (Nightmare)
			q(91121),	-- Prey: Thornspeaker Edgath (Normal)
			q(91252),	-- Prey: Thornspeaker Edgath (Hard)
			q(91266),	-- Prey: Thornspeaker Edgath (Nightmare)
			q(91118),	-- Prey: Vylenna the Defector (Normal)
			q(91249),	-- Prey: Vylenna the Defector (Hard)
			q(91263),	-- Prey: Vylenna the Defector (Nightmare)
			q(91104),	-- Prey: Zadu, Fist of Nalorakk (Normal)
			q(91228),	-- Prey: Zadu, Fist of Nalorakk (Hard)
			q(91229),	-- Prey: Zadu, Fist of Nalorakk (Nightmare)
		})),
		n(REWARDS, {
			--Currency
			currency(3392),	-- Remnant of Anguish
			--Used just for tooltip, you recieve item instead of it
			i(257023),	-- Preyseeker's Adventurer Chest
			i(262346),	-- Preyseeker's Champion Chest
			i(257026),	-- Preyseeker's Veteran Chest
			--Gear
			n(ARMOR, {
				filter(BACK_F, {
					i(259909),	-- Preyseeker's Refined Shawl
					i(258532),	-- Preyseeker's Rugged Stole
					i(259910),	-- Preyseeker's Sleek Capelet
				}),
				filter(CLOTH, {
					i(259923),	-- Preyseeker's Refined Cord
					i(259920),	-- Preyseeker's Refined Crown
					i(259924),	-- Preyseeker's Refined Cuffs
					i(259922),	-- Preyseeker's Refined Epaulet
					i(259919),	-- Preyseeker's Refined Gloves
					i(259918),	-- Preyseeker's Refined Slippers
					i(259921),	-- Preyseeker's Refined Tights
					i(259917),	-- Preyseeker's Refined Vestments
				}),
				filter(FINGER_F, {
					i(259911),	-- Preyseeker's Band
					i(259914),	-- Preyseeker's Circle
					i(259913),	-- Preyseeker's Ring
					i(259912),	-- Preyseeker's Signet
				}),
				filter(LEATHER, {
					i(259932),	-- Preyseeker's Sleek Armlets
					i(259931),	-- Preyseeker's Sleek Belt
					i(259926),	-- Preyseeker's Sleek Boots
					i(259927),	-- Preyseeker's Sleek Gauntlets
					i(259925),	-- Preyseeker's Sleek Jerkin
					i(259928),	-- Preyseeker's Sleek Mask
					i(259930),	-- Preyseeker's Sleek Shoulderpads
					i(259929),	-- Preyseeker's Sleek Trousers
				}),
				filter(MAIL, {
					i(259940),	-- Preyseeker's Rugged Bindings
					i(259939),	-- Preyseeker's Rugged Clasp
					i(259935),	-- Preyseeker's Rugged Grips
					i(259933),	-- Preyseeker's Rugged Haubergeon
					i(259937),	-- Preyseeker's Rugged Legguards
					i(259936),	-- Preyseeker's Rugged Plume
					i(259934),	-- Preyseeker's Rugged Sabatons
					i(259938),	-- Preyseeker's Rugged Shoulderguards
				}),
				filter(NECK_F, {
					i(259916),	-- Preyseeker's Choker
					i(259915),	-- Preyseeker's Clasp
				}),
				filter(PLATE, {
					i(259941),	-- Preyseeker's Polished Brigandine
					i(259947),	-- Preyseeker's Polished Greatbelt
					i(259942),	-- Preyseeker's Polished Greatboots
					i(259943),	-- Preyseeker's Polished Handguards
					i(259944),	-- Preyseeker's Polished Helmet
					i(259946),	-- Preyseeker's Polished Pauldrons
					i(259945),	-- Preyseeker's Polished Tassets
					i(259948),	-- Preyseeker's Polished Vambraces
				}),
			}),
			n(WEAPONS, {
				i(259952),	-- Preyseeker's Cudgel
				i(259964),	-- Preyseeker's Falchion
				i(259955),	-- Preyseeker's Hammer
				i(259949),	-- Preyseeker's Hatchet
				i(259950),	-- Preyseeker's Kukri
				i(259965),	-- Preyseeker's Lantern
				i(259960),	-- Preyseeker's Longbow
				i(259958),	-- Preyseeker's Longsword
				i(259957),	-- Preyseeker's Ritual Blade
				i(259953),	-- Preyseeker's Scepter
				i(259956),	-- Preyseeker's Scimitar
				i(259951),	-- Preyseeker's Shiv
				i(259961),	-- Preyseeker's Spear
				i(259963),	-- Preyseeker's Spire
				i(259962),	-- Preyseeker's Staff
				i(259966),	-- Preyseeker's Tower Shield
				i(259959),	-- Preyseeker's Warglaive
			}),
			filter(MISC, {
				i(262928),	-- Preyseeker's Adventurer Sack
				i(262938),	-- Preyseeker's Champion Sack
				i(262936),	-- Preyseeker's Veteran Sack
				i(255825),	-- Disarmed Trap
			}),
			filter(REAGENTS, {
				i(251283),	-- Tormented Tantalum
			}),
			filter(RECIPES, {
			}),
		}),
		n(VENDORS, {
			n(258181, {	-- Construct Ali'a <Decor Specialist>
				["coord"] = { 55.8, 66.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					n(DECOR, {
						anguish(800, i(265794)),	-- Preyseeker's Plinth (DECOR!)
						anguish(1200, i(265795)),	-- Preyseeker's Ornate Plinth (DECOR!)
						anguish(800, i(265700)),	-- Preyseeker's Amani Bust (DECOR!)
						anguish(1200, i(265685)),	-- Preyseeker's Amani Effigy (DECOR!)
						anguish(800, i(265699)),	-- Preyseeker's Breaker Bust (DECOR!)
						anguish(1200, i(265684)),	-- Preyseeker's Breaker Effigy (DECOR!)
						anguish(800, i(265703)),	-- Preyseeker's Consul Bust (DECOR!)
						anguish(1200, i(265688)),	-- Preyseeker's Consul Effigy (DECOR!)
						anguish(800, i(265704)),	-- Preyseeker's Executor Bust (DECOR!)
						anguish(1200, i(265689)),	-- Preyseeker's Executor Effigy (DECOR!)
						anguish(800, i(265698)),	-- Preyseeker's Ethereal Bust (DECOR!)
						anguish(1200, i(265683)),	-- Preyseeker's Ethereal Effigy (DECOR!)
						anguish(800, i(265799)),	-- Preyseeker's Farstrider Bust (DECOR!)
						anguish(1200, i(265797)),	-- Preyseeker's Farstrider Effigy (DECOR!)
						anguish(800, i(265705)),	-- Preyseeker's Knight-Errant Bust (DECOR!)
						anguish(1200, i(265690)),	-- Preyseeker's Knight-Errant Effigy (DECOR!)
						anguish(800, i(265696)),	-- Preyseeker's Magister Bust (DECOR!)
						anguish(1200, i(265681)),	-- Preyseeker's Magister Effigy (DECOR!)
						anguish(800, i(265798)),	-- Preyseeker's Ren'dorei Bust (DECOR!)
						anguish(1200, i(265796)),	-- Preyseeker's Ren'dorei Effigy (DECOR!)
						anguish(800, i(265701)),	-- Preyseeker's Rutaani Bust (DECOR!)
						anguish(1200, i(265686)),	-- Preyseeker's Rutaani Effigy (DECOR!)
						anguish(800, i(265707)),	-- Preyseeker's Thornspeaker Bust (DECOR!)
						anguish(1200, i(265692)),	-- Preyseeker's Thornspeaker Effigy (DECOR!)
						anguish(800, i(265697)),	-- Preyseeker's Tinker Bust (DECOR!)
						anguish(1200, i(265682)),	-- Preyseeker's Tinker Effigy (DECOR!)
						anguish(800, i(265708)),	-- Preyseeker's Twilight Bust (DECOR!)
						anguish(1200, i(265694)),	-- Preyseeker's Twilight Effigy (DECOR!)
						anguish(800, i(265702)),	-- Preyseeker's Vindicator Bust (DECOR!)
						anguish(1200, i(265687)),	-- Preyseeker's Vindicator Effigy (DECOR!)
						anguish(800, i(265706)),	-- Preyseeker's Wretched Bust (DECOR!)
						anguish(1200, i(265691)),	-- Preyseeker's Wretched Effigy (DECOR!)
					}),
				},
			}),
			n(252956, {	-- Construct V'anore <Rewards>
				["coord"] = { 55.7, 65.8, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					anguish(1200, i(259991)),	-- Lil' Preyseeker (PET!)
					anguish(800, i(264434)),	-- Voldy (PET!) (TODO: previously quest reward in voidstorm?)
					anguish(2000, i(257191)),	-- Preyseeker's Hubris (MOUNT!)
					anguish(2550, i(257192)),	-- Preyseeker's Wrath (MOUNT!)
					anguish(400, i(258022)),	-- Skilled Preyseeker's Plumed Helm (COSMETIC!)
					anguish(400, i(258024)),	-- Skilled Preyseeker's Shoulder-spikes (COSMETIC!)
					anguish(500, i(258028)),	-- Famed Preyseeker's Plumed Helm (COSMETIC!)
					anguish(500, i(258026)),	-- Famed Preyseeker's Shoulder-spikes (COSMETIC!)
					anguish(500, i(258030)),	-- Famed Preyseeker's Knapsack (COSMETIC!)
					anguish(1600, iensemble(266196)),	-- Ensemble: Preyseeker's Refined Armor
					anguish(1600, iensemble(266197)),	-- Ensemble: Preyseeker's Sleek Armor
					anguish(1600, iensemble(266198)),	-- Ensemble: Preyseeker's Rugged Armor
					anguish(1600, iensemble(266199)),	-- Ensemble: Preyseeker's Polished Armor
					anguish(800, i(263933)),	-- Preyseeker's Hearthstone (TOY!)
					anguish(600, i(264666)),	-- Rod of Exanguishation (TOY!)
					i(256754, {	-- Formula: Enchant Shoulders - Nature's Embrace (RECIPE!)
						["cost"] = {
							{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
							{ "c", 3392, 500 },	-- Remnant of Anguish
						},
					}),
					i(256756, {	-- Formula: Enchant Boots - Farstrider's Hunt (RECIPE!)
						["cost"] = {
							{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
							{ "c", 3392, 500 },	-- Remnant of Anguish
						},
					}),
					i(267399, {	-- Technique: Sturdy Ren'dorei Cask (RECIPE!)
						["cost"] = {
							{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },	-- Artisan Enchanter's Moxie (TODO: take a look if they fix it)
							{ "c", 3392, 500 },	-- Remnant of Anguish
						},
					}),
					i(267400, {	-- Technique: Wild Hanging Scroll (RECIPE!)
						["cost"] = {
							{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },	-- Artisan Enchanter's Moxie (TODO: take a look if they fix it)
							{ "c", 3392, 500 },	-- Remnant of Anguish
						},
					}),
				},
			}),
		}),
		n(WORLD_QUESTS, {
			q(91601, {	-- Prey: Apex Predator
				["coord"] = { 42.7, 56.0, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91602, {	-- Prey: Apex Predator (TODO: (un)flagged after filling up bar in Zul'Aman zone)
				--["coord"] = { X, Y, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91604, {	-- Prey: Apex Predator (TODO: fired after filling up progress during hard mode in Zul'Aman)
				--["coord"] = { X, Y, MAP.MIDNIGHT.ZULAMAN },
			}),
			q(91207, {	-- Prey: Apex Predator (TODO: probably could be wrongly flagged after fill up bar during hard mode)
				["coord"] = { 42.7, 56.0, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91523, {	-- Prey: Concealed Threat (TODO: (un)flagged after picked up Deliah Gloomsong (Hard))
				["coord"] = { 33.3, 45.5, MAP.MIDNIGHT.VOIDSTORM },
			}),
			q(91590, {	-- Prey: Concealed Threat
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91591, {	-- Prey: Concealed Threat (TODO: probably could be wrongly flagged after fill up bar during hard mode)
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91592, {	-- Prey: Concealed Threat (TODO: probably could be wrongly flagged after fill up bar during nightmare mode)
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91458, {	-- Prey: Endurance Hunter (TODO: fired after filling up progress during normal mode)
				--["coord"] = { X, Y, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91594, {	-- Prey: Endurance Hunter
				["coord"] = { 60.1, 71.7, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91595, {	-- Prey: Endurance Hunter (TODO: rng marked completed while was gathering ore/herb)
				["coord"] = { 41.2, 30.0, MAP.MIDNIGHT.ZULAMAN },
			}),
			q(91596, {	-- Prey: Endurance Hunter (TODO: (un)flagged after picked up L-N-0R the Recycler (Hard))
				--["coord"] = { X, Y, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(PREY, {
			n(QUESTS, {
				--q(93168),	-- after completion questID 91096 (Prey: Magistrix Emberlash (Normal)), probably end of "tutorial" or first per week?
				--whatever that rng things are happen
				--q(95413),	-- "Community Engagement" after zone (Eversong Woods) rare kill during Prey (and unflagged at same frame)
				--q(95485),	-- same as above but missing quest name
				--q(95535),	-- completed/unflagged/completed/unflagged/completed (yes, 3 times), after Lost Guardian was killied during Prey in zone (hard mode)
				--q(95536),	-- unflagged after looting Minor Coalesced Anguish
				--q(95537),	-- same as above, but after Banuran was kiiled during Prey in zone (hard mode)
				--q(95538),	-- unflagged when looted some ore in zone during prey (hard mode)
				--q(95539), -- unflagged when looted some ore in zone (Zul'Aman) during prey (hard mode)

				--related to prey bosses kill - counter for something?
				--doesn't matter on difficulty or whatever boss it was, weekly
				--q(95000),	-- 1st per week
				--q(95001),	-- 2nd per week
				--q(95002),	-- 3rd per week
				--q(95003),	-- 4th per week

				--Seems like lockout for rewards? Weekly
				--- Veteran
				--q(93169),	-- Veteran chest lockout (Hard mode), 1st
				--q(93857),	-- Veteran chest lockout (Hard mode), 2nd (after it - Veteran Sack as reward)
				--q(93858),	-- Veteran Sack was looted, 1st after chest
				--q(93860),	-- Veteran Sack was looted, 2nd after chest
				--- Adventures
				--q(93168),	-- after Praetor Singularis (Normal) was killed
			}),
		}),
	}),
}));
