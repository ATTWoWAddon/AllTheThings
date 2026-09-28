---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_7 } }, {
	header(HEADERS.Quest, 79009, {	-- The Harbinger
		q(79009, {	-- The Harbinger
			-- Auto accepted when logging in
			["groups"] = {
				i(223988),	-- Dalaran Hearthstone (QI!)
			},
		}),
		q(81654, {	-- The Harbinger
			["aqd"] = {
				["coord"] = { 84.8, 25.2, STORMWIND_CITY },
			},
			["hqd"] = {
				["coord"] = { 41.4, 75.6, ORGRIMMAR },
			},
			["provider"] = { "n", 221491 },	-- Khadgar's Summons
			["groups"] = {
				i(223988),	-- Dalaran Hearthstone (QI!)
			},
		}),
		q(79010, {	-- Door to the Ren'dorei
			["sourceQuests"] = {
				79009,	-- The Harbinger
				81654,	-- The Harbinger
			},
			["sourceQuestNumRequired"] = 1,
			["provider"] = { "n", 215013 },	-- Alleria Windrunner
			["coord"] = { 31.4, 41.8, AEGWYNNS_GALLERY },
		}),
		q(79011, {	-- Riftwalker Reports
			["sourceQuests"] = { 79010 },	-- Door to the Ren'dorei
			["provider"] = { "n", 214702 },	-- Magister Umbric
			["coord"] = { 27.2, 27.8, TELOGRUS_RIFT },
		}),
		q(79012, {	-- Cracks in the Void
			["sourceQuests"] = { 79010 },	-- Door to the Ren'dorei
			["provider"] = { "n", 214702 },	-- Magister Umbric
			["coord"] = { 27.2, 27.8, TELOGRUS_RIFT },
		}),
		q(79013, {	-- Galakrond's Unrest
			["sourceQuests"] = {
				79011,	-- Riftwalker Reports
				79012,	-- Cracks in the Void
			},
			["provider"] = { "n", 214698 },	-- Alleria Windrunner
			["coord"] = { 40.7, 60.7, TELOGRUS_RIFT },
		}),
		q(79014, {	-- Walk a Mile in Her Shadows
			["sourceQuests"] = { 79013 },	-- Galakrond's Unrest
			["provider"] = { "n", 214634 },	-- Alleria Windrunner
			["coord"] = { 56.6, 39.0, DRAGONBLIGHT },
		}),
		q(79015, {	-- Dark Descension
			["sourceQuests"] = { 79014 },	-- Walk a Mile in Her Shadows
			["provider"] = { "n", 214759 },	-- Alleria Windrunner
			["coord"] = { 41.5, 22.7, THE_STORM_PEAKS },
		}),
		q(79016, {	-- Legacy of the Void
			["sourceQuests"] = { 79015 },	-- Dark Descension
			["provider"] = { "n", 221539 },	-- Alleria Windrunner
			["coord"] = { 44.0, 21.0, THE_STORM_PEAKS },
		}),
		q(79017, {	-- The Path Taken
			["sourceQuests"] = { 79016 },	-- Legacy of the Void
			["provider"] = { "n", 214645 },	-- Alleria Windrunner
			["coord"] = { 22.5, 53.4, EREDATH },
		}),
		q(79018, {	-- And Be One Traveler, Long I Stood
			["sourceQuests"] = { 79017 },	-- The Path Taken
			["provider"] = { "n", 215597 },	-- Alleria Windrunner
			["coord"] = { 22.5, 53.4, EREDATH },
		}),
		q(79019, {	-- Defend Telogrus Rift
			["sourceQuests"] = { 79018 },	-- And Be One Traveler, Long I Stood
			["provider"] = { "n", 214660 },	-- Alleria Windrunner
			["coord"] = { 28.6, 23.8, TELOGRUS_RIFT },
		}),
		q(79020, {	-- Null and Void
			["sourceQuests"] = { 79019 },	-- Defend Telogrus Rift
			["provider"] = { "n", 216264 },	-- Alleria Windrunner
			["coord"] = { 43.6, 63.8, TELOGRUS_RIFT },
			["groups"] = {
				i(213269),	-- Bow of the Ranger Captain
				i(217711),	-- Voidtouched Flail
				i(217712),	-- Voidtouched Apparatus
				i(217713),	-- Voidtouched Shield
				i(217714),	-- Voidtouched Scimitar
			},
		}),
		q(79021, {	-- Radiant Warnings
			["sourceQuests"] = { 79020 },	-- Null and Void
			["provider"] = { "n", 214657 },	-- Locus-Walker
			["coord"] = { 50.2, 75.2, TELOGRUS_RIFT },
			["groups"] = {
				i(213561),	-- Winding Slitherdrake: Void Scales (MM!)
				ach(40382),	-- Hunt the Harbinger
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7 } }, {
	m(DRAGON_ISLES, {
		header(HEADERS.Quest, 79009, {	-- The Harbinger
			q(80199),	-- Bow of the Ranger Captain
			q(80450),	-- Arsenal: Voidtouched Weaponry
			q(80198),	-- Triggered with completion of Quest 79016
			hqt(80019),	-- Stay awhile and listen - Magister Umbric (n: 217360)
			hqt(80021),	-- Stay awhile and listen - Archmage Khadgar (n: 214972), autoplay first time after turn in questID 79021 (Radiant Warnings)
			hqt(80020, {	-- Stay awhile and listen: Locus-Walker
				["name"] = "Stay awhile and listen: Locus-Walker",
				["sourceQuests"] = { 79010 },	-- Door to the Ren'dorei
				["provider"] = { "n", 126773 },	-- Locus-Walker
				["coord"] = { 29.7, 27.1, TELOGRUS_RIFT },
			}),
		}),
	}),
})));
