---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(QUESTS, {	-- [Alliance]
			q(50970, {	-- A Farmer's Fate
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				["coord"] = { 29.9, 40.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 135976 },	-- Morwin Gladeheart
				-- May have additional/different source quest(s); needs confirmation.
				-- Not required for "Drust Do It."
			}),
			q(49443, {	-- A Lesson in Witch Hunting
				["sourceQuests"] = { 48986 },	-- Take the High Road
				["coord"] = { 36.8, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["groups"] = {
					i(156515),	-- Lucille's Sewing Kit (QI!)
				},
			}),
			q(50327, {	-- A Little 'Pick Me Up'
				["sourceQuests"] = {
					50306,	-- Odds and Ends
					50265,	-- Saving Master Ashton
				},
				["coord"] = { 20.6, 57.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 133126 },	-- Marten Webb
			}),
			q(50174, {	-- All Wrapped Up
				["provider"] = { "n", 132374 },	-- Elsie Wright
				["coord"] = { 34.6, 30.71, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50149 },	-- A Weather Eye
				-- May be available earlier; needs confirmation.
			}),
			q(50903, {	-- A Missing Master
				["provider"] = { "n", 131469 },	-- Marten Webb
				["coord"] = { 25.5, 70.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49939 },	-- So Long, Sister
			}),
			q(48538, {	-- An Airtight Alibi
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48523 },	-- The Murderous Matron
				-- Awarded "An Airtight Alibi" criteria.
			}),
			q(49259, {	-- And Justice For All
				["sourceQuests"] = { 48538 },	-- An Airtight Alibi
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["groups"] = {
					i(155126),	-- Reade's Waraxe
					i(155152),	-- Witchrend Greatsword
					i(155148),	-- Silverwood Spire
					i(155583),	-- Hexward Spellblade
					i(158647),	-- Everit's Morning Star
					i(155130),	-- Hag-Hunter Crossbow
					i(155584),	-- Crone Sticker
					i(158646),	-- Curseform Sickle
					i(155143),	-- Marshal's Halberd
					i(159536),	-- Gol Osigr Hammer
					-- Horde Source id's (not actual reward)
					i(161298),	-- Strong Juju Bloodhexxer
				},
			}),
			q(50988, {	-- An Economic Opportunity
				["provider"] = { "n", 136234 },	-- Cesi Loosecannon
				["coord"] = { 22.8, 46.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159143),	-- Tranquil Charm (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(50175, {	-- An Eight-Legged Curse
				["provider"] = { "n", 132374 },	-- Elsie Wright
				["coord"] = { 34.6, 30.71, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50149 },	-- A Weather Eye
				-- May be available earlier; needs confirmation.
			}),
			q(53463, {	-- An Eight-Legged Curse
				["coord"] = { 34.6, 30.6, DRUSTVAR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 143871 },	-- Foreman Cogbutton
			}),
			q(49807, {	-- A New Order
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["coord"] = { 36.8, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					49803,	-- Changing of the Guard
					49804,	-- Sharp Thinking
					-- Definitely requires "Changing of the Guard;" may not require others.  Needs confirmation.
					-- Awarded "A New Order" criteria.
				},
				["groups"] = {
					i(156532),	-- Inquisitor's Regalia (QI!)
					azeriteItem(155107),	-- Banisher Cowl
					azeriteItem(155104),	-- Waycrest Militia Helmet
					azeriteItem(160888),	-- Banisher Jerkin
					azeriteItem(160890),	-- Waycrest Militia Battleplate
					azeriteItem(160889),	-- Crone-Seeker's Chainmail
					azeriteItem(155106),	-- Crone-Seeker's Helm
					azeriteItem(160891, { ["timeline"] = { CREATED_8_0_1 }}),	-- Wickerwoven Robe
					azeriteItem(160887),	-- Wickerwoven Vestments
					azeriteItem(155105),	-- Wickerwoven Crown
					azewrongItem(175301),	-- Banisher Cowl (no azerite version)
					azewrongItem(175298),	-- Waycrest Militia Helmet (no azerite version)
					azewrongItem(175380),	-- Banisher Jerkin (no azerite version)
					azewrongItem(175382),	-- Waycrest Militia Battleplate (no azerite version)
					azewrongItem(175381),	-- Crone-Seeker's Chainmail (no azerite version)
					azewrongItem(175300),	-- Crone-Seeker's Helm (no azerite version)
					azewrongItem(175379),	-- Wickerwoven Vestments (no azerite version)
					azewrongItem(175299),	-- Wickerwoven Crown (no azerite version)
				},
			}),
			q(50253, {	-- An Improvised Arsenal
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 31.4, 30.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					50151,	-- A Steady Ballast
					50173,	-- Precious Metals
				},
				["groups"] = {
					i(156853),	-- Battered Hand Cannon (QI!)
				},
			}),
			q(50450, {	-- An Offensive Harvest
				["provider"] = { "n", 133839 },	-- Harris Hocking
				["coord"] = { 27.0, 25.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50449 },	-- Reeking Refuge
				["groups"] = {
					i(157807),	-- Aromatic Onion (QI!)
				},
			}),
			q(48113, {	-- A Pungent Solution
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48111 },	-- Trial by Superstition
				["groups"] = {
					i(151934),	-- Juicy Onion (QI!)
				},
			}),
			q(48522, {	-- A Revealing Missive
				["provider"] = { "i", 152587 },	-- Levae's Missive (QS!)
				["races"] = ALLIANCE_ONLY,
				["description"] = "This quest appears to drop from whichever Sister you kill last.",
				["sourceQuests"] = { 48520 },	-- The Three Sisters
				["crs"] = {
					126144,	-- Sister Ashwell
					126522,	-- Sister Early
					126523,	-- Sister Mooring
				},
			}),
			q(48682, {	-- A Simple Sacrifice
				["provider"] = { "n", 127396 },	-- Initiate Peony
				["coord"] = { 59.0, 22.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48679 },	-- Mind the Hives
			}),
			q(51018, {	-- Asking for a Friend
				["provider"] = { "n", 136184 },	-- Kane Carlyle
				["coord"] = { 20.8, 46.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50978 },	-- Out With the Old Boss
				-- Not required for "Drust Do It."
			}),
			q(48941, {	-- A Slight Detour
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 69.6, 43.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49259 },	-- And Justice For All
			}),
			q(50151, {	-- A Steady Ballast
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 31.36, 30.31, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50149 },	-- A Weather Eye
			}),
			q(50454, {	-- A Traitor's Death
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 31.3, 30.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50453 },	-- Barrier Buster (must be ON quest to pick up this one)
				["groups"] = {
					i(158599),	-- Wickerwoven Grips
					i(158600),	-- Banisher Handwraps
					i(158601),	-- Crone-Seeker's Handguards
					i(158602),	-- Waycrest Militia Handguards
					i(155462),	-- Wickerwoven Legwraps
					i(155471),	-- Banisher Trousers
					i(155479),	-- Crone-Seeker's Chausses
					i(155487),	-- Waycrest Militia Legplates
				},
			}),
			q(50036, {	-- A Weapon of Old
				["provider"] = { "n", 131448 },	-- Warren Ashton
				["coord"] = { 25.2, 67.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50092 },	-- Curiously Strong
			}),
			q(50149, {	-- A Weather Eye
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 31.2, 29.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50003 },	-- The First Watch
				["groups"] = {
					i(156855),	-- Falconer's Whistle (QI!)
				},
			}),
			q(53462, {	-- All Wrapped Up
				["coord"] = { 34.6, 30.6, DRUSTVAR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 143871 },
			}),
			q(50453, {	-- Barrier Buster
				["provider"] = { "n", 132193 },	-- Angus Ballaster
				["coord"] = { 31.7, 29.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50446 },	-- Witchrending
				["groups"] = {
					i(157800),	-- Blasting Powder (QI!)
				},
			}),
			q(47947, {	-- Big Bad Wolves
				["provider"] = { "n", 124786 },	-- Thomas Staughton
				["coord"] = { 63.2, 27.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47945 },	-- To Market, To Market
			}),
			q(48883, {	-- Big Gulls Won't Die
				["provider"] = { "n", 127558 },	-- Art Hughie
				["coord"] = { 71.7, 50.4, DRUSTVAR },
				["sourceQuests"] = { 48880, 48904 },	-- Mean Gulls & Take the Bait
				["groups"] = {
					i(155459),	-- Anglin' Art's Sandals
					i(155468),	-- Anglin' Art's Treads
					i(155476),	-- Anglin' Art's Waders
					i(155484),	-- Anglin' Art's Stompers
					i(160578),	-- Anglin' Art's Bag o' Fish
				},
				-- May also require "The Reel Deal;" needs confirmation.
			}),
			q(50266, {	-- Bittersweet
				["provider"] = { "n", 133101 },	-- Samantha Sweet
				["coord"] = { 21.1, 55.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50265 },	-- Saving Master Ashton (must be ON quest to pick this one up)
			}),
			q(50761, {	-- Blood in the Chapel
				["provider"] = { "n", 132994 },	-- Lord Arthur Waycrest
				["coord"] = { 23.2, 12.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50760 },	-- From This Day Forward
				-- Not required for "Drust Do It."
			}),
			q(52075, {	-- Boned
				["provider"] = { "n", 139912 },	-- Ranger Wons
				["coord"] = { 61.9, 59.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 52074 },	-- Deliverance
				-- Not required for "Drust Do It."
			}),
			q(50238, {	-- Bramblethorn
				["provider"] = { "n", 132966 },	-- Lynn Sweet
				["coord"] = { 26.9, 71.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49939 },	-- So Long, Sister
				["groups"] = {
					i(156830),	-- Lord Sharptooth (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(50001, {	-- Breaking Hag
				["provider"] = { "n", 131879 },	-- Inquisitor Cleardawn
				["coord"] = { 26.9, 65.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49896 },	-- To Falconhurst
			}),
			q(50457, {	-- Break on Through
				["provider"] = { "n", 131642 },	-- Inquisitor Sterntide
				["coord"] = { 30.6, 21.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50453 },	-- Barrier Buster
				-- Awarded "Break on Through" criteria."
			}),
			q(50090, {	-- Building Defenses
				["sourceQuests"] = { 50903 },	-- A Missing Master
				["coord"] = { 25.5, 70.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131442 },	-- Leandro Royston
				["groups"] = {
					i(160189),	-- Wickerwoven Footwraps
					i(160190),	-- Banisher Footwraps
					i(160191),	-- Crone-Seeker's Treads
					i(160192),	-- Waycrest Militia Boots
					i(158611),	-- Wickerwoven Woolies
					i(158612),	-- Banisher Pantaloons
					i(158613),	-- Crone-Seeker's Pants
					i(158614),	-- Waycrest Militia Legguards
				},
				-- Not required for "Drust Do It."
			}),
			q(52484, {	-- Buried Power
				["sourceQuests"] = { 52482 },	-- The Old Bear
				["provider"] = { "n", 141894 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162526),	-- Drust Runestone (QI!)
				},
			}),
			q(49803, {	-- Changing of the Guard
				["provider"] = { "n", 129643 },	-- Marshal Everit Reade
				["coord"] = { 36.9, 50.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49443 },	-- A Lesson in Witch Hunting
			}),
			q(48683, {	-- Changing Seasons
				["provider"] = { "n", 127418 },	-- Edwin Maldus
				["coord"] = { 56.5, 23.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48682 },	-- A Simple Sacrifice
				["groups"] = {
					i(158592),	-- Wickerwood Torch
					i(158594),	-- Barbthorn Bulwark
					i(158615),	-- Wickerwoven Belt
					i(158616),	-- Banisher Waistcord
					i(158617),	-- Crone-Seeker's Cinch
					i(158618),	-- Waycrest Militia Greatbelt
				},
			}),
			q(48521, {	-- Charming the Lifeless
				["coord"] = { 70.0, 62.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48519 },	-- Hope They Can't Swim
				["provider"] = {"o",273814},	-- Bladed Charm
				["groups"] = {
					i(152590),	-- Wicker Charm (QI!)
				},
			}),
			q(49295, {	-- Clear-Cutting
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48171 },	-- The Curse of Fletcher's Hollow
			}),
			q(49898, {	-- Clear Victory
				["provider"] = { "n", 135085 },	-- Captain Lilian Nottley
				["coord"] = { 39.7, 57.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49807 },	-- A New Order
			}),
			q(50445, {	-- Controlling the Situation
				["provider"] = { "n", 133105 },	-- Warren Ashton
				["coord"] = { 24.5, 56.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50370 },	-- Deeper Into the Woods
				["groups"] = {
					i(157821),	-- Control Charm (QI!)
					i(158557),	-- Heartsbane Charm
				},
			}),
			q(47981, {	-- Cracking the Curse
				["coord"] = { 60.5, 31.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47979 },	-- Witch Hunt (must be ON this quest and sit on the stool for this quest to become available)
				["provider"] = {"o",272422},	-- Gentle's Spellbook
			}),
			q(48524, {	-- Culling the Coven
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					48522,	-- A Revealing Missive
					48521,	-- Charming the Lifeless
					48520,	-- The Three Sisters
				},
			}),
			q(47950, {	-- Cured Ham
				["provider"] = { "n", 124786 },	-- Thomas Staughton
				["coord"] = { 63.2, 27.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47949 },	-- That's Not My Fetish
				-- May have additional source quests; needs confirmation.
				["groups"] = {
					i(151793),	-- Pig Fetish (QI!)
					i(153432),	-- Pig Fetish (QI!)
				},
			}),
			q(50092, {	-- Curiously Strong
				["provider"] = { "n", 131448 },	-- Warren Ashton
				["coord"] = { 25.3, 67.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50903 },	-- A Missing Master
				["groups"] = {
					i(156828),	-- Frost Potion (QI!)
				},
			}),
			q(51020, {	-- Cutthroat Business Practices
				["provider"] = { "n", 136227 },	-- Fixi Slyshiv
				["coord"] = { 20.8, 46.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50988 },	-- An Economic Opportunity
				-- Not required for "Drust Do It."
			}),
			q(50370, {	-- Deeper Into the Woods
				["provider"] = { "n", 133098 },	-- Inquisitor Cleardawn
				["coord"] = { 20.6, 57.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50327 },	-- A Little 'Pick Me Up'
			}),
			q(52074, {	-- Deliverance
				["provider"] = { "n", 125457 },	-- Rebecca Hale
				["coord"] = { 64.5, 54.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48947 },	-- Gol Koval
				["groups"] = {
					i(161124),	-- Emergency Supplies (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(50152, {	-- Digging for Scraps
				["provider"] = { "n", 131641 },	-- Inquisitor Yorrick
				["coord"] = { 26.2, 36.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50149 },	-- A Weather Eye
				-- May be available earlier; needs confirmation.
				["groups"] = {
					i(156663),	-- Quality Salvage (QI!)
				},
			}),
			q(48963, {	-- Diversionary Tactics
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 44.7, 28.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					48943,	-- Salvage Rights
					48942,	-- Yeti to Rumble
				},
				-- May only require "Yeti to Rumble;" needs confirmation.
			}),
			q(49890, {	-- Drustfall
				["provider"] = { "n", 130933 },	-- Inquisitor Cleardawn
				["coord"] = { 36.5, 61.3, DRUSTVAR },	-- may change if the stones aren't always in the same order?
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					48517,	-- Honorable Discharge
					48184,	-- Pieces of History
				},
				-- Awarded "Clear Victory" criteria.  Presumably this should be awarded by the "Clear Victory" quest, but "Drustfall" must also be required for the criteria.
				["groups"] = {
					i(158581),	-- Shimmering Quicksilver Drape
					i(155573),	-- Rowanwood Loop
				},
			}),
			q(50451, {	-- Eating Through the Defenses
				["provider"] = { "n", 133839 },	-- Harris Hocking
				["coord"] = { 27.0, 25.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50449 },	-- Reeking Refuge
			}),
			q(52149, {	-- Everburning
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["coord"] = { 36.8, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					50533,	-- Stick It To 'Em!
					50639,	-- Waycrest Manor: The Fallen Mother
				},
				["groups"] = {
					i(161247),	-- Marshal's Regalia (QI!)
				},
			}),
			q(51001, {	-- Every Day I'm Smugglin'
				["provider"] = { "n", 136140 },	-- Clonk Greaseybit
				["coord"] = { 20.9, 43.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50978 },	-- Out With the Old Boss
				-- Not required for "Drust Do It."
			}),
			q(50063, {	-- Fighting with Fire
				["provider"] = { "n", 131448 },	-- Warren Ashton
				["coord"] = { 25.2, 67.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50036 },	-- A Weapon of Old
				-- Awarded "Fighting with Fire" criteria.
				["groups"] = {
					i(156710),	-- Liquid Fire Flask (QI!)
					i(155162),	-- Band of Wortcunning
					i(155159),	-- Waycrest Inquisitor's Cloak
				},
			}),
			q(50760, {	-- From This Day Forward
				["provider"] = { "n", 134953 },	-- Alexander Treadward
				["coord"] = { 23.3, 12.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50759 },	-- Running Late
				-- Not required for "Drust Do It."
			}),
			q(47980, {	-- Furious Familiars
				["provider"] = { "n", 125093 },	-- Fallhaven Villager
				["coord"] = { 60.8, 30.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47979 },	-- Witch Hunt (must be ON this quest and sit on the stool for this quest to become available)
			}),
			q(48947, {	-- Gol Koval
				["provider"] = { "n", 127743 },	-- Auntie Amanda Hale
				["coord"] = { 69.5, 43.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,	-- for "Deliverance"
				["sourceQuests"] = { 49259 },	-- And Justice For All
				-- Not required for "Drust Do It."
			}),
			q(50953, {	-- Greenstalker
				["provider"] = { "n", 135861 },	-- Adalyn Forestwatcher
				["coord"] = { 33.4, 65.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 51543 },	-- Saplings in the Snow
				-- Not required for "Drust Do It."
			}),
			q(48165, {	-- Harmful If Swallowed
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48111 },	-- Trial by Superstition
				["groups"] = {
					i(151935),	-- Intact Venom Gland (QI!)
				},
			}),
			q(52485, {	-- Hatred's Focus
				["sourceQuests"] = { 52482 },	-- The Old Bear
				["provider"] = { "n", 141894 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162527),	-- Korvash's Skull (QI!)
				},
			}),
			q(50585, {	-- Hexecutioner
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 31.0, 20.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50457 },	-- Break on Through
			}),
			q(50456, {	-- Hexed Hatchlings
				["provider"] = { "n", 131640 },	-- Inquisitor Notley
				["coord"] = { 31.2, 22.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50446 },	-- Witchrending
				-- May be available earlier; needs confirmation.
				-- Not required for "Drust Do It."
				["groups"] = {
					i(157845),	-- Falconer's Whistle (QI!)
				},
			}),
			q(49806, {	-- Hidden Dealings
				["provider"] = {"i",156517},	-- Hastily Drawn Map
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49804 },	-- Sharp Thinking
				["crs"] = {
					129575,	-- Corlain Refugee
					129641,	-- Corlain Refugee
				},
			}),
			q(50177, {	-- Hold the Barricade!
				["sourceQuests"] = {
					50001,	-- Breaking Hag
					50251,	-- Spell Bound
				},
				["coord"] = { 25.7, 70.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 131879 },	-- Inquisitor Cleardawn
				["groups"] = {
					i(160202), -- Banisher Bands
					i(158624), -- Banisher Strap
					i(160203), -- Crone-Seeker's Bands
					i(158625), -- Crone-Seeker's Girdle
					i(160204), -- Waycrest Militia Bindings
					i(158626), -- Waycrest Militia Cinch
					i(158623), -- Wickerwoven Cinch
					i(160201), -- Wickerwoven Wristwraps
					--
					h(i(159072)), -- Death-Pledged Armguards
					h(i(159068)), -- Death-Pledged Waistguard
					h(i(159070)), -- Loa Speaker's Cuffs
					h(i(159067)), -- Loa Speaker's Waistwrap
					h(i(159073)), -- Ritual Flayer's Bracers
					h(i(159069)), -- Ritual Flayer's Cord
				},
			}),
			q(48517, {	-- Honorable Discharge
				["provider"] = { "n", 129983 },	-- Inquisitor Cleardawn
				["coord"] = { 40.2, 56.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48504 },	-- Through the Old Roads
			}),
			q(48519, {	-- Hope They Can't Swim
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					49295,	-- Clear-Cutting
					48518,	-- Save Who We Can
				},
				["groups"] = {
					i(155158), -- Alderwood Loop
					i(155120), -- Banisher Belt
					i(155119), -- Crone-Seeker's Belt
					i(155117), -- Waycrest Militia Girdle
					i(155118), -- Wickerwoven Sash
				},
			}),
			q(53109, {	-- House Waycrest
				["provider"] = { "n", 142651 },	-- Lucille Waycrest
				["coord"] = { 36.0, 51.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 52149 },	-- Everburning
			}),
			q(51134, {	-- If Bones Could Talk
				["races"] = ALLIANCE_ONLY,
				["provider"] = {"i",159748},	-- Rune-Etched Bone
				["sourceQuests"] = { 48941 },	-- A Slight Detour
				-- Needs confirmation -- the quest didn't auto-pop and I didn't notice the item in my bags until later.  This source is based on a wowhead comment.
				-- Not required for "Drust Do It."
				["groups"] = {
					i(159746),	-- Pristine Rune-Etched Bone (QI!)
				},
			}),
			q(48882, {	-- I Like Fish Guts and I Cannot Lie
				["provider"] = { "o", 276513 },	-- Intact Mudfish
				["coord"] = { 70.7, 50.8, DRUSTVAR },
				["sourceQuests"] = { 48880 },	-- Mean Gulls (must be ON quest for this one to appear)
				["groups"] = {
					i(152845),	-- Mudfish Innards (QI!)
				},
			}),
			q(49805, {	-- Implements of Ill Intent
				["coord"] = { 37.7, 50.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49443 },	-- A Lesson in Witch Hunting
				["provider"] = {"o",292523},	-- Heartsbane Grimoire
			}),
			q(48110, {	-- In Case of Ambush
				["provider"] = { "n", 125385 },	-- Marshal Everit Reade
				["coord"] = { 69.7, 43.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48283 },	-- Standing Accused
			}),
			q(50481, {	-- In the Hall of the Drust King
				["provider"] = { "n", 133098 },	-- Inquisitor Cleardawn
				["coord"] = { 24.5, 56.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					50445,	-- Controlling the Situation
					50329,	-- Matrons of the Crimsonwood
					50325,	-- Stopping the Grand Rite
					50530,	-- Witch Way Out
					-- Definitely requires "Matrons of the Crimsonwood;" may not require others.  Needs confirmation.
				},
			}),
			q(52487, {	-- Into Darkness
				["sourceQuests"] = { 52486 },	-- Waycrest Manor: Draining the Heartsbane
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["coord"] = { 36.9, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50172, {	-- Into the Crimsonwood
				["provider"] = { "n", 131879 },	-- Inquisitor Cleardawn
				["coord"] = { 25.1, 67.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50063 },	-- Fighting with Fire
			}),
			q(47428, {	-- Kitty?
				["provider"] = { "n", 122169 },	-- Abby Lewis
				["sourceQuests"] = { 47289 },	-- Teddies and Tea
				["coords"] = {	-- Based on which toy you pick up last.
					{ 55.6, 38.6, DRUSTVAR },	-- Mr. Munchykins
					{ 55.4, 39.7, DRUSTVAR },	-- Trunksy
					{ 56.3, 38.2, DRUSTVAR },	-- Mayor Striggs
				},
				-- Not required for "Drust Do It."
			}),
			q(50455, {	-- Leaving the Nest
				["provider"] = { "n", 131640 },	-- Inquisitor Notley
				["coord"] = { 31.2, 22.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50446 },	-- Witchrending
				["groups"] = {
					o(281326, {	-- Falcon Cage
						["coords"] = {
							{ 31.8, 25.5, DRUSTVAR },
							{ 31.9, 24.2, DRUSTVAR },
							{ 31.6, 24.9, DRUSTVAR },
							{ 31.4, 24.2, DRUSTVAR },
							{ 31.3, 24.8, DRUSTVAR },
						},
						["groups"] = { i(157840) },	-- Falconer's Key (QI!)
					}),
				},
				-- May be available earlier; needs confirmation.
				-- Not required for "Drust Do It."
			}),
			q(51472, {	-- Life Preserver
				["provider"] = { "n", 137732 },	-- Zallestrasza
				["coord"] = { 33.5, 65.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50953 },	-- Greenstalker
				-- Not required for "Drust Do It."
				["groups"] = {
					i(155097),	-- Wickerwoven Sandals
					i(155099),	-- Banisher Boots
					i(155098),	-- Crone-Seeker's Boots
					i(155096),	-- Waycrest Militia Sabatons
					i(155460),	-- Wickerwoven Mitts
					i(155469),	-- Banisher Grips
					i(155477),	-- Crone-Seeker's Strikers
					i(155485),	-- Waycrest Militia Crushers
					--
					h(i(155317)),	-- Death-Pledged Sabatons
					h(i(155316)),	-- Loa Speaker's Treads
					h(i(155318)),	-- Ritual Flayer's Boots
					h(i(155315)),	-- Nazmani Warboots
				},
			}),
			q(48477, {	-- Looking for One More
				["provider"] = { "n", 126240 },	-- Bridget Fairwater
				["coord"] = { 59.8, 48.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48476 },	-- Split Party
				-- Not required for "Drust Do It."
			}),
			q(50967, {	-- Lost in the Woods
				["provider"] = { "n", 135976 },	-- Morwin Gladeheart
				["coord"] = { 29.9, 40.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May have additional/different source quest(s); needs confirmation.
				-- Not required for "Drust Do It."
			}),
			q(50329, {	-- Matrons of the Crimsonwood
				["provider"] = { "n", 133105 },	-- Warren Ashton
				["coord"] = { 24.5, 56.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50370 },	-- Deeper Into the Woods
				["groups"] = {
					i(158175),	-- Weakening Potion (QI!)
				},
			}),
			q(48880, {	-- Mean Gulls
				["provider"] = { "n", 127558 },	-- Art Hughie
				["coord"] = { 71.7, 50.4, DRUSTVAR },
			}),
			q(48792, {	-- Menace to Society
				["provider"] = { "n", 127015 },	-- Thaddeus "Gramps" Rifthold
				["coord"] = { 53.9, 27.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48948 },	-- The North Pass Caverns
			}),
			q(48679, {	-- Mind the Hives
				["provider"] = { "n", 127080 },	-- Lord Autumnvale
				["coord"] = { 59.4, 21.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48678 },	-- Questionable Offerings
			}),
			q(48804, {	-- Mistakes Were Made
				["provider"] = { "n", 127157 },	-- Marcus Howlingdale
				["coord"] = { 51.4, 23.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48793 },	-- The Adventurer's Society
			}),
			q(52483, {	-- Nightmare Catcher
				["sourceQuests"] = { 52482 },	-- The Old Bear
				["provider"] = { "n", 141894 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(162525),	-- Ancient Sinew (QI!)
					i(162524),	-- Intact Drust Bone (QI!)
				},
			}),
			q(50306, {	-- Odds and Ends
				["provider"] = { "n", 133126 },	-- Marten Webb
				["coord"] = { 20.6, 57.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50172 },	-- Into the Crimsonwood
				["groups"] = {
					i(156951),	-- Bag of Reagents (QI!)
					i(156950),	-- Organic Matter Sample (QI!)
					i(158595),	-- Ashenwood Defender
					i(160194),	-- Banisher Grasps
					i(160195),	-- Crone-Seeker's Mitts
					i(158593),	-- Drust-Speaker's Pathfinder
					i(160196),	-- Waycrest Militia Grips
					i(160193),	-- Wickerwoven Mittens
					--
					h(i(155373)),	-- Golden Lilypad
				},
			}),
			q(48170, {	-- Once Bitten, Twice Shy
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48111 },	-- Trial by Superstition
			}),
			q(50763, {	-- One Last Request
				["sourceQuests"] = { 50762 },	-- The Lady's Fate
				["provider"] = { "n", 135200 },	-- Alexander Treadward
				["coord"] = { 23.3, 17.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158654),	-- Treadward's Ring (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(50911, {	-- One Man Against the Horde
				["provider"] = { "n", 135673 },	-- Scout McKellis
				["coord"] = { 34.6, 39.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				--	["sourceQuests"] = {  },	-- UNKNOWN - this quest was bugged/not appearing when I quested through the zone, so not sure if it has a specific prereq or only access to Kul Tiras in general
				-- Not required for "Drust Do It."
			}),
			q(50978, {	-- Out With the Old Boss
				["provider"] = { "n", 136234 },	-- Cesi Loosecannon
				["coord"] = { 20.6, 46.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					51020,	-- Cutthroat Business Practices
					51019,	-- She's Got it Where it Counts
					-- Definitely requires Cutthroat Business Practices; may not require other.  Needs confirmation.
				},
				-- Not required for "Drust Do It."
				["groups"] = {
					i(158640),	-- Boss o' the Port
					i(158642),	-- Tornsail Skull Cracker
					i(158639),	-- Innkeep's Slyshiv
					i(160207),	-- Freeport Falchion
					i(158644),	-- Bilgewater Beatstick
					i(158649),	-- Kane's Flayer
					i(158643),	-- Anyport Repeater
					i(158648),	-- Boss Cesi's Gavel
					i(158645),	-- Smuggler's Pass
					--
					h(i(161303)),	-- Scorching Sands Bludgeon
				},
			}),
			q(53430, {	-- Order Of Embers Crossbow
				["coord"] = { 42.6, 25.1, DRUSTVAR },
				["provider"] = { "o", 297939 },	-- Order Of Embers Crossbow
				["cost"] = {{"i",163749,1}},	-- Old Crossbow
			}),
			q(53431, {	-- Order Of Embers Flask
				["coord"] = { 42.6, 25.1, DRUSTVAR },
				["provider"] = { "o", 297942 },	-- Order Of Embers Flask
				["cost"] = {{"i",163746,1}},	-- Old Flask
			}),
			q(53433, {	-- Order Of Embers Hat
				["coord"] = { 42.6, 25.1, DRUSTVAR },
				["provider"] = { "o", 297941 },	-- Order Of Embers Hat
				["cost"] = {{"i",163748,1}},	-- Old Hat
			}),
			q(53432, {	-- Order Of Embers Knife
				["coord"] = { 42.6, 25.2, DRUSTVAR },
				["provider"] = { "o", 297940 },	-- Order Of Embers Knife
				["cost"] = {{"i",163747,1}},	-- Old Knife
			}),
			q(50758, {	-- Painful Memories
				["provider"] = { "n", 135200 },	-- Alexander Treadward
				["coord"] = { 23.2, 17.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50754 },	-- To Have Loved and Lost
				["groups"] = {
					i(158654),	-- Treadward's Ring (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(48184, {	-- Pieces of History
				["provider"] = { "n", 129983 },	-- Inquisitor Cleardawn
				["coord"] = { 40.2, 56.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48504 },	-- Through the Old Roads
			}),
			q(47948, {	-- Pork Chop
				["sourceQuests"] = { 47945 },	-- To Market, To Market
				["coord"] = { 63.2, 27.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = { "n", 124786 },	-- Thomas Staughton
				["groups"] = {
					i(155150),	-- Swinestained Saber
					i(158641),	-- Pork-Chopper Pike
					i(155139),	-- Mad-Butcher's Mallet
					i(155153),	-- Elder Crone's Ladle
					i(155131),	-- Hacksaw Carving Knife
					i(155127),	-- Fallhaven Hatchet
					i(155128),	-- Roland's Tenderizer
					i(155136),	-- Autumnvale Long Rifle
				},
			}),
			q(50452, {	-- Potent Protection
				["provider"] = { "n", 133839 },	-- Harris Hocking
				["coord"] = { 27.0, 25.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					50450,	-- An Offensive Harvest
					50451,	-- Eating Through the Defenses
				},
				["groups"] = {
					i(157846),	-- Sack of Aromatic Onions (QI!)
					i(155564),	-- Mercy's Psalter
				},
			}),
			q(50929, {	-- Powder to the People
				["provider"] = { "n", 135673 },	-- Scout McKellis
				["coord"] = { 34.6, 39.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(159076),	-- Azerite Powder (QI!)
				},
				--	["sourceQuests"] = {  },	-- UNKNOWN - this quest was bugged/not appearing when I quested through the zone, so not sure if it has a specific prereq or only access to Kul Tiras in general
				-- Not required for "Drust Do It."
			}),
			q(50173, {	-- Precious Metals
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 31.4, 30.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50149 },	-- A Weather Eye
				["groups"] = {
					o(280802, {	-- Silver Nugget
						["coords"] = {
							{ 34.2, 30.4, DRUSTVAR },
							{ 35.2, 30.4, DRUSTVAR },
							{ 35.4, 28.9, DRUSTVAR },
							{ 35.4, 32.3, DRUSTVAR },
							{ 35.5, 29.0, DRUSTVAR },
							{ 35.7, 32.8, DRUSTVAR },
							{ 36.0, 31.5, DRUSTVAR },
							{ 36.7, 32.1, DRUSTVAR },
						},
						["groups"] = { i(156722) },	-- Silver Nugget (QI!)
					}),
				},
			}),
			q(53461, {	-- Precious Metals
				["coord"] = { 36.4, 25.8, DRUSTVAR },
				["races"] = HORDE_ONLY,
				["provider"] = { "n", 143878 },	-- Reez Grimelock
				["groups"] = {
					o(280802, {	-- Silver Nugget
						["coords"] = {
							{ 34.2, 30.4, DRUSTVAR },
							{ 35.2, 30.4, DRUSTVAR },
							{ 35.4, 28.9, DRUSTVAR },
							{ 35.4, 32.3, DRUSTVAR },
							{ 35.5, 29.0, DRUSTVAR },
							{ 35.7, 32.8, DRUSTVAR },
							{ 36.0, 31.5, DRUSTVAR },
							{ 36.7, 32.1, DRUSTVAR },
						},
						["groups"] = { i(156722) },	-- Silver Nugget (QI!)
					}),
				},
			}),
			q(48678, {	-- Questionable Offerings
				["provider"] = { "n", 127080 },	-- Lord Autumnvale
				["coord"] = { 59.4, 21.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48677 },	-- Wicker Worship
			}),
			q(49242, {	-- Quill or Be Quilled
				["provider"] = { "n", 128494 },	-- Adela Hawthorne
				["coord"] = { 66.9, 42.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48111 },	-- Trial by Superstition
				-- May be available slightly earlier; needs confirmation.
			}),
			q(48180, {	-- Really Big Problem
				["provider"] = { "n", 140048 },	-- Arthur Tradewind
				["coord"] = { 58.4, 63.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					48622,	-- The Vanishing Lord
					52074,	-- Deliverance
				},
				-- May have other/later sourceQuests; needs confirmation.
				-- Not required for "Drust Do It."
			}),
			q(50449, {	-- Reeking Refuge
				["provider"] = { "n", 131639 },	-- Inquisitor Mace
				["coord"] = { 28.5, 25.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50253 },	-- An Improvised Arsenal
				-- May be available earlier; needs confirmation.
			}),
			q(50447, {	-- Remembering the Fallen
				["provider"] = { "n", 134009 },	-- Corlain Townsperson
				["coord"] = { 29.2, 29.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50253 },	-- An Improvised Arsenal
				-- May be available earlier; needs confirmation.
				["groups"] = {
					i(157806),	-- Personal Keepsake (QI!)
				},
			}),
			q(50912, {	-- Remix to Ignition
				["coord"] = { 34.7, 40.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["provider"] = {"o",284426},	-- Buried Mining Machine
			--	["sourceQuests"] = {  },	-- UNKNOWN - this quest was bugged/not appearing when I quested through the zone, so not sure if it has a specific prereq or only access to Kul Tiras in general
				["groups"] = {
					i(160101),	-- Goldspark's Ignition Key (QI!)
				},
			}),
			-- Not required for "Drust Do It."
			q(48179, {	-- Rescue Rangers
				["provider"] = { "n", 139912 },	-- Ranger Wons
				["coord"] = { 61.9, 59.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 52074 },	-- Deliverance
				-- Not required for "Drust Do It."
				["groups"] = {
					i(158607),	-- Wickerwoven Pants
					i(158608),	-- Banisher Pants
					i(158609),	-- Crone-Seeker's Links
					i(158610),	-- Waycrest Militia Chausses
					i(155466),	-- Wickerwoven Bracers
					i(155474),	-- Banisher Armbands
					i(155482),	-- Crone-Seeker's Armguards
					i(155490),	-- Waycrest Militia Vambraces
				},
			}),
			q(48805, {	-- Research Recovery
				["coord"] = { 51.8, 22.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48793 },	-- The Adventurer's Society
				["provider"] = {"o",276251},	-- Excavation Inventory
				["groups"] = {
					i(152699),	-- "Ancient Potsherds" (QI!)
					i(152703),	-- "Genuine Titan Disc" (QI!)
					i(152704),	-- "Relic of the Makers" (QI!)
				},
			}),
			q(50584, {	-- Ruinous Rituals
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 31.0, 20.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50457 },	-- Break on Through
			}),
			q(52488, {	-- Runic Resistance
				["sourceQuests"] = { 52487 },	-- Into Darkness
				["provider"] = { "n", 142287 },	-- Katherine Proudmoore
				["coord"] = { 27.5, 58.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50759, {	-- Running Late
				["provider"] = { "n", 134953 },	-- Alexander Treadward
				["coord"] = { 23.3, 12.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50758 },	-- Painful Memories
				["groups"] = {
					i(158719),	-- Lord Waycrest's Notes (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(48943, {	-- Salvage Rights
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 46.1, 33.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48941 },	-- A Slight Detour
			}),
			q(51543, {	-- Saplings in the Snow
				["provider"] = { "n", 135861 },	-- Adalyn Forestwatcher
				["coord"] = { 33.4, 65.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May have additional/later sourceQuests; needs confirmation.
				-- Picked up after turning in "Drustfall."
				-- Not required for "Drust Do It."
				["groups"] = {
					i(160406),	-- Mountain Sapling (QI!)
				},
			}),
			q(47946, {	-- Save Their Bacon
				["provider"] = { "n", 124786 },	-- Thomas Staughton
				["coord"] = { 63.2, 27.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47945 },	-- To Market, To Market
			}),
			q(48518, {	-- Save Who We Can
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48171 },	-- The Curse of Fletcher's Hollow
			}),
			q(50265, {	-- Saving Master Ashton
				["provider"] = { "n", 133098 },	-- Inquisitor Cleardawn
				["coord"] = { 20.6, 57.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50172 },	-- Into the Crimsonwood
				["groups"] = {
					i(156859),	-- Cage Key (QI!)
				},
			}),
			q(48475, {	-- Seeing Spirits
				["provider"] = { "n", 126210 },	-- Caretaker Allen
				["coord"] = { 62.5, 42.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May have additional sourceQuests; needs confirmation.  Picked up after turning in "And Justice For All."
				["groups"] = {
					i(152480),	-- Gravebloom (QI!)
					i(152481),	-- Gravebloom Salve (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(49804, {	-- Sharp Thinking
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["coord"] = { 36.8, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49443 },	-- A Lesson in Witch Hunting
				["groups"] = {
					i(156518),	-- Lucille's Sewing Needle (QI!)
					i(163607),	-- Lucille's Sewing Needle (TOY!)
				},
			}),
			q(51019, {	-- She's Got it Where it Counts
				["provider"] = { "n", 136233 },	-- Klause Fairwind
				["coord"] = { 19.8, 44.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50988 },	-- An Economic Opportunity
				-- Not required for "Drust Do It."
			}),
			q(47968, {	-- Signs and Portents
				["coord"] = { 56.1, 35.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622, },	-- The Vanishing Lord
				["provider"] = {"o",272179},	-- Mayor's Bulletin
				["groups"] = {
					i(179385),	-- Neglected Luck Pendant (added in SL)
				},
			}),
			q(49939, {	-- So Long, Sister
				["provider"] = { "n", 131879 },	-- Inquisitor Cleardawn
				["coord"] = { 25.7, 70.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50177 },	-- Hold the Barricade!
			}),
			q(50251, {	-- Spell Bound
				["provider"] = { "n", 131579 },	-- Captive Villager
				["coord"] = { 26.1, 66.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50001 },	-- Breaking Hag
				["isBreadcrumb"] = true,	-- Quest is not obtainable after a certain point in the quest chain
			}),
			q(48476, {	-- Split Party
				["provider"] = { "n", 126225 },	-- Aaron Cresterly
				["coord"] = { 60.7, 46.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48475 },	-- Seeing Spirits
				-- Not required for "Drust Do It."
			}),
			q(48283, {	-- Standing Accused
				["provider"] = { "n", 125394 },	-- Constable Henry Framer
				["coord"] = { 70.1, 42.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48108 },	-- The Waycrest Daughter
			}),
			q(50533, {	-- Stick It To 'Em!
				["provider"] = { "n", 134301 },	-- Inquisitor Cleardawn
				["coord"] = { 27.0, 57.9, DRUSTVAR },	-- Coordinates may vary slightly; the NPCs follow you when outside the cave.
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50481 },	-- In the Hall of the Drust King
				["groups"] = {
					i(158064),	-- Greater Control Charm (QI!)
				},
				-- Awarded "Stick It To 'Em!" criteria & overall "Drust Do It." achievement.
			}),
			q(50325, {	-- Stopping the Grand Rite
				["provider"] = { "n", 133098 },	-- Inquisitor Cleardawn
				["coord"] = { 24.5, 56.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50370 },	-- Deeper Into the Woods
			}),
			q(50588, {	-- Storming the Manor
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 31.0, 20.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					50585,	-- Hexecutioner
					50584,	-- Ruinous Rituals
					50583,	-- To the Other Side
					-- Definitely requires Hexecutioner; may not require others.  Needs confirmation.
					-- Awarded "Storming the Manor" criteria.
				},
				["groups"] = {
					azeriteItem(155112),	-- Wickerwoven Robe
					azeriteItem(155115),	-- Wickerwoven Amice
					azeriteItem(155095),	-- Banisher Tunic
					azeriteItem(155113),	-- Banisher Shoulderpads
					azeriteItem(155094),	-- Crone-Seeker's Breastplate
					azeriteItem(155116),	-- Crone-Seeker's Shoulderguards
					azeriteItem(155093),	-- Waycrest Militia Breastplate (Plate reward confirmed by Iyanden 10-13-18)
					azeriteItem(155114),	-- Waycrest Militia Spaulders (Plate reward confirmed by Iyanden 10-13-18)
					azewrongItem(175361),	-- Wickerwoven Robe (no azerite version)
					azewrongItem(175324),	-- Wickerwoven Amice (no azerite version)
					azewrongItem(175360),	-- Banisher Tunic (no azerite version)
					azewrongItem(175322),	-- Banisher Shoulderpads (no azerite version)
					azewrongItem(175359),	-- Crone-Seeker's Breastplate (no azerite version)
					azewrongItem(175325),	-- Crone-Seeker's Shoulderguards (no azerite version)
					azewrongItem(175358),	-- Waycrest Militia Breastplate (no azerite version)
					azewrongItem(175323),	-- Waycrest Militia Spaulders (no azerite version)
				},
			}),
--							51851	-- Storming the Manor \	-- Not sure why, but there are three versions of this quest on wowhead.
--							51852	-- Storming the Manor /	-- Not sure why, but there are three versions of this quest on wowhead.
			q(50960, {	-- Sweete's Orders
				["provider"] = { "o", 286016 },	-- Ship's Log
				["coord"] = { 27.4, 11.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(159156),	-- Sweete's Orders (QI!)
				},
			}),
			q(48904, {	-- Take the Bait
				["provider"] = { "n", 127558 },	-- Art Hughie
				["coord"] = { 71.7, 50.4, DRUSTVAR },
				["groups"] = {
					i(152865),	-- Snapclaw Meat (QI!)
				},
			}),
			q(48986, {	-- Take the High Road
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 42.5, 25.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48946 },	-- The Order of Embers
			}),
			q(44785, {	-- Tea Party (A)
				["provider"] = { "n", 122493 },	-- Annie Warren
				["coord"] = { 54.7, 49.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 45079 },	-- The Village of Glenbrook
				-- Not required for "Drust Do It."
				["groups"] = {
					i(155567),	-- Mr. Munchykins
					i(155569),	-- Mayor Striggs
					i(155565),	-- Trunksy
				},
			}),
			q(53465, {	-- Tea Party (H)
				["provider"] = { "n", 143908 },	-- Mangled Body
				["sourceQuests"] = { 53464 },	-- The Village of Glenbrook
				["coord"] = { 54.6, 49.0, DRUSTVAR },
				["races"] = HORDE_ONLY,
			}),
			q(47289, {	-- Teddies and Tea
				["provider"] = { "n", 121603 },	-- Abby Lewis
				["coord"] = { 54.4, 39.3, DRUSTVAR },
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May have additional sourceQuests; needs confirmation.  Picked up after turning in "And Justice For All."
				-- Not required for "Drust Do It."
				["groups"] = {
					i(154875),	-- Mayor Striggs (QI!)
					i(154894),	-- Mr. Munchykins (QI!)
					i(154874),	-- Trunksy (QI!)
				},
			}),
			q(48853, {	-- Terminal Degree
				["provider"] = { "n", 127157 },	-- Marcus Howlingdale
				["coord"] = { 50.6, 24.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48804 },	-- Mistakes Were Made
				["groups"] = {
					i(160262),	-- Relic of the Makers
				},
			}),
			q(47949, {	-- That's Not My Fetish
				["provider"] = { "o", 277459 },	-- Pig Effigy
				["coord"] = { 63.3, 30.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47945 },	-- To Market, To Market
			}),
			q(48793, {	-- The Adventurer's Society
				["provider"] = { "n", 127015 },	-- Thaddeus "Gramps" Rifthold
				["coord"] = { 53.9, 27.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					47982,	-- The Final Effigy
					48948,	-- The North Pass Caverns
				},
				["groups"] = {
					i(152677),	-- A Beginner's Guide to Archaeology (QI!)
					i(152676),	-- Half-eaten Journal (QI!)
					i(152685),	-- Is it a Rock? How to Identify Relics (QI!)
				},
			}),
			q(48198, {	-- The Burden of Proof
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48113, 48165, 48170 },	-- A Pungent Solution, Harmful If Swallowed, & Once Bitten, Twice Shy
				-- Awarded "The Burden of Proof" criteria.
				["groups"] = {
					i(155102),	-- Wickerwoven Gloves
					i(155100),	-- Banisher Gloves
					i(155103),	-- Crone-Seeker's Gloves
					i(155101),	-- Waycrest Militia Gauntlets
					i(155570),	-- Ravenfeather Drape
				},
			}),
			q(48171, {	-- The Curse of Fletcher's Hollow
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48198 },	-- The Burden of Proof
			}),
			q(50586, {	-- The Fall of Corlain
				["coord"] = { 30.7, 19.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50457 },	-- Break on Through
				["provider"] = {"o",281673},	-- Corlain Citizen's Journal
				["groups"] = { i(160109) },	-- The Fall of Corlain
			}),
			q(47982, {	-- The Final Effigy
				["coord"] = { 55.8, 35.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47981 },	-- Cracking the Curse
				["provider"] = {"o",278675},	-- Cursed Effigy
				-- Awarded "The Final Effigy" criteria
				["groups"] = {
					i(155109),	-- Wickerwoven Leggings
					i(155111),	-- Banisher Breeches
					i(155110),	-- Crone-Seeker's Legguards
					i(155108),	-- Waycrest Militia Greaves
					i(155121),	-- Wickerwoven Cuffs
					i(155124),	-- Banisher Bracers
					i(155123),	-- Crone-Seeker's Bracers
					i(155122),	-- Waycrest Militia Bracers
				},
			}),
			q(50003, {	-- The First Watch
				["provider"] = { "n", 131636 },	-- Marshal Everit Reade
				["coord"] = { 32.0, 30.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49926 },	-- The Road to Corlain
				["groups"] = {
					i(155163),	-- Rise-Breacher's Band
					i(155156),	-- First-Watcher's Lantern
					i(155155),	-- Waycrest Inquisitor's Shield
				},
			}),
			q(53110, {	-- The High Thornspeaker
				["provider"] = { "n", 139926 },	-- Thornspeaker Birchgrove
				["coord"] = { 61.8, 59.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					52075,	-- Boned
					48179,	-- Rescue Rangers
					48183,	-- The Hills Are Alive
					48182,	-- Total Cairnage
					-- Definitely requires "The Hills Are Alive;" may not require others -- needs confirmation.
				},
				-- Not required for "Drust Do It."
			}),
			q(48183, {	-- The Hills Are Alive
				["provider"] = { "n", 139926 },	-- Thornspeaker Birchgrove
				["coord"] = { 61.9, 59.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 52074 },	-- Deliverance
				["groups"] = {
					i(152394),	-- Runic Power Core (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(50762, {	-- The Lady's Fate
				["provider"] = { "n", 132994 },	-- Lord Arthur Waycrest
				["coord"] = { 23.2, 12.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50761 },	-- Blood in the Chapel
				["groups"] = {
					i(158914),	-- Assassin's Orders (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(48523, {	-- The Murderous Matron
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = {
					48522,	-- A Revealing Missive
					48521,	-- Charming the Lifeless
					48520,	-- The Three Sisters
				},
			}),
			q(48948, {	-- The North Pass Caverns
				["provider"] = { "n", 128457 },	-- Maude Rifthold
				["coord"] = { 55.1, 35.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["sourceQuests"] = { 47982 },	-- The Final Effigy
			}),
			q(52482, {	-- The Old Bear
				["sourceQuests"] = { 52481 },	-- Of Myth and Fable
				["provider"] = { "n", 129642 },	-- Lucille Waycrest
				["coord"] = { 36.9, 50.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(48946, {	-- The Order of Embers
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 42.5, 25.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48945 },	-- The Ruins of Gol Var
				["groups"] = {
					i(153053),	-- Tome of Silver and Ash (QI!)
				},
				-- Awarder "The Order of Embers" criteria.
			}),
			q(48881, {	-- The Reel Deal
				["provider"] = { "o", 276515 },	-- Fishing Rod
				["coord"] = { 71.1, 52.3, DRUSTVAR },
				["sourceQuests"] = { 48880 },	-- Mean Gulls (must be ON quest for this one to appear)
				["groups"] = {
					i(152868, {	-- Anglin' Art's Mudfish Bait
						i(7307),	-- Flesh Eating Worm
					}),
				},
			}),
			q(49926, {	-- The Road to Corlain
				["provider"] = { "n", 129643 },	-- Marshal Everit Reade
				["coord"] = { 36.9, 50.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49807 },	-- A New Order
			}),
			q(48945, {	-- The Ruins of Gol Var
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 44.9, 27.5, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48944 },	-- Unlocking History
			}),
			q(48520, {	-- The Three Sisters
				["provider"] = { "n", 126310 },	-- Evelyn Pare
				["coord"] = { 70.0, 60.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48519 },	-- Hope They Can't Swim
			}),
			q(53434, {	-- The Vanishing Lord
				["altQuests"] = { 48622 },	-- The Vanishing Lord
				["coords"] = {
					{ 60.90, 15.46, DRUSTVAR },	-- Guardsman Kitcher <Waycrest Guard>
					{ 71.76, 40.61, DRUSTVAR },	-- Guardsman Bray <Waycrest Guard>
				},
				["races"] = ALLIANCE_ONLY,
				["providers"] = {
					{ "n", 143746 },	-- Guardsman Kitcher <Waycrest Guard>
					{ "n", 143745 },	-- Guardsman Bray <Waycrest Guard>
				},
			}),
			q(45079, {	-- The Village of Glenbrook (A)
				["provider"] = { "o", 270917 },	-- Glenbrook Register
				["coord"] = { 55.6, 41.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47428 },	-- Kitty?
				-- Not required for "Drust Do It."
			}),
			q(53464, {	-- The Village of Glenbrook (H)
				["provider"] = { "o", 270917 },	-- Glenbrook Register
				["coord"] = { 55.6, 41.1, DRUSTVAR },
				["races"] = HORDE_ONLY,
				["sourceQuests"] = { 47428 },	-- Kitty?
			}),
			q(48108, {	-- The Waycrest Daughter
				["provider"] = { "n", 124417 },	-- Cyril White
				["coord"] = { 55.8, 35.0, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47982 },	-- The Final Effigy
			}),
			q(47978, {	-- The Wayward Crone
				["coord"] = { 55.6, 35.73, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47968 },	-- Signs and Portents
				["provider"] = {"o",278669},	-- Fallhaven Ledger
			}),
			q(48109, {	-- The Woods Have Eyes
				["provider"] = { "n", 125385 },	-- Marshal Everit Reade
				["coord"] = { 69.7, 43.1, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48283 },	-- Standing Accused
			}),
			q(50965, {	-- Those Who Remain
				["races"] = ALLIANCE_ONLY,
				["provider"] = {"i",160027},	-- Ashenwood Relic
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May only drop while on A Farmer's Fate / Lost in the Woods as that was the point I picked it up; needs confirmation.
				["crs"] = {
					135902,	-- Bloodbough Fungalmancer
					135901,	-- Bloodbough Funggarian
				},
				["groups"] = {
					i(159350),	-- Ashenwood Relic (QI!)
				},
			}),
			q(51445, {	-- Thros, the Blighted Lands
				["sourceQuests"] = { 52488 },	-- Runic Resistance
				["provider"] = { "n", 141785 },	-- Katherine Proudmoore
				["coord"] = { 27.5, 58.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["maps"] = { 1045 },	-- Thros, The Blighted Lands
				["groups"] = {
					ach(12997, {	-- The Pride of Kul Tiras
						["races"] = ALLIANCE_ONLY,
					}),
				},
			}),
			q(48504, {	-- Through the Old Roads
				["provider"] = { "n", 135021 },	-- Inquisitor Cleardawn
				["coord"] = { 37.3, 50.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49926 },	-- The Road to Corlain (must be ON quest to pick this up)
			}),
			q(49896, {	-- To Falconhurst!
				["provider"] = { "n", 130933 },	-- Inquisitor Cleardawn
				["coord"] = { 40.5, 62.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49890 },	-- Drustfall
			}),
			q(50754, {	-- To Have Loved and Lost
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 31.4, 30.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50253 },	-- An Improvised Arsenal
				-- Not required for "Drust Do It."
			}),
			q(47945, {	-- To Market, To Market
				["sourceQuests"] = { 47982 },	-- The Final Effigy
				["isBreadcrumb"] = true,
				["provider"] = { "n", 128467 },	-- Elijah Eggleton
				["coord"] = { 55.5, 34.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(48182, {	-- Total Cairnage
				["provider"] = { "n", 139926 },	-- Thornspeaker Birchgrove
				["coord"] = { 61.9, 59.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 52074 },	-- Deliverance
				-- Not required for "Drust Do It."
			}),
			q(50583, {	-- To the Other Side
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 30.9, 20.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50457 },	-- Break on Through
			}),
			q(48111, {	-- Trial by Superstition
				["provider"] = { "n", 125380 },	-- Lucille Waycrest
				["coord"] = { 70.0, 42.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48110, 48109 },	-- In Case of Ambush & The Woods Have Eyes
			}),
			q(50897, {	-- Turn the Heat Around
				["provider"] = { "i", 158918 },	-- Bilgewater Patented Flamethrower (QS!)
				["cr"] = 135541,	-- Bilgewater Incinerator
				["coord"] = { 38.5, 35.5, DRUSTVAR },	-- General area where QS! can be looted
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(158928),	-- Bilgewater Patented Flamethrower (QI!)
				},
				-- Not required for "Drust Do It."
			}),
			q(48944, {	-- Unlocking History
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 45.0, 27.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48963 },	-- Diversionary Tactics
			}),
			q(51547, {	-- WANTED: Rindlewoe
				["coord"] = { 55.7, 34.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47982 },	-- The Final Effigy
				["provider"] = {"o",290419},	-- Wanted Poster
			}),
			q(51356, {	-- WANTED: Sister Lilias
				["coord"] = { 31.7, 30.7, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50253 },	-- An Improvised Arsenal
				["provider"] = {"o",288622},	-- Wanted Poster
				-- Not required for "Drust Do It."
				["groups"] = {
					i(160026),	-- Sister Lilias' Head (QI!)
				},
			}),
			q(51390, {	-- WANTED: The Crimson Cutthroats
				["coord"] = { 26.4, 72.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 49939 },	-- So Long, Sister
				["provider"] = {"o",289365},	-- Wanted Poster
				-- Not required for "Drust Do It."
			}),
			q(52033, {	-- WANTED: The Rime Huntress
				["coord"] = { 41.2, 40.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				["provider"] = {"o",292523},	-- Wanted Poster
				-- May have additional sourceQuests; needs confirmation.  Picked up after turning in "The Order of Embers."
				-- Not required for "Drust Do It."
			}),
			q(51240, {	-- WANTED: Anchorface
				["provider"] = { "o", 288214 },	-- Wanted Poster
				["coord"] = { 19.57, 43.65, DRUSTVAR },
			}),
			q(53459, {	-- WANTED: Sister Lilias
				["provider"] = { "o", 298858 },	-- Wanted Poster
				["sourceQuests"] = { 51234 },	-- Krazzlefrazz Outpost
				["races"] = HORDE_ONLY,
				["lvl"] = 20,
				["coord"] = { 37.51, 25.8, DRUSTVAR },
				["groups"] = {
					i(160026),	-- Sister Lilias' Head (QI!)
				},
			}),
			q(53455, {	-- WANTED: The Crimson Cutthroats
				["provider"] = { "o", 288214 },	-- Wanted Poster
				["coord"] = { 19.57, 43.65, DRUSTVAR },
			}),
			q(53456, {	-- WANTED: The Rime Huntress
				["provider"] = { "o", 298858 },	-- Wanted Poster
				["sourceQuests"] = { 51234 },	-- Krazzlefrazz Outpost
				["races"] = HORDE_ONLY,
				["coord"] = { 37.51, 25.8, DRUSTVAR },
			}),
			q(53458, {	-- WANTED: The Rindlewoe
				["provider"] = { "o", 298858 },	-- Wanted Poster
				["sourceQuests"] = { 51234 },	-- Krazzlefrazz Outpost
				["races"] = HORDE_ONLY,
				["coord"] = { 37.51, 25.8, DRUSTVAR },
			}),
			q(52486, {	-- Waycrest Manor: Draining the Heartsbane
				["sourceQuests"] = {
					52484,	-- Buried Power
					52485,	-- Hatred's Focus
					52483,	-- Nightmare Catcher
				},
				["provider"] = { "n", 141159 },	-- Ulfar
				["coord"] = { 45.2, 45.8, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(50639, {	-- Waycrest Manor: The Fallen Mother
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 32.8, 15.3, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50588 },	-- Storming the Manor
			}),
			q(48677, {	-- Wicker Worship
				["provider"] = { "n", 127296 },	-- David Maldus
				["coord"] = { 62.5, 23.9, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48622 },	-- The Vanishing Lord
				-- May have other/different source quest(s); needs confirmation.
			}),
			q(47979, {	-- Witch Hunt
				["provider"] = { "n", 124922 },	-- Helena Gentle
				["coord"] = { 60.5, 31.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 47978 },	-- The Wayward Crone
			}),
			q(50446, {	-- Witchrending
				["provider"] = { "n", 131638 },	-- Lucille Waycrest
				["coord"] = { 31.4, 30.2, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50253 },	-- An Improvised Arsenal
				["groups"] = {
					i(156926),	-- Witchrend (QI!)
					i(158584),	-- Wickerwoven Sandals
					i(158585),	-- Banisher Walkers
					i(158586),	-- Crone-Seeker's Walkers
					i(158587),	-- Waycrest Militia Stompers
					i(158627),	-- Wickerwoven Bands
					i(158628),	-- Banisher Wristwraps
					i(158629),	-- Crone-Seeker's Shackles
					i(158630),	-- Waycrest Militia Armplates
				},
			}),
			q(50530, {	-- Witch Way Out?
				["provider"] = { "n", 133098 },	-- Inquisitor Cleardawn
				["coord"] = { 24.5, 56.6, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 50370 },	-- Deeper Into the Woods
			}),
			q(48942, {	-- Yeti to Rumble
				["provider"] = { "n", 127715 },	-- Lucille Waycrest
				["coord"] = { 46.1, 33.4, DRUSTVAR },
				["races"] = ALLIANCE_ONLY,
				["sourceQuests"] = { 48941 },	-- A Slight Detour
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 50 },
				["races"] = ALLIANCE_ONLY,
			},{
				q(48525, {	-- Break Them to Splinters
					["sourceQuest"] = 48519,	-- Hope They Can't Swim
				}),
				q(48474, {	-- Crypt Keepers
					["sourceQuest"] = 48475,	-- Seeing Spirits
					["description"] = "You must accept the quest |cffffff00Seeing Spirits|r in order for this Bonus Objective to activate.",
				}),
				q(47969, {	-- Fallhaven's Curse
					["sourceQuest"] = 47968,	-- Signs and Portents
					["description"] = "You must accept the quest |cffffff00Signs and Portents|r in order for this Bonus Objective to activate.",
				}),
				q(48181),	-- Nooooope
				q(48680, {	-- Not the Bees!
					["sourceQuest"] = 48678,	-- Questionable Offerings
				}),
				q(50959),	-- Plundering Pirates
				q(50448, {	-- Reclaiming Corlain
					["sourceQuest"] = 50253,	-- An Improved Arsenal
				}),
				q(45972, {	-- The Accursed Thicket
					["sourceQuest"] = 47428,	-- Kitty?
				}),
				q(50091, {	-- Village Repair
					["sourceQuest"] = 49939,	-- So Long, Sister
				}),
			})),
--[[	raw quest list to check against
			-- Unknown
			q(50195, {	-- Bilgemaul's Brigade
				["races"] = ALLIANCE_ONLY,
			}),
			q(48604, {	-- Home Again, Home Again
				["races"] = ALLIANCE_ONLY,
			}),
			q(54627),	-- Paragon of the Order of Embers
			q(48515, {	-- Silver Blades
				["races"] = ALLIANCE_ONLY,
			}),
			q(50206, {	-- Strike Back
				["races"] = ALLIANCE_ONLY,
			}),
			q(48808, {	-- Thesis Statement
				["races"] = ALLIANCE_ONLY,
			}),
]]--
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(DRUSTVAR, {
			n(QUESTS, {
				q(52934),	-- Spell 277753 & 278578 granting access to NPC 127156 during quest 48853
				q(53964),	-- triggered when turning in #51445, "Thros, the Blighted Lands"
			}),
		}),
	}),
})));