local Items = ItemDBConditional;
local i = function(itemID, factionID, unlock)
	local o = { ["factionID"] = factionID };
	if not unlock then o.repeatable = true; end
	Items[itemID] = o;
	-- ItemDBConditional uses an internal table when making new assignments into the DB, so we can't return the table used to set the key
	return Items[itemID];
end

-- Classic
i(19858, 270);	-- Zandalar Honor Token [Zandalar Tribe]

-- Wrath of the Lich King
-- Timear Foresees & Emblems of Triumph
i(44711, FACTION_ARGENT_CRUSADE);			-- Argent Crusade Commendation Badge
i(43950, FACTION_KIRIN_TOR);				-- Kirin Tor Commendation Badge
i(49702, FACTION_THE_SONS_OF_HODIR);		-- Sons of Hodir Commendation Badge
i(44710, FACTION_THE_WYRMREST_ACCORD);		-- Wyrmrest Commendation Badge

-- Argent Tournament
a(i(45714, FACTION_DARNASSUS));				-- Darnassus Commendation Badge
a(i(45715, FACTION_EXODAR));				-- Exodar Commendation Badge
a(i(45716, FACTION_GNOMEREGAN));			-- Gnomeregan Commendation Badge
a(i(45717, FACTION_IRONFORGE));				-- Ironforge Commendation Badge
h(i(45719, FACTION_ORGRIMMAR));				-- Orgrimmar Commendation Badge
h(i(45720, FACTION_DARKSPEAR_TROLLS));		-- Sen'jin Commendation Badge
h(i(45721, FACTION_SILVERMOON_CITY));		-- Silvermoon Commendation Badge
a(i(45718, FACTION_STORMWIND));				-- Stormwind Commendation Badge
h(i(45722, FACTION_THUNDER_BLUFF));			-- Thunder Bluff Commendation Badge
h(i(45723, FACTION_UNDERCITY));				-- Undercity Commendation Badge

-- Cataclysm
-- Uldum
i(64492, FACTION_RAMKAHEN);	-- Ramkahen Badge of Valor

-- Molten Front (Did not automatically apply race requirements... sigh)
h(i(71088, FACTION_BILGEWATER_CARTEL));		-- Bilgewater Writ of Commendation
a(i(70145, FACTION_DARNASSUS));				-- Darnassus Writ of Commendation
a(i(70146, FACTION_EXODAR));				-- Exodar Writ of Commendation
a(i(71087, FACTION_GILNEAS));				-- Gilneas Writ of Commendation
a(i(70147, FACTION_GNOMEREGAN));			-- Gnomeregan Writ of Commendation
a(i(70148, FACTION_IRONFORGE));				-- Ironforge Writ of Commendation
h(i(70149, FACTION_ORGRIMMAR));				-- Orgrimmar Writ of Commendation
h(i(70150, FACTION_DARKSPEAR_TROLLS));		-- Sen'jin Writ of Commendation
h(i(70151, FACTION_SILVERMOON_CITY));		-- Silvermoon Writ of Commendation
a(i(70152, FACTION_STORMWIND));				-- Stormwind Writ of Commendation
h(i(70153, FACTION_THUNDER_BLUFF));			-- Thunder Bluff Writ of Commendation
h(i(70154, FACTION_UNDERCITY));				-- Undercity Writ of Commendation

-- Pandaria
-- The "Grand Commendation" items of Pandaria unlock bonus reputation rather than grant reputation.
-- TODO: review if /dump GetFactionInfoByID(1337) still returns [15] = false
-- #if BEFORE WOD
i(93231, 1376, true);		-- Grand Commendation of Operation: Shieldwall
i(93225, 1302, true);		-- Grand Commendation of the Anglers
i(93224, 1341, true);		-- Grand Commendation of the August Celestials
-- #if ANYCLASSIC
i(254313, 1359, true);		-- Grand Commendation of the Black Prince
-- #endif
i(93232, 1375, true);		-- Grand Commendation of the Dominance Offensive
i(93215, 1269, true);		-- Grand Commendation of the Golden Lotus
i(95545, 1387, true);		-- Grand Commendation of the Kirin Tor Offensive
i(92522, 1337, true);		-- Grand Commendation of the Klaxxi
i(93230, 1345, true);		-- Grand Commendation of the Lorewalkers
i(93229, 1271, true);		-- Grand Commendation of the Order of the Cloud Serpent
i(93220, 1270, true);		-- Grand Commendation of the Shado-Pan
i(95548, 1388, true);		-- Grand Commendation of the Sunreaver Onslaught
i(93226, 1272, true);		-- Grand Commendation of the Tillers
-- #endif
a(i(95490, FACTION_KIRIN_TOR_OFFENSIVE));	-- Greater Kirin Tor Offensive Insignia
a(i(95489, FACTION_KIRIN_TOR_OFFENSIVE));	-- Kirin Tor Offensive Insignia
h(i(95488, FACTION_SUNREAVER_ONSLAUGHT));	-- Greater Sunreaver Onslaught Insignia
h(i(95487, FACTION_SUNREAVER_ONSLAUGHT));	-- Sunreaver Onslaught Insignia
i(90815, FACTION_GOLDEN_LOTUS);				-- Relic of Guo-Lai
i(90816, FACTION_GOLDEN_LOTUS);				-- Relic of the Thunder King
i(94225, FACTION_THE_AUGUST_CELESTIALS);	-- Stolen Celestial Insignia
i(94227, FACTION_GOLDEN_LOTUS);				-- Stolen Golden Lotus Insignia
i(94226, FACTION_THE_KLAXXI);				-- Stolen Klaxxi Insignia
i(94223, FACTION_SHADO_PAN);				-- Stolen Shado-Pan Insignia

-- Timewalking: Burning Crusade
a(i(129948, FACTION_HONOR_HOLD));			-- Commendation of Honor Hold
i(129951, FACTION_LOWER_CITY);				-- Commendation of Lower City
i(129949, FACTION_CENARION_EXPEDITION);		-- Commendation of the Cenarion Expedition
i(129945, FACTION_THE_CONSORTIUM);			-- Commendation of The Consortium
i(129950, FACTION_KEEPERS_OF_TIME);			-- Commendation of the Keepers of Time
i(129946, FACTION_THE_SHATAR);				-- Commendation of The Sha'tar
h(i(129947, FACTION_THRALLMAR));			-- Commendation of Thrallmar

-- Timewalking: Wrath of the Lich King
a(i(129955, FACTION_ALLIANCE_VANGUARD));	-- Commendation of the Alliance Vanguard
i(129942, FACTION_ARGENT_CRUSADE);			-- Commendation of the Argent Crusade
h(i(129954, FACTION_HORDE_EXPEDITION));		-- Commendation of the Horde Expedition
i(129940, FACTION_KIRIN_TOR);				-- Commendation of the Kirin Tor
i(129943, FACTION_THE_SONS_OF_HODIR);		-- Commendation of the Sons of Hodir
i(129944, FACTION_THE_WYRMREST_ACCORD);		-- Commendation of the Wyrmrest Accord

-- Timewalking: Cataclysm
h(i(133150, FACTION_DRAGONMAW_CLAN));		-- Commendation of the Dragonmaw Clan
i(133159, FACTION_THE_EARTHEN_RING);		-- Commendation of The Earthen Ring
i(133152, FACTION_GUARDIANS_OF_HYJAL);		-- Commendation of the Guardians of Hyjal
i(133154, FACTION_RAMKAHEN);				-- Commendation of the Ramkahen
a(i(133151, FACTION_WILDHAMMER_CLAN));		-- Commendation of the Wildhammer Clan
i(133160, FACTION_THERAZANE);				-- Commendation of Therazane

-- Timewalking: Mists of Pandaria
i(143947, FACTION_EMPEROR_SHAOHAO);			-- Commendation of Emperor Shaohao
a(i(143944, FACTION_OPERATION_SHIELDWALL));	-- Commendation of Operation: Shieldwall
i(143946, FACTION_THE_ANGLERS);				-- Commendation of The Anglers
i(143938, FACTION_THE_AUGUST_CELESTIALS);	-- Commendation of The August Celestials
h(i(143943, FACTION_DOMINANCE_OFFENSIVE));	-- Commendation of the Dominance Offensive
i(143937, FACTION_GOLDEN_LOTUS);			-- Commendation of the Golden Lotus
a(i(143940, FACTION_KIRIN_TOR_OFFENSIVE));	-- Commendation of the Kirin Tor Offensive
i(143935, FACTION_THE_KLAXXI);				-- Commendation of The Klaxxi
i(143942, FACTION_ORDER_OF_THE_CLOUD_SERPENT);	-- Commendation of the Order of the Cloud Serpent
i(143936, FACTION_SHADO_PAN);				-- Commendation of the Shado-Pan
i(143945, FACTION_SHADO_PAN_ASSAULT);		-- Commendation of the Shado-Pan Assault
h(i(143939, FACTION_SUNREAVER_ONSLAUGHT));	-- Commendation of the Sunreaver Onslaught
i(143941, FACTION_THE_TILLERS);				-- Commendation of The Tillers

-- Miscellaneous Rep Items

-- Cataclysm
h(i(63518, FACTION_HELLSCREAMS_REACH));		-- Hellscream's Reach Commendation
a(i(63517, FACTION_BARADINS_WARDENS));		-- Baradin's Wardens Commendation

-- Warlords of Draenor
i(118099, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Gorian Artifact Fragment [Steamwheedle Preservation]
i(118100, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Highmaul Relic [Steamwheedle Preservation]
i(118654, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Aogexon's Fang [Steamwheedle Preservation]
i(118655, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Bergruu's Horn [Steamwheedle Preservation]
i(118656, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Dekorhan's Tusk [Steamwheedle Preservation]
i(118657, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Direhoof's Hide [Steamwheedle Preservation]
i(118658, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Gagrog's Skull [Steamwheedle Preservation]
i(118659, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Mu'gra's Head [Steamwheedle Preservation]
i(118660, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Thek'talon's Talon [Steamwheedle Preservation]
i(118661, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Xelganak's Stinger [Steamwheedle Preservation]
i(120172, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Vileclaw's Claw [Steamwheedle Preservation]
i(117492, FACTION_ARAKKOA_OUTCASTS);					-- Relic of Rukhmar [Arakkoa Outcasts]
-- Timewalking Vendor Commendations
i(167924, FACTION_ARAKKOA_OUTCASTS);					-- Commendation of the Arakkoa Outcast
i(167926, FACTION_STEAMWHEEDLE_PRESERVATION_SOCIETY);	-- Commendation of the Steamwheedle Preservation Society
i(167925, FACTION_ORDER_OF_THE_AWAKENED);				-- Commendation of the Order of the Awakened
i(167927, FACTION_THE_SABERSTALKERS);					-- Commendation of the Saberstalkers
-- Horde
h(i(167928, FACTION_FROSTWOLF_ORCS));			-- Commendation of the Frostwolf Orcs
h(i(167930, FACTION_LAUGHING_SKULL_ORCS));		-- Commendation of the Laughing Skull Orcs
h(i(168017, FACTION_VOLJINS_HEADHUNTERS));		-- Commendation of Vol'jin's Headhunters
-- Alliance
a(i(167929, FACTION_COUNCIL_OF_EXARCHS));		-- Commendation of the Council of Exarchs
a(i(167932, FACTION_SHATARI_DEFENSE));			-- Commendation of the Sha'tari Defense
a(i(168018, FACTION_HAND_OF_THE_PROPHET));		-- Commendation of the Hand of the Prophet

-- Legion
i(147418, FACTION_THE_NIGHTFALLEN);			-- Arcane Remnant of Falanaar [The Nightfallen]
i(147416, FACTION_THE_NIGHTFALLEN);			-- Arcane Tablet of Falanaar [The Nightfallen]
i(141340, FACTION_COURT_OF_FARONDIS);		-- Court of Farondis Insignia [Court of Farondis]
i(139023, FACTION_COURT_OF_FARONDIS);		-- Court of Farondis Insignia [Court of Farondis]
i(146937, FACTION_COURT_OF_FARONDIS);		-- Court of Farondis Insignia [Court of Farondis]
i(146943, FACTION_COURT_OF_FARONDIS);		-- Court of Farondis Insignia [Court of Farondis]
i(141339, FACTION_THE_DREAMWEAVERS);		-- Dreamweaver Insignia [Dreamweavers]
i(139021, FACTION_THE_DREAMWEAVERS);		-- Dreamweaver Insignia [Dreamweavers]
i(146942, FACTION_THE_DREAMWEAVERS);		-- Dreamweaver Insignia [Dreamweavers]
i(146936, FACTION_THE_DREAMWEAVERS);		-- Dreamweaver Insignia [Dreamweavers]
i(147410, FACTION_COURT_OF_FARONDIS);		-- Greater Court of Farondis Insignia [Court of Farondis]
i(141989, FACTION_COURT_OF_FARONDIS);		-- Greater Court of Farondis Insignia [Court of Farondis]
i(150927, FACTION_COURT_OF_FARONDIS);		-- Greater Court of Farondis Insignia [Court of Farondis]
i(141988, FACTION_THE_DREAMWEAVERS);		-- Greater Dreamweaver Insignia [Dreamweavers]
i(147411, FACTION_THE_DREAMWEAVERS);		-- Greater Dreamweaver Insignia [Dreamweavers]
i(150926, FACTION_THE_DREAMWEAVERS);		-- Greater Dreamweaver Insignia [Dreamweavers]
i(141990, FACTION_HIGHMOUNTAIN_TRIBE);		-- Greater Highmountain Tribe Insignia [Highmountain Tribe]
i(147412, FACTION_HIGHMOUNTAIN_TRIBE);		-- Greater Highmountain Tribe Insignia [Highmountain Tribe]
i(150928, FACTION_HIGHMOUNTAIN_TRIBE);		-- Greater Highmountain Tribe Insignia [Highmountain Tribe]
i(147727, FACTION_ARMIES_OF_LEGIONFALL);	-- Greater Legionfall Insignia [Armies of Legionfall]
i(152464, FACTION_ARMIES_OF_LEGIONFALL);	-- Greater Legionfall Insignia [Armies of Legionfall]
i(141992, FACTION_THE_NIGHTFALLEN);			-- Greater Nightfallen Insignia [The Nightfallen]
i(147413, FACTION_THE_NIGHTFALLEN);			-- Greater Nightfallen Insignia [The Nightfallen]
i(150930, FACTION_THE_NIGHTFALLEN);			-- Greater Nightfallen Insignia [The Nightfallen]
i(141987, FACTION_VALAJAR);					-- Greater Valarjar Insignia [Valarjar]
i(147414, FACTION_VALAJAR);					-- Greater Valarjar Insignia [Valarjar]
i(150925, FACTION_VALAJAR);					-- Greater Valarjar Insignia [Valarjar]
i(141991, FACTION_THE_WARDENS);				-- Greater Wardens Insignia [The Wardens]
i(147415, FACTION_THE_WARDENS);				-- Greater Wardens Insignia [The Wardens]
i(150929, FACTION_THE_WARDENS);				-- Greater Wardens Insignia [The Wardens]
i(141341, FACTION_HIGHMOUNTAIN_TRIBE);		-- Highmountain Tribe Insignia [Highmountain Tribe]
i(139024, FACTION_HIGHMOUNTAIN_TRIBE);		-- Highmountain Tribe Insignia [Highmountain Tribe]
i(146944, FACTION_HIGHMOUNTAIN_TRIBE);		-- Highmountain Tribe Insignia [Highmountain Tribe]
i(146938, FACTION_HIGHMOUNTAIN_TRIBE);		-- Highmountain Tribe Insignia [Highmountain Tribe]
i(141343, FACTION_THE_NIGHTFALLEN);			-- Nightfallen Insignia [The Nightfallen]
i(139026, FACTION_THE_NIGHTFALLEN);			-- Nightfallen Insignia [The Nightfallen]
i(146940, FACTION_THE_NIGHTFALLEN);			-- Nightfallen Insignia [The Nightfallen]
i(146946, FACTION_THE_NIGHTFALLEN);			-- Nightfallen Insignia [The Nightfallen]
i(141338, FACTION_VALAJAR);					-- Valarjar Insignia [Valarjar]
i(146935, FACTION_VALAJAR);					-- Valarjar Insignia [Valarjar]
i(146941, FACTION_VALAJAR);					-- Valarjar Insignia [Valarjar]
i(141342, FACTION_THE_WARDENS);				-- Wardens Insignia [The Wardens]
i(139025, FACTION_THE_WARDENS);				-- Wardens Insignia [The Wardens]
i(146945, FACTION_THE_WARDENS);				-- Wardens Insignia [The Wardens]
i(146939, FACTION_THE_WARDENS);				-- Wardens Insignia [The Wardens]


-- Battle For Azeroth
	-- These first factions have pure tokens only, no quest item > token exchange.
	-- Honeyback Hive
		i(168825, FACTION_HONEYBACK_HIVE);	-- Rich Jelly (+80)
		i(168828, FACTION_HONEYBACK_HIVE);	-- Royal Jelly (+160)
		i(168822, FACTION_HONEYBACK_HIVE);	-- Thin Jelly (+20)

	-- Rajani


	-- Rustbolt Resistance
		i(173736, FACTION_RUSTBOLT_RESISTANCE);	-- Layered Information Kernel of E-steam (+250, Rustbolt Resistance)
		i(174521, FACTION_RUSTBOLT_RESISTANCE);	-- Transferable Kernel of E-steam (+250, Rustbolt Resistance)

	-- Nazjatar
		h(i(173948, FACTION_THE_UNSHACKLED));	-- Glittering Abyssal Conch (Unshackled)
		a(i(173947, FACTION_WAVEBLADE_ANKOAN));	-- Glittering Abyssal Conch (Waveblade Ankoan)
		h(i(174523, FACTION_THE_UNSHACKLED));	-- Waveswept Abyssal Conch (Unshackled)
		a(i(174522, FACTION_WAVEBLADE_ANKOAN));	-- Waveswept Abyssal Conch (Waveblade Ankoan)

	-- For the rest of these, the first line is the quest item and the second line is the BoA token awarded by the quest.
	-- Currently commenting out the quest item from this file and leave just the token in, because that's the part that actually gives reputation. These used to be a simple quest item > starts quest > quest gives reputation exchange, and the token rewards were added in 8.3.

	-- 7th Legion
		-- a(i(163617, FACTION_7TH_LEGION));	-- Rusted Alliance Insignia
		a(i(174507, FACTION_7TH_LEGION));	-- Fallen Soldier's Insignia (A)

	-- Champions of Azeroth
		-- i(163217, FACTION_CHAMPIONS_OF_AZEROTH);	-- Azeroth's Tear
		i(174502, FACTION_CHAMPIONS_OF_AZEROTH);	-- Tear of Azeroth

	-- Honorbound
		-- h(i(163621, FACTION_THE_HONORBOUND));	-- Rusted Horde Insignia
		h(i(174508, FACTION_THE_HONORBOUND));	-- Fallen Soldier's Insignia (H)

	-- Order of Embers
		-- i(163614, FACTION_ORDER_OF_EMBERS);	-- Exotic Spices
		i(174503, FACTION_ORDER_OF_EMBERS);	-- Exotically Spiced Carrot

	-- Proudmoore Admiralty
		-- a(i(163616, FACTION_PROUDMOORE_ADMIRALTY));	-- Dented Coin
		a(i(174504, FACTION_PROUDMOORE_ADMIRALTY));	-- Proudmoore War Copper

	-- Storm's Wake
		-- a(i(163615, FACTION_STORMS_WAKE));	-- Lost Sea Scroll
		a(i(174505, FACTION_STORMS_WAKE));	-- Tide-Speaker's Tome

	-- Talanji's Expedition
		-- h(i(163619, FACTION_TALANJIS_EXPEDITION));	-- Golden Beetle
		h(i(174506, FACTION_TALANJIS_EXPEDITION));	-- Golden Insect Wings

	-- Tortollan Seekers
		-- i(166501, FACTION_TORTOLLAN_SEEKERS);	-- Soggy Page
		i(174519, FACTION_TORTOLLAN_SEEKERS);	-- Verdant Hills of Chokingvine - Page 17

	-- Voldunai
		-- h(i(163618, FACTION_VOLDUNAI));	-- Shimmering Shell
		h(i(174501, FACTION_VOLDUNAI));	-- Ornate Voldunai Jewelry

	-- Zandalari Empire
		-- h(i(163620, FACTION_ZANDALARI_EMPIRE));	-- Island Flotsam
		h(i(174518, FACTION_ZANDALARI_EMPIRE));	-- Jani Figurine




-- in BFA the reputation rewards from the mission table / quests are actually currencies, not items like in legion
-- so when you get a Proudmoore Admiralty Commendation for 100 reputation, you're actually getting 100 Invisible Proudmoore Admiralty Coins (since the "currencies" aren't tracked on the currency tab but are seemingly immediately exchanged for reputation)
-- if we can link the currencies to the reputation somehow we can track reputation completion (and possibly whether or not you need the reputation still for paragon rewards?  that'd be nice!)

-- currencyID, factionID

-- ALLIANCE
-- 1579, 2164	-- Champions of Azeroth Commendation
-- 1592, 2161	-- Order of Embers Commendation
-- 1593, 2160	-- Proudmoore Admiralty Commendation
-- 1594, 2162	-- Storm's Wake Commendation
-- 1599, 2159	-- 7th Legion Commendation

-- HORDE
-- 1600, 2157	-- Honorbound Commendation
-- 1595, 2156	-- Talanji's Expedition Commendation
-- 1596, 2158	-- Voldunai Commendation
-- 1597, 2103	-- Zandalari Empire Commendation

-- NEUTRAL
-- 1598, 2163	-- Tortollan Seekers Commendation

-----------------
--   CLASSIC   --
-----------------
i(12844, FACTION_ARGENT_DAWN);				-- Argent Dawn Valor Token

-----------------
-- PATCH 3.0.2 --
-----------------
i(44713, FACTION_EBON_BLADE);				-- Ebon Blade Commendation Badge

-----------------
-- PATCH 6.2.2 --
-----------------
i(129941, FACTION_EBON_BLADE);				-- Commendation of the Ebon Blade [BOA]

-----------------
-- PATCH 7.2.0 --
-----------------
i(146950, FACTION_ARMIES_OF_LEGIONFALL);	-- Legionfall Insignia [BOA]
i(146949, FACTION_ARMIES_OF_LEGIONFALL);	-- Legionfall Insignia [BOP]

-----------------
-- PATCH 7.3.0 --
-----------------
i(152959, FACTION_ARGUSSIAN_REACH);			-- Argussian Reach Insignia
i(152960, FACTION_ARGUSSIAN_REACH);			-- Argussian Reach Insignia
i(152957, FACTION_ARMY_OF_THE_LIGHT);		-- Army of the Light Insignia
i(152958, FACTION_ARMY_OF_THE_LIGHT);		-- Army of the Light Insignia
i(152954, FACTION_ARGUSSIAN_REACH);			-- Greater Argussian Reach Insignia
i(152961, FACTION_ARGUSSIAN_REACH);			-- Greater Argussian Reach Insignia
i(152955, FACTION_ARMY_OF_THE_LIGHT);		-- Greater Army of the Light Insignia
i(152956, FACTION_ARMY_OF_THE_LIGHT);		-- Greater Army of the Light Insignia

-----------------
-- PATCH 8.2.0 --
-----------------
i(168497, FACTION_RUSTBOLT_RESISTANCE);		-- Rustbolt Resistance Insignia [BOA]

-----------------
-- PATCH 8.3.0 --
-----------------
i(173374, FACTION_RAJANI);					-- Rajani Insignia [BOA]
i(173375, FACTION_RAJANI);					-- Rajani Insignia [BOP]

-----------------
-- PATCH 9.0.2 --
-----------------
i(178591, FACTION_COURT_OF_HARVESTERS);		-- Ancient Venthyr Relic
i(178593, FACTION_THE_WILD_HUNT);			-- Intricate Fae Groveweave
i(178590, FACTION_THE_UNDYING_ARMY);		-- Storied Maldraxxian Boneblade
i(178592, FACTION_THE_ASCENDED);			-- Venerable Kyrian Defender

-----------------
-- PATCH 9.1.0 --
-----------------
i(187425, FACTION_THE_UNDYING_ARMY);		-- Ancient Maldraxxi Armament
i(187427, FACTION_THE_ASCENDED);			-- Lost Meditation Bell
i(187429, FACTION_THE_WILD_HUNT);			-- Petrified Sylvan Antlers

------------------
-- PATCH 10.0.2 --
------------------
i(200285, FACTION_DRAGONSCALE_EXPEDITION);	-- Dragonscale Expedition Insignia [Uncommon]
i(200452, FACTION_DRAGONSCALE_EXPEDITION);	-- Dragonscale Expedition Insignia [Rare]
i(201921, FACTION_DRAGONSCALE_EXPEDITION);	-- Dragonscale Expedition Insignia [Epic 500]
i(202091, FACTION_DRAGONSCALE_EXPEDITION);	-- Dragonscale Expedition Insignia [Epic 2.5k]
i(200287, FACTION_ISKAARA_TUSKARR);			-- Iskaara Tuskarr Insignia [Uncommon]
i(200453, FACTION_ISKAARA_TUSKARR);			-- Iskaara Tuskarr Insignia [Rare]
i(201922, FACTION_ISKAARA_TUSKARR);			-- Iskaara Tuskarr Insignia [Epic 500]
i(202092, FACTION_ISKAARA_TUSKARR);			-- Iskaara Tuskarr Insignia [Epic 2.5k]
i(200288, FACTION_MARUUK_CENTAUR);			-- Maruuk Centaur Insignia [Uncommon]
i(200454, FACTION_MARUUK_CENTAUR);			-- Maruuk Centaur Insignia [Rare]
i(201923, FACTION_MARUUK_CENTAUR);			-- Maruuk Centaur Insignia [Epic 500]
i(202094, FACTION_MARUUK_CENTAUR);			-- Maruuk Centaur Insignia [Epic 2.5k]
i(200289, FACTION_VALDRAKKEN_ACCORD);		-- Valdrakken Accord Insignia [Uncommon]
i(200455, FACTION_VALDRAKKEN_ACCORD);		-- Valdrakken Accord Insignia [Rare]
i(201924, FACTION_VALDRAKKEN_ACCORD);		-- Valdrakken Accord Insignia [Epic 500]
i(202093, FACTION_VALDRAKKEN_ACCORD);		-- Valdrakken Accord Insignia [Epic 2.5k]

------------------
-- PATCH 10.1.5 --
------------------
i(208952, FACTION_SORIDORMI);				-- Soridormi's Letter of Commendation

------------------
-- PATCH 10.1.0 --
------------------
i(205365, FACTION_LOAMM_NIFFEN);			-- Loamm Niffen Insignia [Uncommon]
i(205342, FACTION_LOAMM_NIFFEN);			-- Loamm Niffen Insignia [Rare]
i(205985, FACTION_LOAMM_NIFFEN);			-- Loamm Niffen Insignia [Epic 500]
i(210422, FACTION_LOAMM_NIFFEN);			-- Loamm Niffen Insignia [Epic 2.5k]

------------------
-- PATCH 10.1.5 --
------------------
i(208617, FACTION_EBON_BLADE);				-- Ebon Blade Commendation Badge [BOP]
h(i(208133, FACTION_ORGRIMMAR));			-- Orgrimmar Insignia [BOP]
i(208134, FACTION_RUSTBOLT_RESISTANCE);		-- Rustbolt Resistance Insignia [BOP]
a(i(208132, FACTION_STORMWIND));			-- Stormwind Insignia [BOP]

------------------
-- PATCH 10.2.0 --
------------------
i(211417, FACTION_DREAM_WARDENS);			-- Dream Wardens Insignia [Epic 1k]
i(210423, FACTION_DREAM_WARDENS);			-- Dream Wardens Insignia [Epic 2.5k]

------------------
-- PATCH 11.0.5 --
------------------
i(224567, FACTION_ARGENT_DAWN);				-- Commendation of the Argent Dawn
i(224558, FACTION_BROOD_OF_NOZDORMU);		-- Commendation of the Brood of Nozdormu
i(224561, FACTION_HYDRAXIAN_WATERLORDS);	-- Commendation of the Hydraxian Waterlords
i(224571, FACTION_THORIUM_BROTHERHOOD);		-- Commendation of the Thorium Brotherhood
i(224566, FACTION_TIMBERMAW_HOLD);			-- Commendation of the Timbermaw Hold
a(i(224565, FACTION_WINTERSABER_TRAINERS));	-- Commendation of the Wintersaber Trainers
i(224570, FACTION_ZANDALAR_TRIBE);			-- Commendation of the Zandalar Tribe
-- Blizz decided against adding these, boooo
-- i(224569, FACTION_THE_DEFILERS);			-- Commendation of the Defilers
-- i(224563, FACTION_FROSTWOLF_CLAN);		-- Commendation of the Frostwolf Clan
-- i(224568, FACTION_THE_LEAGUE_OF_ARATHOR);	-- Commendation of the League of Arathor
-- i(224564, 630);							-- Commendation of the Ravasaur Trainers
-- i(224559, FACTION_SILVERWING_SENTINELS);	-- Commendation of the Silverwing Sentinels
-- i(224562, FACTION_STORMPIKE_GUARD);		-- Commendation of the Stormpike Guard
-- i(224560, FACTION_WARSONG_OUTRIDERS);		-- Commendation of the Warsong Outriders
------------------
-- PATCH 11.1.0 --
------------------
i(235558, FACTION_DARKFUSE_SOLUTIONS);		-- Box of Darkfuse Miscellany [500 Rep]
i(236763, FACTION_TWW_BLACKWATER_CARTEL);	-- Finder's Fee [500 Rep]
i(236764, FACTION_TWW_BILGEWATER_CARTEL);	-- Finder's Fee [500 Rep]
i(236689, FACTION_TWW_STEAMWHEEDLE_CARTEL);	-- Finder's Fee [500 Rep]
i(236765, FACTION_TWW_VENTURE_CO);			-- Finder's Fee [500 Rep]
i(237014, FACTION_THE_SEVERED_THREADS);		-- Severed Threads Commendation [1500 rep with choice of three subreps.] Not technically correct to apply metafaction but is close while only one rep may be attached.

------------------
-- PATCH 11.1.7 --
------------------
a(i(238804, FACTION_PROUDMOORE_ADMIRALTY));	-- Commendation of Proudmoore Admiralty [300 Rep]
a(i(238805, FACTION_STORMS_WAKE));			-- Commendation of Storm's Wake [300 Rep]
h(i(238816, FACTION_TALANJIS_EXPEDITION));	-- Commendation of Talanji's Expedition [300 Rep]
a(i(238806, FACTION_7TH_LEGION));			-- Commendation of the 7th Legion [300 Rep]
i(238821, FACTION_CHAMPIONS_OF_AZEROTH);	-- Commendation of the Champions of Azeroth [300 Rep]
h(i(238819, FACTION_THE_HONORBOUND));		-- Commendation of the Honorbound [300 Rep]
a(i(238803, FACTION_ORDER_OF_EMBERS));		-- Commendation of the Order of Embers [300 Rep]
i(238826, FACTION_RAJANI);					-- Commendation of the Rajani [300 Rep]
i(238823, FACTION_RUSTBOLT_RESISTANCE);		-- Commendation of the Rustbolt Resistance [300 Rep]
i(238822, FACTION_TORTOLLAN_SEEKERS);		-- Commendation of the Tortollan Seekers [300 Rep]
i(238827, FACTION_ULDUM_ACCORD);			-- Commendation of the Uldum Accord [300 Rep]
h(i(238820, FACTION_THE_UNSHACKLED));		-- Commendation of the Unshackled [300 Rep]
h(i(238817, FACTION_VOLDUNAI));				-- Commendation of the Voldunai [300 Rep]
a(i(238809, FACTION_WAVEBLADE_ANKOAN));		-- Commendation of the Waveblade Ankoan [300 Rep]
h(i(238818, FACTION_ZANDALARI_EMPIRE));		-- Commendation of the Zandalari Empire [300 Rep]
i(244848, FACTION_THE_SEVERED_THREADS);		-- Severed Threads Commendation [100 rep with choice of three subreps.] Not technically correct to apply metafaction but is close while only one rep may be attached.
