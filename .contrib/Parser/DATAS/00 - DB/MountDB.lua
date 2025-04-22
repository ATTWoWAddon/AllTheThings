local Items = ItemDBConditional;
local i = function(itemID, spellID)
	Items[itemID] = { ["mountID"] = spellID, ["ignoreBonus"] = true, ["_drop"] = { "spellID" } };
end
-- If the mount is obtained from an item, use i(itemID, mountID);
-- Otherwise use i(0, mountID); example if the mount is obtained from store.
-- At the end the comment should contain the mount name not item name.
-- To acquire itemID and mountID one can use wowhead. If you want mountID from wowhead it can be found in "teaches" tab as spellID
-- MissingIDs also host mountIDs that are still missing in our database. For a full list of mountID see Database Harvester > Raw > Mounts.txt

-- #if ANYCLASSIC
-----------------
-- CLASSIC WOW --
-----------------
-- SEASON OF DISCOVERY --
i(211499, 429857);	-- Trainee's Outrider Wolf
i(211498, 429856);	-- Trainee's Sentinel Nightsaber

-- Phase 2
i(216570, 436329);	-- Reins of the Golden Sabercat
i(216492, 436288);	-- Whistle of the Mottled Blood Raptor

-- TBC Classic --
i(184865, 348459);	-- Reawakened Phase-Hunter

-- Wrath Classic --
i(192455, 372677);	-- Kalu'ak Whalebone Glider
i(201699, 394209);	-- Festering Emerald Drake
i(207097, 416158);	-- Nightmarish Emerald Drake
i(0, 440915);		-- Auspicious Arborwyrm
i(0, 423869);		-- Avatar of Flame
i(0, 446902);		-- Polly Roger
i(0, 471440);		-- Skybound Spectral Tiger 		(CN Only)
i(0, 1216542);		-- Blazing Royal Fire Hawk		(CN Only Classic Version)
i(0, 459784);		-- Golden Ashes of Al'ar 		(CN Only Classic Version)

-- Cata Classic --
i(0, 463045);		-- Lava Drake
i(0, 473487);		-- Sha-Touched Cloud Serpent
i(0, 473478);		-- Sha-Touched Riding Tiger
--- NYI ---
i(0, 388516);		-- Hao-Yue, River Foreseer
i(198632, 387319);	-- Big Battle Bear
i(198630, 387320);	-- Blazing Hippogryph
i(198631, 387308);	-- Magic Rooster
i(198633, 387321);	-- Wooly White Rhino
i(198629, 387323);	-- X-51 Nether-Rocket
i(198628, 387311);	-- X-51 Nether-Rocket X-TREME
-- #endif

-----------------
--   CLASSIC   --
-----------------
i(12302, 16056);	-- Ancient Frostsaber
i(12351, 16081);	-- Arctic Wolf
i(18243, 22719);	-- Black Battlestrider
i(12303, 16055);	-- Black Nightsaber
i(21176, 26656);	-- Black Qiraji Battle Tank
i(13328, 17461);	-- Black Ram
i(2411, 470);		-- Black Stallion
i(18247, 22718);	-- Black War Kodo
i(18244, 22720);	-- Black War Ram
i(18246, 22721);	-- Black War Raptor
i(18241, 22717);	-- Black War Steed
i(18242, 22723);	-- Black War Tiger
i(18245, 22724);	-- Black War Wolf
i(8595, 10969);		-- Blue Mechanostrider
i(21218, 25953);	-- Blue Qiraji Battle Tank
i(13332, 17463);	-- Blue Skeletal Horse
i(5656, 458);		-- Brown Horse
i(15290, 18990);	-- Brown Kodo
i(5872, 6899);		-- Brown Ram
i(13333, 17464);	-- Brown Skeletal Horse
i(5668, 6654);		-- Brown Wolf
i(0, 23214);		-- Charger
i(5655, 6648);		-- Chestnut Mare
i(5665, 6653);		-- Dire Wolf
i(0, 23161);		-- Dreadsteed
i(8588, 8395);		-- Emerald Raptor
i(0, 5784);			-- Felsteed
i(13329, 17460);	-- Frost Ram
i(19029, 23509);	-- Frostwolf Howler
i(15277, 18989);	-- Gray Kodo
i(5864, 6777);		-- Gray Ram
i(18794, 23249);	-- Great Brown Kodo
i(18795, 23248);	-- Great Gray Kodo
i(18793, 23247);	-- Great White Kodo
i(15292, 18991);	-- Green Kodo
i(13321, 17453);	-- Green Mechanostrider
i(21323, 26056);	-- Green Qiraji Battle Tank
i(13334, 17465);	-- Green Skeletal Warhorse
i(13327, 17459);	-- Icy Blue Mechanostrider Mod A
i(13317, 17450);	-- Ivory Raptor
i(8586, 16084);		-- Mottled Red Raptor
i(12354, 16082);	-- Palomino
i(2414, 472);		-- Pinto
i(18791, 23246);	-- Purple Skeletal Warhorse
i(8563, 10873);		-- Red Mechanostrider
i(21321, 26054);	-- Red Qiraji Battle Tank
i(13331, 17462);	-- Red Skeletal Horse
i(18248, 22722);	-- Red Skeletal Warhorse
i(12330, 16080);	-- Red Wolf
i(13335, 17481);	-- Rivendare's Deathcharger
i(8632, 10789);		-- Spotted Frostsaber
i(19030, 23510);	-- Stormpike Battle Charger
i(8631, 8394);		-- Striped Frostsaber
i(8629, 10793);		-- Striped Nightsaber
i(18788, 23241);	-- Swift Blue Raptor
i(18786, 23238);	-- Swift Brown Ram
i(18777, 23229);	-- Swift Brown Steed
i(18796, 23250);	-- Swift Brown Wolf
i(18766, 23221);	-- Swift Frostsaber
i(18787, 23239);	-- Swift Gray Ram
i(18798, 23252);	-- Swift Gray Wolf
i(18772, 23225);	-- Swift Green Mechanostrider
i(18767, 23219);	-- Swift Mistsaber
i(18789, 23242);	-- Swift Olive Raptor
i(18790, 23243);	-- Swift Orange Raptor
i(18776, 23227);	-- Swift Palomino
i(19872, 24242);	-- Swift Razzashi Raptor
i(18902, 23338);	-- Swift Stormsaber
i(18797, 23251);	-- Swift Timber Wolf
i(18773, 23223);	-- Swift White Mechanostrider
i(18778, 23228);	-- Swift White Steed
i(18785, 23240);	-- Swift White Ram
i(18774, 23222);	-- Swift Yellow Mechanostrider
i(19902, 24252);	-- Swift Zulian Tiger
i(15293, 18992);	-- Teal Kodo
i(1132, 580);		-- Timber Wolf
i(8591, 10796);		-- Turquoise Raptor
i(8592, 10799);		-- Violet Raptor
i(0, 13819);		-- Warhorse
i(13326, 15779);	-- White Mechanostrider Mod B
i(5873, 6898);		-- White Ram
i(12353, 16083);	-- White Stallion
i(13086, 17229);	-- Winterspring Frostsaber
i(13322, 17454);	-- Unpainted Mechanostrider
i(21324, 26055);	-- Yellow Qiraji Battle Tank
--- NYI ---
i(0, 25863);		-- Black Qiraji Battle Tank
i(0, 26655);		-- Black Qiraji Battle Tank
i(0, 15780);		-- Green Mechanostrider
i(0, 15781);		-- Steel Mechanostrider
i(8627, 10787);		-- Black Nightsaber[WRATH+] / Panther
i(5874, 6896);		-- Black Ram
i(1041, 578);		-- Black Wolf
i(5875, 6897);		-- Blue Ram
i(20221, 24576);	-- Chromatic Mount [Item: Foror's Fabled Steed]
i(13325, 17458);	-- Fluorescent Green Mechanostrider
i(12327, 16060);	-- Golden Sabercat
i(1134, 459);		-- Gray Wolf
i(8589, 10795);		-- Ivory Raptor
i(8633, 10788);		-- Leopard
i(23193, 29059);	-- Naxxramas Deathcharger[WRATH+] / Skeletal Steed
i(21736, 3363);		-- Nether Drake[TBC+] / Summon Riding Gryphon
i(8590, 10798);		-- Obsidian Raptor
i(2413, 471);		-- Palamino Stallion [Item: Palomino]
i(12325, 16058);	-- Primal Leopard
i(13323, 17455);	-- Purple Mechanostrider
i(13324, 17456);	-- Red and Blue Mechanostrider
i(14062, 18363);	-- Riding Kodo [Item: Kodo Mount]
i(5663, 579);		-- Red Wolf
i(8583, 8980);		-- Skeletal Horse
i(8628, 10792);		-- Spotted Panther
i(18768, 23220);	-- Swift Dawnsaber
i(12326, 16059);	-- Tawny Sabercat
i(8630, 10790);		-- Tiger [Item: Reins of the Bengal Tiger]
i(901, 468);		-- White Stallion [Item: Deptecated White Stallion Summoning (Mount)]
i(2415, 468);		-- White Stallion [Item: White Stallion]
i(1133, 581);		-- Winter Wolf
i(875, 0);			-- Brown Horse Summoning
i(16338, 0);		-- Knight-Lieutenant's Steed
i(16343, 0);		-- Blood Guard's Mount
i(16339, 0);		-- Commander's Steed
i(16344, 0);		-- zzUNUSEDLieutenant General's Mount

-----------------
-- PATCH 2.0.0 --
-----------------
i(23720, 30174);	-- Riding Turtle

-----------------
-- PATCH 2.0.1 --
-----------------
i(29465, 22719);	-- Black Battlestrider
i(29221, 35022);	-- Black Hawkstrider
i(29466, 22718);	-- Black War Kodo
i(29467, 22720);	-- Black War Ram
i(29472, 22721);	-- Black War Raptor
i(29468, 22717);	-- Black War Steed
i(29471, 22723);	-- Black War Tiger
i(29469, 22724);	-- Black War Wolf
i(29220, 35020);	-- Blue Hawkstrider
i(28481, 34406);	-- Brown Elekk
i(29744, 35710);	-- Gray Elekk
i(29745, 35713);	-- Great Blue Elekk
i(29746, 35712);	-- Great Green Elekk
i(29747, 35714);	-- Great Purple Elekk
i(25476, 32245);	-- Green Wind Rider
i(29743, 35711);	-- Purple Elekk
i(29222, 35018);	-- Purple Hawkstrider
i(28927, 34795);	-- Red Hawkstrider
i(29470, 22722);	-- Red Skeletal Warhorse
i(29223, 35025);	-- Swift Green Hawkstrider
i(28936, 33660);	-- Swift Pink Hawkstrider
i(29224, 35027);	-- Swift Purple Hawkstrider
i(0, 34767);		-- Thalassian Charger
i(0, 34769);		-- Thalassian Warhorse
--- NYI ---
i(0, 33630);		-- Blue Mechanostrider
i(0, 28828);		-- Nether Drake

-----------------
-- PATCH 2.0.5 --
-----------------
i(25475, 32244);	-- Blue Wind Rider
i(31830, 39315);	-- Cobalt Riding Talbuk [A]
i(31829, 39315);	-- Cobalt Riding Talbuk [H]
i(29227, 34896);	-- Cobalt War Talbuk [A]
i(29102, 34896);	-- Cobalt War Talbuk [H]
i(28915, 39316);	-- Dark Riding Talbuk
i(29228, 34790);	-- Dark War Talbuk
i(25471, 32239);	-- Ebon Gryphon
i(30480, 36702);	-- Fiery Warhorse
i(25470, 32235);	-- Golden Gryphon
i(31832, 39317);	-- Silver Riding Talbuk [A]
i(31831, 39317);	-- Silver Riding Talbuk [H]
i(29229, 34898);	-- Silver War Talbuk [A]
i(29104, 34898);	-- Silver War Talbuk [H]
i(25472, 32240);	-- Snowy Gryphon
i(25473, 32242);	-- Swift Blue Gryphon
i(25528, 32290);	-- Swift Green Gryphon
i(25531, 32295);	-- Swift Green Wind Rider
i(25529, 32292);	-- Swift Purple Gryphon
i(25533, 32297);	-- Swift Purple Wind Rider
i(25527, 32289);	-- Swift Red Gryphon
i(25477, 32246);	-- Swift Red Wind Rider
i(25532, 32296);	-- Swift Yellow Wind Rider
i(31834, 39318);	-- Tan Riding Talbuk [A]
i(31833, 39318);	-- Tan Riding Talbuk [H]
i(29230, 34899);	-- Tan War Talbuk [A]
i(29105, 34899);	-- Tan War Talbuk [H]
i(25474, 32243);	-- Tawny Wind Rider
i(31836, 39319);	-- White Riding Talbuk [A]
i(31835, 39319);	-- White Riding Talbuk [H]
i(29231, 34897);	-- White War Talbuk [A]
i(29103, 34897);	-- White War Talbuk [H]
--- NYI ---
i(25664, 32420);	-- Old Crappy McWeakSauce [Item: Crappy's Bell]

-----------------
-- PATCH 2.0.8 --
-----------------
--- NYI ---
i(29225, 0);		-- zzoldSwift Warstrider

-----------------
-- PATCH 2.1.0 --
-----------------
i(32858, 41514);	-- Azure Netherwing Drake
i(32319, 39803);	-- Blue Riding Nether Ray
i(32859, 41515);	-- Cobalt Netherwing Drake
i(32314, 39798);	-- Green Riding Nether Ray
i(32857, 41513);	-- Onyx Netherwing Drake
i(32860, 41516);	-- Purple Netherwing Drake
i(32316, 39801);	-- Purple Riding Nether Ray
i(32768, 41252);	-- Raven Lord
i(32317, 39800);	-- Red Riding Nether Ray
i(32318, 39802);	-- Silver Riding Nether Ray
i(32861, 41517);	-- Veridian Netherwing Drake
i(32862, 41518);	-- Violet Netherwing Drake
--- NYI ---
i(0, 40212);		-- Dragonmaw Nether Drake

-----------------
-- PATCH 2.1.1 --
-----------------
i(32458, 40192);	-- Ashes of Al'ar

-----------------
-- PATCH 2.1.2 --
-----------------
i(30609, 37015);	-- Swift Nether Drake
--- NYI ---
i(0, 39949);		-- Mount (Test Anim)
i(0, 39910);		-- Riding Clefthoof
i(0, 39450);		-- Tallstrider

-----------------
-- PATCH 2.1.3 --
-----------------
i(33976, 43899);	-- Brewfest Ram
i(33224, 42776);	-- Spectral Tiger
i(33977, 43900);	-- Swift Brewfest Ram
i(33225, 42777);	-- Swift Spectral Tiger

-----------------
-- PATCH 2.2.3 --
-----------------
-- NYI --
i(28482, 34407);	-- Great Elite Elekk

-----------------
-- PATCH 2.3.0 --
-----------------
i(33809, 43688);	-- Amani War Bear
i(33999, 43927);	-- Cenarion War Hippogryph
i(34060, 44153);	-- Flying Machine
i(34092, 44744);	-- Merciless Nether Drake
i(34129, 35028);	-- Swift Warstrider
i(34061, 44151);	-- Turbo-Charged Flying Machine
--- NYI ---
i(0, 42929);		-- [DNT] Test Mount
i(25596, 32345);	-- Peep the Phoenix Mount

-----------------
-- PATCH 2.4.0 --
-----------------
i(35906, 48027);	-- Black War Elekk
i(35513, 46628);	-- Swift White Hawkstrider
i(35225, 46197);	-- X-51 Nether-Rocket
i(35226, 46199);	-- X-51 Nether-Rocket X-TREME
--- NYI ---
i(0, 47037);		-- Swift War Elekk

-----------------
-- PATCH 2.4.1 --
----------------
--- NYI ---
i(37827, 49378);	-- Brewfest Riding Kodo

-----------------
-- PATCH 2.4.2 --
-----------------
i(38576, 51412);	-- Big Battle Bear
i(37676, 49193);	-- Vengeful Nether Drake

-----------------
-- PATCH 2.4.3 --
-----------------
i(43599, 58983);	-- Big Blizzard Bear
i(43516, 58615);	-- Brutal Nether Drake
i(37828, 49379);	-- Great Brewfest Kodo
i(37012, 48025);	-- Headless Horseman's Mount
i(37719, 49322);	-- Swift Zhevra
--- NYI ---
i(0, 55164);		-- Swift Spectral Gryphon
i(37598, 48954);	-- Swift Zhevra [Item: Swift Zhevra OLD]

-----------------
-- PATCH 2.X.X --
-----------------
--- NYI ---
i(0, 44317);		-- Merciless Nether Drake
i(28025, 33631);	-- Video Mount
i(27819, 0);		-- Crazy Raptor 75
i(27853, 0);		-- Crazy Raptor 150


-----------------
-- PATCH 3.0.2 --
-----------------
i(0, 48778);		-- Acherus Deathcharger
i(40775, 54729);	-- Winged Steed of the Ebon Blade
--- NYI ---
i(0, 55293);		-- Amani War Bear
i(0, 50869);		-- Brewfest Kodo
i(0, 50870);		-- Brewfest Ram
i(0, 43810);		-- Frost Wyrm
i(0, 60136);		-- Grand Caravan Mammoth [A]
i(0, 60140);		-- Grand Caravan Mammoth [H]
i(0, 59804);		-- Grand Ice Mammoth [A]
i(0, 59802);		-- Grand Ice Mammoth [H]
i(0, 46980);		-- Northrend Nerubian Mount (Test)
i(0, 58819);		-- Swift Brown Steed
i(43964, 59572);	-- Black Polar Bear
i(38265, 50281);	-- Black Warp Stalker
i(43963, 59573);	-- Brown Polar Bear
i(38690, 51960);	-- Frost Wyrm Mount
i(44555, 61442);	-- Swift Mooncloth Carpet
i(44557, 61444);	-- Swift Shadoweave Carpet
i(44556, 61446);	-- Swift Spellfire Carpet

-----------------
-- PATCH 3.0.3 --
-----------------
i(44178, 60025);	-- Albino Drake
i(44690, 61230);	-- Armored Blue Wind Rider
i(44225, 60114);	-- Armored Brown Bear [A]
i(44226, 60116);	-- Armored Brown Bear [H]
i(44689, 61229);	-- Armored Snowy Gryphon
i(43952, 59567);	-- Azure Drake
i(43986, 59650);	-- Black Drake
i(44164, 59976);	-- Black Proto-Drake
i(44223, 60118);	-- Black War Bear [A]
i(44224, 60119);	-- Black War Bear [H]
i(43956, 59785);	-- Black War Mammoth [A]
i(44077, 59788);	-- Black War Mammoth [H]
i(43953, 59568);	-- Blue Drake
i(44151, 59996);	-- Blue Proto-Drake
i(43951, 59569);	-- Bronze Drake
i(44554, 61451);	-- Flying Carpet
i(43959, 61465);	-- Grand Black War Mammoth [A]
i(44083, 61467);	-- Grand Black War Mammoth [H]
i(43961, 61470);	-- Grand Ice Mammoth [A]
i(44086, 61469);	-- Grand Ice Mammoth [H]
i(44707, 61294);	-- Green Proto-Drake
i(43958, 59799);	-- Ice Mammoth [A]
i(44080, 59797);	-- Ice Mammoth [H]
i(44221, 64749);	-- Loaned Gryphon
i(44229, 64762);	-- Loaned Wind Rider
i(44558, 61309);	-- Magnificent Flying Carpet
i(41508, 55531);	-- Mechano-Hog
i(44413, 60424);	-- Mekgineer's Chopper
i(44175, 60021);	-- Plagued Proto-Drake
i(43955, 59570);	-- Red Drake
i(44160, 59961);	-- Red Proto-Drake
i(44168, 60002);	-- Time-Lost Proto-Drake
i(44235, 61425);	-- Traveler's Tundra Mammoth [A]
i(44234, 61447);	-- Traveler's Tundra Mammoth [H]
i(43954, 59571);	-- Twilight Drake
i(44177, 60024);	-- Violet Proto-Drake
i(43962, 54753);	-- White Polar Bear
i(44230, 59791);	-- Wooly Mammoth [A]
i(44231, 59793);	-- Wooly Mammoth [H]

-----------------
-- PATCH 3.0.8 --
-----------------
i(44843, 61996);	-- Blue Dragonhawk
i(44842, 61997);	-- Red Dragonhawk
--- NYI ---
i(0, 61983);		-- Dan's Test Mount

-----------------
-- PATCH 3.1.0 --
-----------------
i(46308, 64977);	-- Black Skeletal Horse
i(46099, 64658);	-- Black Wolf
i(45801, 63956);	-- Ironbound Proto-Drake
i(45693, 63796);	-- Mimiron's Head
i(45802, 63963);	-- Rusted Proto-Drake
i(46109, 64731);	-- Sea Turtle
i(46100, 64657);	-- White Kodo
--- NYI ---
i(0, 64992);		-- Big Blizzard Bear [PH]
i(0, 64993);		-- Big Blizzard Bear [PH]
i(46101, 64656);	-- Blue Skeletal Warhorse

-----------------
-- PATCH 3.2.0 --
-----------------
i(47179, 66906);	-- Argent Charger
i(45725, 63844);	-- Argent Hippogryph
i(47180, 67466);	-- Argent Warhorse
i(49282, 51412);	-- Big Battle Bear
i(49098, 68188);	-- Crusader's Black Warhorse
i(49096, 68187);	-- Crusader's White Warhorse
i(45593, 63635);	-- Darkspear Raptor
i(45591, 63637);	-- Darnassian Nightsaber
i(46708, 64927);	-- Deadly Gladiator's Frost Wyrm
i(45590, 63639);	-- Exodar Elekk
i(45597, 63643);	-- Forsaken Warhorse
i(46171, 65439);	-- Furious Gladiator's Frost Wyrm
i(45589, 63638);	-- Gnomeregan Mechanostrider
i(46750, 65641);	-- Great Golden Kodo [NON-TAUREN]
i(46755, 65641);	-- Great Golden Kodo [TAUREN]
i(46745, 65637);	-- Great Red Elekk [NON-DRAENEI]
i(46756, 65637);	-- Great Red Elekk [DRAENEI]
i(45586, 63636);	-- Ironforge Ram
i(46778, 65917);	-- Magic Rooster Egg [BoP]
i(49290, 65917);	-- Magic Rooster Egg [BoE]
i(47101, 66846);	-- Ochre Skeletal Warhorse
i(49636, 69395);	-- Onyxian Drake
i(45595, 63640);	-- Orgrimmar Wolf
i(46815, 66090);	-- Quel'dorei Steed
i(47840, 67336);	-- Relentless Gladiator's Frost Wyrm
i(46813, 66087);	-- Silver Covenant Hippogryph
i(45596, 63642);	-- Silvermoon Hawkstrider
i(49283, 42776);	-- Spectral Tiger
i(45125, 63232);	-- Stormwind Steed
i(47100, 66847);	-- Striped Dawnsaber
i(46814, 66088);	-- Sunreaver Dragonhawk
i(46816, 66091);	-- Sunreaver Hawkstrider
i(49044, 68057);	-- Swift Alliance Steed
i(46757, 65646);	-- Swift Burgundy Wolf [NON-ORC]
i(46749, 65646);	-- Swift Burgundy Wolf [ORC]
i(46752, 65640);	-- Swift Gray Steed [NON-HUMAN]
i(46758, 65640);	-- Swift Gray Steed [HUMAN]
i(49046, 68056);	-- Swift Horde Wolf
i(46744, 65638);	-- Swift Moonsaber [NON-NIGHT ELF]
i(46759, 65638);	-- Swift Moonsaber [NIGHT ELF]
i(46743, 65644);	-- Swift Purple Raptor [NON-TROLL]
i(46760, 65644);	-- Swift Purple Raptor [TROLL]
i(46751, 65639);	-- Swift Red Hawkstrider [NON-BLOOD ELF]
i(46761, 65639);	-- Swift Red Hawkstrider [BLOOD ELF]
i(49284, 42777);	-- Swift Spectral Tiger
i(46748, 65643);	-- Swift Violet Ram [NON-DWARF]
i(46762, 65643);	-- Swift Violet Ram [DWARF]
i(45592, 63641);	-- Thunder Bluff Kodo
i(46747, 65642);	-- Turbostrider [NON-GNOME]
i(46763, 65642);	-- Turbostride [GNOME]
i(46102, 64659);	-- Venomhide Ravasaur
i(46746, 65645);	-- White Skeletal Warhorse [NON-UNDEAD]
i(46764, 65645);	-- White Skeletal Warhorse [UNDEAD]
i(49285, 46197);	-- X-51 Nether-Rocket
i(49286, 46199);	-- X-51 Nether-Rocket X-TREME
--- NYI ---
i(0, 66907);		-- Argent Warhorse
i(0, 66122);		-- Magic Rooster
i(0, 66123);		-- Magic Rooster
i(0, 66124);		-- Magic Rooster

-----------------
-- PATCH 3.3.0 --
-----------------
i(51954, 72808);	-- Bloodbathed Frostbrood Vanquisher
i(51955, 72807);	-- Icebound Frostbrood Vanquisher
i(50818, 72286);	-- Invincible
i(50435, 71810);	-- Wrathful Gladiator's Frost Wyrm
i(50250, 71342);	-- X-45 Heartbreaker

-----------------
-- PATCH 3.3.3 --
-----------------
i(54069, 74856);	-- Blazing Hippogryph
i(54811, 75614);	-- Celestial Steed
i(52200, 73313);	-- Crimson Deathcharger
i(54797, 75596);	-- Frosty Flying Carpet
i(54860, 75973);	-- X-53 Touring Rocket
--- NYI ---
i(0, 75387);		-- Tiny Mooncloth Carpet

-----------------
-- PATCH 3.3.5 --
-----------------
i(54068, 74918);	-- Wooly White Rhino

-----------------
-- PATCH 4.0.3 --
-----------------
i(63044, 88748);	-- Brown Riding Camel
i(63125, 88990);	-- Dark Phoenix
i(62901, 88335);	-- Drake of the East Wind
i(63040, 88742);	-- Drake of the North Wind
i(63041, 88744);	-- Drake of the South Wind
i(63039, 88741);	-- Drake of the West Wind [A]
i(65356, 88741);	-- Drake of the West Wind [H]
i(0, 73629);		-- Exarch's Elekk
i(60954, 84751);	-- Fossilized Raptor
i(62461, 87090);	-- Goblin Trike
i(62462, 87091);	-- Goblin Turbo-Trike
i(62298, 90621);	-- Golden King
i(0, 73630);		-- Great Exarch's Elekk
i(0, 69826);		-- Great Sunwalker Kodo
i(63046, 88750);	-- Grey Riding Camel
i(67107, 93644);	-- Kor'kron Annihilator
i(68008, 93623);	-- Mottled Drake
i(63042, 88718);	-- Phosphorescent Stone Drake
i(65891, 93326);	-- Sandstone Drake
i(64998, 92231);	-- Spectral Steed
i(64999, 92232);	-- Spectral Wolf
i(67151, 98718);	-- Subdued Seahorse
i(0, 69820);		-- Sunwalker Kodo
i(63045, 88749);	-- Tan Riding Camel
i(64883, 92155);	-- Ultramarine Qiraji Battle Tank
i(54465, 75207);	-- Vashj'ir Seahorse
i(63043, 88746);	-- Vitreous Stone Drake
i(62900, 88331);	-- Volcanic Stone Drake
--- NYI ---
i(0, 68930);		-- Brood of Onyxia
i(0, 89520);		-- Goblin Mini Hotrod
i(0, 86579);		-- Wooden Raft
i(57859, 79361);	-- Twilight Phoenix [Item: Essence of the Underworld (DEPRECATED)]

-----------------
-- PATCH 4.1.0 --
-----------------
i(69747, 98204);	-- Amani Battle Bear
i(68825, 96503);	-- Amani Dragonhawk
i(68823, 96491);	-- Armored Razzashi Raptor
i(69226, 97501);	-- Felfire Hawk
i(69213, 97359);	-- Flameward Hippogryph
i(69224, 97493);	-- Pureblood Fire Hawk
i(69228, 97581);	-- Savage Raptor
i(68824, 96499);	-- Swift Zulian Panther
i(69846, 98727);	-- Winged Guardian

-----------------
-- PATCH 4.2.0 --
-----------------
i(69230, 97560);	-- Corrupted Fire Hawk
i(71665, 101542);	-- Flametalon of Alysrazor
i(71339, 101282);	-- Vicious Gladiator's Twilight Drake
i(70909, 100332);	-- Vicious War Steed
i(70910, 100333);	-- Vicious War Wolf

-----------------
-- PATCH 4.3.0 --
-----------------
i(77067, 107842);	-- Blazing Drake
i(74269, 74856);	-- Blazing Hippogryph
i(72582, 102514);	-- Corrupted Hippogryph
i(73766, 103081);	-- Darkmoon Dancing Bear
i(78919, 110039);	-- Experiment 12-B
i(78924, 110051);	-- Heart of the Aspects
i(77069, 107845);	-- Life-Binder's Handmaiden
i(73838, 103195);	-- Mountain Horse
i(71954, 101821);	-- Ruthless Gladiator's Twilight Drake
i(76889, 107516);	-- Spectral Gryphon
i(76902, 107517);	-- Spectral Wind Rider
i(72140, 102346);	-- Swift Forest Strider
i(73839, 103196);	-- Swift Mountain Horse
i(72146, 102350);	-- Swift Lovebird
i(71718, 101573);	-- Swift Shorestrider
i(72145, 102349);	-- Swift Springstrider
i(72575, 102488);	-- White Riding Camel
i(77068, 107844);	-- Twilight Harbinger
i(76755, 107203);	-- Tyrael's Charger

-----------------
-- PATCH 4.3.2 --
-----------------
i(79771, 113120);	-- Feldrake
--- NYI ---
i(0, 121805);		-- RAF Mount III

-----------------
-- PATCH 5.0.4 --
-----------------
i(85262, 123886);	-- Amber Scorpion
i(90710, 132117);	-- Ashen Pandaren Phoenix
i(87777, 127170);	-- Astral Cloud Serpent
i(85430, 123992);	-- Azure Cloud Serpent
i(87781, 127174);	-- Azure Riding Crane
i(81354, 118089);	-- Azure Water Strider
i(87795, 127286);	-- Black Dragon Turtle [NON-PANDAREN]
i(91008, 127286);	-- Black Dragon Turtle [PANDAREN]
i(89391, 130138);	-- Black Riding Goat
i(87789, 127220);	-- Blonde Riding Yak
i(87796, 127287);	-- Blue Dragon Turtle [NON-PANDAREN]
i(91009, 127287);	-- Blue Dragon Turtle [PANDAREN]
i(89307, 129934);	-- Blue Shado-Pan Riding Tiger
i(87797, 127288);	-- Brown Dragon Turtle [NON-PANDAREN]
i(91005, 127288);	-- Brown Dragon Turtle [PANDAREN]
i(89362, 130086);	-- Brown Riding Goat
i(85785, 124550);	-- Cataclysmic Gladiator's Twilight Drake
i(87769, 127156);	-- Crimson Cloud Serpent
i(89154, 129552);	-- Crimson Pandaren Phoenix
i(87791, 127271);	-- Crimson Water Strider
i(87250, 126507);	-- Depleted-Kyparium Rocket
i(90711, 132118);	-- Emerald Pandaren Phoenix
i(84101, 122708);	-- Grand Expedition Yak
i(87802, 127295);	-- Great Black Dragon Turtle [NON-PANDAREN]
i(91011, 127295);	-- Great Black Dragon Turtle [PANDAREN]
i(87803, 127302);	-- Great Blue Dragon Turtle [NON-PANDAREN]
i(91013, 127302);	-- Great Blue Dragon Turtle [PANDAREN]
i(87804, 127308);	-- Great Brown Dragon Turtle [NON-PANDAREN]
i(91014, 127308);	-- Great Brown Dragon Turtle [PANDAREN]
i(87801, 127293);	-- Great Green Dragon Turtle [NON-PANDAREN]
i(91012, 127293);	-- Great Green Dragon Turtle [PANDAREN]
i(87805, 127310);	-- Great Purple Dragon Turtle [NON-PANDAREN]
i(91015, 127310);	-- Great Purple Dragon Turtle [PANDAREN]
i(82811, 120822);	-- Great Red Dragon Turtle [NON-PANDAREN]
i(91010, 120822);	-- Great Red Dragon Turtle [PANDAREN]
i(82765, 120395);	-- Green Dragon Turtle [NON-PANDAREN]
i(91004, 120395);	-- Green Dragon Turtle [PANDAREN]
i(89305, 129932);	-- Green Shado-Pan Riding Tiger
i(87251, 126508);	-- Geosynchronous World Spinner
i(85429, 123993);	-- Golden Cloud Serpent
i(87782, 127176);	-- Golden Riding Crane
i(87788, 127216);	-- Grey Riding Yak
i(83086, 121820);	-- Heart of the Nightwing
i(87776, 127169);	-- Heavenly Azure Cloud Serpent
i(87773, 127161);	-- Heavenly Crimson Cloud Serpent
i(87774, 127164);	-- Heavenly Golden Cloud Serpent
i(87771, 127158);	-- Heavenly Onyx Cloud Serpent
i(85870, 124659);	-- Imperial Quilen
i(79802, 113199);	-- Jade Cloud Serpent
i(83088, 121837);	-- Jade Panther
i(82453, 120043);	-- Jeweled Onyx Panther
i(87768, 127154);	-- Onyx Cloud Serpent
i(89785, 130985);	-- Pandaren Kite [A]
i(81559, 118737);	-- Pandaren Kite [H]
i(87799, 127289);	-- Purple Dragon Turtle [NON-PANDAREN]
i(91006, 127289);	-- Purple Dragon Turtle [PANDAREN]
i(87800, 127290);	-- Red Dragon Turtle [NON-PANDAREN]
i(91007, 127290);	-- Red Dragon Turtle [PANDAREN]
i(89363, 130092);	-- Red Flying Cloud
i(89306, 129935);	-- Red Shado-Pan Riding Tiger
i(87783, 127177);	-- Regal Riding Crane
i(83087, 121838);	-- Ruby Panther
i(83090, 121836);	-- Sapphire Panther
i(89783, 130965);	-- Son of Galleon
i(83089, 121839);	-- Sunstone Panther
i(89304, 129918);	-- Thundering August Cloud Serpent
i(85666, 124408);	-- Thundering Jade Cloud Serpent
i(90655, 132036);	-- Thundering Ruby Cloud Serpent
i(90712, 132119);	-- Violet Pandaren Phoenix
i(89390, 130137);	-- White Riding Goat
i(87775, 127165);	-- Yu'lei, Daughter of Jade
--- NYI ---
i(0, 128859);		-- zzOldDepleted-Kyparium Rocket
i(87785, 127180);	-- Albino Riding Crane
i(84728, 123160);	-- Crimson Riding Crane
i(87794, 127278);	-- Golden Water Strider
i(87793, 127274);	-- Jade Water Strider
i(87792, 127272);	-- Orange Water Strider
i(91016, 0);		-- Reins of the Great Red Dragon Turtle

-----------------
-- PATCH 5.1.0 --
-----------------
i(93168, 135416);	-- Grand Armored Gryphon
i(93169, 135418);	-- Grand Armored Wyvern
i(93385, 136163);	-- Grand Gryphon
i(93386, 136164);	-- Grand Wyvern
i(91802, 133023);	-- Jade Pandaren Kite
i(92724, 134573);	-- Swift Windsteed
--- NYI ---
i(0, 134854);		-- Cloud Mount

-----------------
-- PATCH 5.2.0 --
-----------------
i(94230, 138424);	-- Amber Primordial Direhorn
i(95341, 139595);	-- Armored Bloodwing
i(93662, 136400);	-- Armored Skyscreamer
i(94292, 138642);	-- Black Primal Raptor
i(94290, 138640);	-- Bone-White Primal Raptor
i(95059, 139448);	-- Clutch of Ji-Kun
i(94228, 138423);	-- Cobalt Primordial Direhorn
i(95565, 140250);	-- Crimson Primal Direhorn
i(0, 148972);		-- Dreadsteed [Green Fire]
i(0, 148970);		-- Felsteed [Green Fire]
i(93671, 136505);	-- Ghastly Charger
i(95564, 140249);	-- Golden Primal Direhorn
i(94293, 138643);	-- Green Primal Raptor
i(94231, 138426);	-- Jade Primordial Direhorn
i(95041, 139407);	-- Malevolent Gladiator's Cloud Serpent
i(94291, 138641);	-- Red Primal Raptor
i(94229, 138425);	-- Slate Primordial Direhorn
i(93666, 136471);	-- Spawn of Horridon
i(95057, 139442);	-- Thundering Cobalt Cloud Serpent

-----------------
-- PATCH 5.3.0 --
-----------------
i(98259, 142478);	-- Armored Blue Dragonhawk
i(98104, 142266);	-- Armored Red Dragonhawk
i(98405, 142641);	-- Brawler's Burly Mushan Beast
i(97989, 142878);	-- Enchanted Fey Dragon
i(98618, 142073);	-- Hearthsteed

-----------------
-- PATCH 5.4.0 --
-----------------
i(103638, 148428);	-- Ashhide Mushan Beast
i(104326, 148619);	-- Grievous Gladiator's Cloud Serpent
i(104253, 148417);	-- Kor'kron Juggernaut
i(104246, 148396);	-- Kor'kron War Wolf
i(104327, 148620);	-- Prideful Gladiator's Cloud Serpent
i(103630, 30174);	-- Riding Turtle
i(95416, 134359);	-- Sky Golem
i(104208, 148392);	-- Spawn of Galakras
i(102514, 146615);	-- Vicious Kaldorei Warsaber
i(102533, 146622);	-- Vicious Skeletal Warhorse
i(104269, 148476);	-- Thundering Onyx Cloud Serpent
i(104325, 148618);	-- Tyrannical Gladiator's Cloud Serpent
--- NYI ---
i(104011, 147595);	-- Stormcrow

-----------------
-- PATCH 5.4.1 --
-----------------
i(106246, 149801);	-- Emerald Hippogryph

-----------------
-- PATCH 5.4.2 --
-----------------
i(107951, 153489);	-- Iron Skyreaver

-----------------
-- PATCH 5.4.7 --
-----------------
i(109013, 155741);	-- Dread Raven

-----------------
-- PATCH 6.0.2 --
-----------------
i(116668, 171629);	-- Armored Frostboar
i(116781, 171838);	-- Armored Frostwolf
i(116665, 171626);	-- Armored Irontusk
i(116669, 171630);	-- Armored Razorback
i(116666, 171627);	-- Blacksteel Battleboar
i(116659, 171620);	-- Bloodhoof Bull
i(116775, 171832);	-- Breezestrider Stallion
i(116791, 171848);	-- Challenger's War Yeti
i(116789, 171846);	-- Champion's Treadblade
i(118515, 171847);	-- Cindermane Charger
i(115484, 170347);	-- Core Hound
i(115363, 169952);	-- Creeping Carpet
i(116672, 171634);	-- Domesticated Razorback
i(108883, 171844);	-- Dustmane Direwolf
i(116664, 171625);	-- Dusty Rockhide
i(118676, 175700);	-- Emerald Drake
i(116670, 171632);	-- Frostplains Battleboar
i(116794, 171851);	-- Garn Nighthowl
i(116779, 171836);	-- Garn Steelmaw
i(116673, 171635);	-- Giant Coldsnout
i(116383, 171436);	-- Gorestrider Gronnling
i(116674, 171636);	-- Great Greytusk
i(112327, 163025);	-- Grinning Reaver
i(116660, 171621);	-- Ironhoof Destroyer
i(116782, 171839);	-- Ironside Warwolf
i(116768, 171825);	-- Mosshide Riverwallow
i(116661, 171622);	-- Mottled Meadowstomper
i(116769, 171826);	-- Mudback Riverbeast
i(116776, 171833);	-- Pale Thorngrazer
i(116667, 171628);	-- Rocktusk Battleboar
i(116767, 171824);	-- Sapphire Riverbeast
i(116663, 171624);	-- Shadowhide Pearltusk
i(116772, 171829);	-- Shadowmane Charger
i(116786, 171843);	-- Smoky Direwolf
i(116771, 171828);	-- Solar Spirehawk
i(116773, 171830);	-- Swift Breezestrider
i(116785, 171842);	-- Swift Frostwolf
i(116792, 171849);	-- Sunhide Gronnling
i(116671, 171633);	-- Wild Goretusk
i(116656, 171617);	-- Trained Icehoof
i(116662, 171623);	-- Trained Meadowstomper
i(116676, 171638);	-- Trained Riverwallow
i(116675, 171637);	-- Trained Rocktusk
i(116774, 171831);	-- Trained Silverpelt
i(116784, 171841);	-- Trained Snarler
i(116658, 171619);	-- Tundra Icehoof
i(116777, 171834);	-- Vicious War Ram
i(116778, 171835);	-- Vicious War Raptor
i(112326, 163024);	-- Warforged Nightmare
i(116788, 171845);	-- Warlord's Deathwheel
i(116780, 171837);	-- Warsong Direfang
i(116655, 171616);	-- Witherhide Cliffstomper
--- NYI ---
i(0, 150926);		-- Draenor Chimera
i(116657, 171618);	-- Ancient Leatherhide

-----------------
-- PATCH 6.1.0 --
-----------------
i(122469, 180545);	-- Mystic Runesaber
i(120968, 179245);	-- Summon Chauffeur
i(122703, 179244);	-- Summon Chauffeur
i(121815, 179478);	-- Voidtalon of the Dark Star

-----------------
-- PATCH 6.2.0 --
-----------------
i(128481, 190690);	-- Bristling Hellboar
i(128311, 189364);	-- Coalfist Gronnling
i(123974, 183117);	-- Corrupted Dreadwing
i(128527, 190977);	-- Deathtusk Felboar [A]
i(128526, 190977);	-- Deathtusk Felboar [H]
i(123890, 182912);	-- Felsteel Annihilator
i(127140, 186305);	-- Infernal Direwolf
i(128277, 186828);	-- Primal Gladiator's Felblood Gronnling
i(128706, 191633);	-- Soaring Skyterror
i(124540, 185052);	-- Vicious War Kodo
i(124089, 183889);	-- Vicious War Mechanostrider
i(128282, 189044);	-- Warmongering Gladiator's Felblood Gronnling
i(128281, 189043);	-- Wild Gladiator's Felblood Gronnling
--- NYI ---
i(128480, 0);	-- Bristling Hellboar

-----------------
-- PATCH 6.2.1 --
-----------------
--- NYI ---
i(0, 194046);		-- Swift Spectral Rylak

-----------------
-- PATCH 6.2.2 --
-----------------
i(129923, 194464);	-- Eclipse Dragonhawk
i(128422, 189999);	-- Grove Warden
i(128425, 189998);	-- Illidari Felstalker
i(129922, 142910);	-- Ironbound Wraithcharger
i(128671, 191314);	-- Minion of Grumpus

-----------------
-- PATCH 6.2.3 --
-----------------
i(133543, 201098);	-- Infinite Timereaver

-----------------
-- PATCH 7.0.1 --
-----------------
i(0, 200175);		-- Felsaber

-----------------
-- PATCH 7.0.3 --
-----------------
i(141713, 227956);	-- Arcadian War Turtle
i(137570, 213115);	-- Bloodfang Widow
i(137579, 213164);	-- Brilliant Direbeak
i(138811, 214791);	-- Brinedeep Bottom-Feeder
i(141845, 227989);	-- Cruel Gladiator's Storm Dragon
i(141848, 227995);	-- Dominant Gladiator's Storm Dragon
i(138201, 223018);	-- Fathom Dweller
i(141844, 227988);	-- Fearless Gladiator's Storm Dragon
i(137574, 213134);	-- Felblaze Infernal
i(141846, 227991);	-- Ferocious Gladiator's Storm Dragon
i(141847, 227994);	-- Fierce Gladiator's Storm Dragon
i(137614, 213350);	-- Frostshard Infernal
i(129962, 213339);	-- Great Northern Elderhorn
i(141216, 193007);	-- Grove Defiler
i(137575, 171827);	-- Hellfire Infernal
i(141217, 225765);	-- Leyfeather Hippogryph
i(137573, 171850);	-- Llothien Prowler
i(138258, 215159);	-- Long-Forgotten Hippogryph
i(140500, 223814);	-- Mechanized Lumber Extractor
i(137577, 213158);	-- Predatory Bloodgazer
i(140408, 222240);	-- Prestigious Azure Courser
i(140228, 222202);	-- Prestigious Bronze Courser
i(140232, 222237);	-- Prestigious Forest Courser
i(140233, 222238);	-- Prestigious Ivory Courser
i(140407, 222241);	-- Prestigious Midnight Courser
i(140230, 222236);	-- Prestigious Royal Courser
i(129280, 193695);	-- Prestigious War Steed
i(138387, 215558);	-- Ratstallion
i(137578, 213163);	-- Snowfeather Hunter
i(131734, 196681);	-- Spirit of Eche'ro
i(137686, 213209);	-- Steelbound Devourer
i(140353, 223341);	-- Vicious Gilnean Warhorse
i(140350, 223578);	-- Vicious War Elekk
i(140354, 223354);	-- Vicious War Trike
i(140348, 223363);	-- Vicious Warstrider
i(141843, 227986);	-- Vindictive Gladiator's Storm Dragon
i(137580, 213165);	-- Viridian Sharptalon
--- NYI ---
i(137615, 213349);	-- Flarecore Infernal [TODO: Might become TRADING POST]
i(138386, 0);		-- Fel Bat (Test)
i(129744, 0);		-- Iron Warhorse

-----------------
-- PATCH 7.1.0 --
-----------------
i(142436, 230987);	-- Arcanist's Manasaber
i(142403, 230844);	-- Brawler's Burly Basilisk
i(142398, 228919);	-- Darkwater Skate
i(142369, 230401);	-- Ivory Hawkstrider
i(142236, 229499);	-- Midnight
i(143864, 204166);	-- Prestigious War Wolf
i(142552, 231428);	-- Smoldering Ember Wyrm

-----------------
-- PATCH 7.2.0 --
-----------------
i(143643, 232519);	-- Abyss Worm
i(0, 231437);		-- Archdruid's Lunarwing Form
i(0, 241857);		-- Archdruid's Lunarwing Form
i(0, 229376);		-- Archmage's Prismatic Disc
i(0, 229385);		-- Ban-lu, Grandmaster's Companion
i(0, 229388);		-- Battlelord's Bloodthirsty War Wyrm
i(147806, 242881);	-- Cloudwing Hippogryph
i(0, 229387);		-- Deathlord's Vilebrood Vanquisher
i(0, 231442);		-- Farseer's Raging Tempest
i(0, 229377);		-- High Priest's Lightsworn Seeker
i(0, 231435);		-- Highlord's Golden Charger
i(143505, 231589);	-- Highlord's Valorous Charger
i(143503, 231587);	-- Highlord's Vengeful Charger
i(143504, 231588);	-- Highlord's Vigilant Charger
i(147807, 242874);	-- Highmountain Elderhorn
i(142228, 229439);	-- Huntmaster's Dire Wolfhawk
i(142226, 229438);	-- Huntmaster's Fierce Wolfhawk
i(0, 229386);		-- Huntmaster's Loyal Wolfhawk
i(143764, 233364);	-- Leywoven Flying Carpet
i(142233, 238454);	-- Netherlord's Accursed Wrathsteed
i(143637, 238452);	-- Netherlord's Brimstone Wrathsteed
i(0, 232412);		-- Netherlord's Chaotic Wrathsteed
i(143631, 232405);	-- Primal Flamesaber
i(147835, 243025);	-- Riddler's Mind-Worm
i(143491, 231524);	-- Shadowblade's Baneful Omen
i(143490, 231525);	-- Shadowblade's Crimson Omen
i(143492, 231523);	-- Shadowblade's Lethal Omen
i(0, 231434);		-- Shadowblade's Murderous Omen
i(0, 229417);		-- Slayer's Felbroken Shrieker
i(147805, 242882);	-- Valarjar Stormwing
i(142234, 229487);	-- Vicious War Bear [A]
i(142235, 229486);	-- Vicious War Bear [H]
i(142237, 229512);	-- Vicious War Lion
i(142437, 230988);	-- Vicious War Scorpion
i(143648, 232523);	-- Vicious War Turtle [A]
i(143649, 232525);	-- Vicious War Turtle [H]
i(147804, 242875);	-- Wild Dreamrunner
--- NYI ---
i(0, 239363);		-- Swift Spectral Hippogryph
i(143638, 0);		-- Archdruid's Lunarwing Form
i(142225, 0);		-- Ban-lu, Grandmaster's Companion
i(142232, 0);		-- Battlelord's Bloodthirsty War Wyrm
i(142231, 0);		-- Deathlord's Vilebrood Vanquisher
i(143489, 0);		-- Farseer's Raging Tempest
i(142224, 0);		-- High Priest's Lightsworn Seeker
i(143502, 0);		-- Highlord's Golden Charger
i(142227, 0);		-- Huntmaster's Loyal Wolfhawk
i(143752, 0);		-- Mag'har Direwolf
i(143493, 0);		-- Shadowblade's Murderous Omen

-----------------
-- PATCH 7.3.0 --
-----------------
i(152904, 253662);	-- Acid Belcher
i(152794, 253004);	-- Amethyst Ruinstrider
i(152816, 253088);	-- Antoran Charhound
i(152815, 253087);	-- Antoran Gloomhound
i(153044, 254259);	-- Avenging Felcrusher
i(152795, 253005);	-- Beryl Ruinstrider
i(152903, 253660);	-- Biletooth Gnasher
i(153041, 254260);	-- Bleakhoof Ruinstrider
i(153043, 254258);	-- Blessed Felcrusher
i(152797, 253007);	-- Cerulean Ruinstrider
i(152905, 253661);	-- Crimson Slavermaw
i(153485, 247448);	-- Darkmoon Dirigible
i(152843, 235764);	-- Darkspore Mana Ray
i(152841, 253108);	-- Felglow Mana Ray
i(153042, 254069);	-- Glorious Felcrusher
i(152844, 253107);	-- Lambent Mana Ray
i(152788, 239013);	-- Lightforged Warframe
i(151623, 247402);	-- Lucid Nightmare
i(147901, 243512);	-- Luminous Starseeker
i(152814, 253058);	-- Maddened Chaosrunner
i(151617, 245725);	-- Orgrimmar Interceptor
i(152912, 253711);	-- Pond Nettle
i(152793, 253006);	-- Russet Ruinstrider
i(151618, 245723);	-- Stormwind Skychaser
i(152791, 242305);	-- Sable Ruinstrider
i(152840, 253109);	-- Scintillating Mana Ray
i(152789, 243651);	-- Shackled Ur'zul
i(152796, 253008);	-- Umber Ruinstrider
i(152842, 253106);	-- Vibrant Mana Ray
i(152869, 242897);	-- Vicious War Fox [H]
i(152870, 242896);	-- Vicious War Fox [A]
i(152790, 243652);	-- Vile Fiend
i(152901, 253639);	-- Violet Spellwing

-----------------
-- PATCH 7.3.2 --
-----------------
i(153493, 243201);	-- Demonic Gladiator's Storm Dragon

-----------------
-- PATCH 7.3.5 --
-----------------
i(0, 239770);		-- Black Qiraji War Tank
i(151626, 239766);	-- Blue Qiraji War Tank
i(153540, 255696);	-- Gilded Ravasaur
i(155662, 258060);	-- Highmountain Thunderhoof
i(155656, 258022);	-- Lightforged Felcrusher
i(156487, 258845);	-- Nightborne Manasaber
i(151625, 239767);	-- Red Qiraji War Tank
i(153539, 255695);	-- Seabraid Stallion
i(156564, 259395);	-- Shu-Zen, the Divine Sentinel
i(156486, 259202);	-- Starcursed Voidstrider

-----------------
-- PATCH 8.0.1 --
-----------------
i(161911, 259213);	-- Admiralty Stallion
i(161773, 237287);	-- Alabaster Hyena
i(163216, 250735);	-- Bloodgorged Crawg
i(163578, 279457);	-- Broken Highland Mustang
i(161666, 275838);	-- Captured Swampstalker
i(161665, 275837);	-- Cobalt Pterrordax
i(163577, 279454);	-- Conqueror's Scythemaw
i(163583, 279467);	-- Craghorn Chasm-Leaper
i(161912, 260172);	-- Dapple Gray
i(161331, 271646);	-- Dark Iron Core Hound
i(156879, 262022);	-- Dread Gladiator's Proto-Drake
i(163576, 237286);	-- Dune Scavenger
i(161908, 275859);	-- Dusky Waycrest Gryphon
i(161774, 275841);	-- Expedition Bloodswarmer
i(163981, 280729);	-- Frenzied Feltalon
i(163131, 278803);	-- Great Sea Ray
i(163183, 259740);	-- Green Marsh Hopper
i(163573, 260175);	-- Goldenmane
i(163579, 279456);	-- Highland Mustang
i(159146, 267270);	-- Kua'fon
i(163575, 243795);	-- Leaping Veinseeker
i(163646, 279608);	-- Lil' Donkey
i(161330, 267274);	-- Mag'har Direwolf
i(161134, 261437);	-- Mecha-Mogul Mk2
i(163042, 264058);	-- Mighty Caravan Brutosaur
i(161479, 275623);	-- Nazjatar Blood Serpent
i(156881, 262024);	-- Notorious Gladiator's Proto-Drake
i(161215, 239049);	-- Obsidian Krolusk
i(163589, 279474);	-- Palehide Direhorn
i(164250, 281044);	-- Prestigious Bloodforged Courser
i(161879, 275868);	-- Proudmoore Sea Scout
i(163982, 280730);	-- Pureheart Courser
i(163582, 279469);	-- Qinsho's Eternal Hound
i(156880, 262023);	-- Sinister Gladiator's Proto-Drake
i(163645, 279611);	-- Skullripper
i(161910, 260173);	-- Smoky Charger
i(161664, 244712);	-- Spectral Pterrorwing
i(163586, 254811);	-- Squawks
i(161909, 275866);	-- Stormsong Coastwatcher
i(159842, 254813);	-- Sharkbait
i(163585, 278979);	-- Surf Jelly
i(163644, 279569);	-- Swift Albino Raptor
i(163127, 274610);	-- Teldrassil Hippogryph
i(163574, 260174);	-- Terrified Pack Mule
i(160589, 272770);	-- The Dreadwake
i(156798, 261395);	-- The Hivemind
i(159921, 266058);	-- Tomb Stalker
i(163584, 279466);	-- Twilight Avenger
i(163128, 272472);	-- Undercity Plaguebat
i(160829, 273541);	-- Underrot Crawg
i(163122, 261433);	-- Vicious War Basilisk [A]
i(163121, 261434);	-- Vicious War Basilisk [H]
i(163124, 270560);	-- Vicious War Clefthoof
i(163123, 272481);	-- Vicious War Riverbeast
i(161667, 275840);	-- Voldunai Dunescraper
i(163706, 279868);	-- Witherbark Direwing
i(157870, 263707);	-- Zandalari Direhorn
--- NYI ---
i(0, 261963);		-- Ebon Krolusk
i(0, 237285);		-- Hyena Mount White (PH)
i(0, 260176);		-- Kul Tiras Horse (PH)
i(0, 256121);		-- PH Goblin Hovercraft (Blue)
i(0, 256125);		-- PH Goblin Hovercraft (Green)
i(0, 256124);		-- PH Goblin Hovercraft (Red)
i(156885, 262028);	-- Gold Gladiator's Proto-Drake
i(156883, 262026);	-- Green Gladiator's Proto-Drake
i(156882, 262025);	-- Pale Gladiator's Proto-Drake
i(163063, 278656);	-- Spectral Phoenix
i(163188, 0);		-- Surf Jelly

-----------------
-- PATCH 8.1.0 --
-----------------
i(166432, 288495);	-- Ashenvale Chimaera
i(166465, 288736);	-- Azureshell Krolusk
i(166428, 288438);	-- Blackpaw
i(166468, 288720);	-- Bloodgorged Hunter
i(166469, 288714);	-- Bloodthirsty Dreadwing
i(166442, 288587);	-- Blue Marsh Hopper
i(166724, 289639);	-- Bruce
i(166438, 288438);	-- Caged Bear
i(166437, 288505);	-- Captured Kaldorei Nightsaber
i(166434, 288503);	-- Captured Umber Nightsaber
i(0, 270562);		-- Darkforge Ram
i(0, 270564);		-- Dawnforge Ram
i(166539, 289101);	-- Dazar'alor Windreaver
i(166433, 288499);	-- Frightened Kodo
i(166518, 289083);	-- G.M.O.D.
i(166705, 289555);	-- Glacial Tidestorm
i(166774, 290134);	-- Hogrus, Swine of Good Fortune
i(166467, 288721);	-- Island Thunderscale
i(166435, 288505);	-- Kaldorei Nightsaber
i(164571, 281554);	-- Meat Wagon
i(166463, 288740);	-- Priestess' Moonsaber
i(166466, 288722);	-- Risen Mare
i(166464, 288735);	-- Rubyshell Krolusk
i(166471, 288711);	-- Saltwater Seahorse
i(166745, 266925);	-- Siltwing Albatross
i(166470, 288712);	-- Stonehide Elderhorn
i(166803, 288503);	-- Umber Nightsaber
i(165020, 281890);	-- Vicious Black Bonesteed
i(165019, 281887);	-- Vicious Black Warsaber
i(166775, 290133);	-- Vulpine Familiar
i(166443, 288589);	-- Yellow Marsh Hopper
--- NYI ---
i(166417, 237288);	-- Reins of the Onyx War Hyena

-----------------
-- PATCH 8.1.5 --
-----------------
i(167894, 294568);	-- Beastlord's Irontusk
i(167895, 294569);	-- Beastlord's Warwolf
i(168055, 295387);	-- Bloodflank Charger
i(0, 290608);		-- Crusader's Direhorn
i(168056, 295386);	-- Ironclad Frostclaw
i(164762, 282682);	-- Kul Tiran Charger

-----------------
-- PATCH 8.2.0 --
-----------------
i(168830, 290718);	-- Aerial Unit R-21/X
i(167167, 292407);	-- Ankoan Waveray
i(167171, 292419);	-- Azshari Bloatray
i(168408, 297560);	-- Child of Torcali
i(169202, 300153);	-- Crimson Tidestallion
i(169200, 300147);	-- Deepcoral Snapdragon
i(169201, 300150);	-- Fabious
i(169203, 300151);	-- Inkscale Deepseeker
i(168370, 297157);	-- Junkheap Drifter
i(168329, 296788);	-- Mechacycle Model W
i(168826, 299158);	-- Mechagon Peacekeeper
i(169198, 294038);	-- Royal Snapdragon
i(168829, 299170);	-- Rustbolt Resistor
i(168823, 291492);	-- Rusty Mechanocrawler
i(168827, 299159);	-- Scrapforged Mechaspider
i(169163, 300149);	-- Silent Glider
i(169194, 294039);	-- Snapback Scuttler
i(169199, 300146);	-- Snapdragon Kelpstalker
i(166776, 290132);	-- Sylverian Dreamer
i(167170, 291538);	-- Unshackled Waveray
i(169162, 290328);	-- Wonderwing 2.0
i(167751, 294143);	-- X-995 Mechanocat
i(153594, 256123);	-- Xiwyllag ATV
--- NYI ---
i(0, 301841);		-- Kua'fon
i(0, 302796);		-- Swift Spectral Armored Gryphon
i(0, 302794);		-- Swift Spectral Fathom Ray
i(0, 302795);		-- Swift Spectral Magnetocraft
i(0, 302797);		-- Swift Spectral Pterrordax
i(168673, 0);		-- Keys to the Silver Mono-Wheel (No mount in yet)

-----------------
-- PATCH 8.2.5 --
-----------------
-- #if AFTER 10.1.5
i(207964, 302361);	-- Alabaster Stormtalon
i(207963, 302362);	-- Alabaster Thunderwing
-- #else
i(0, 302361);		-- Alabaster Stormtalon
i(0, 302362);		-- Alabaster Thunderwing
-- #endif
i(173297, 307263);	-- Explorer's Dunetrekker
i(173299, 307256);	-- Explorer's Jungle Hopper
i(172023, 306421);	-- Frostwolf Snarler
i(170069, 259741);	-- Honeyback Harvester
i(172012, 294197);	-- Obsidian Worldbreaker
i(172022, 308250);	-- Stormpike Battle Ram

-----------------
-- PATCH 8.3.0 --
-----------------
i(174836, 316637);	-- Awakened Mindborer
i(174654, 305182);	-- Black Serpent of N'Zoth
i(156884, 262027);	-- Corrupted Gladiator Proto Drake
i(174066, 306423);	-- Caravan Hyena
i(173887, 312751);	-- Clutch of Ha-Li
i(174641, 315847);	-- Drake of the Four Winds
i(174860, 316493);	-- Elusive Quickhoof
i(0, 307932);		-- Ensorcelled Everwyrm
i(174752, 315014);	-- Ivory Cloud Serpent
i(174653, 315987);	-- Mail Muncher
i(174769, 316337);	-- Malevolent Drone
i(174067, 305592);	-- Mechagon Mechanostrider
i(174842, 298367);	-- Mollie
i(174872, 308814);	-- Ny'alotha Allseer
i(174649, 315427);	-- Rajani Warserpent
i(174841, 316722);	-- Ren's Stalwart Hound
i(166436, 288506);	-- Sandy Nightsaber [A]
i(174373, 288506);	-- Sandy Nightsaber [H]
i(174771, 316339);	-- Shadowbarb Drone
i(174859, 316802);	-- Springfur Alpaca
i(0, 308078);		-- Squeakers, the Trickster
i(174862, 302143);	-- Uncorrupted Voidwing
i(173713, 281889);	-- Vicious White Bonesteed
i(173714, 281888);	-- Vicious White Warsaber
i(174753, 316275);	-- Waste Marauder
i(174754, 316276);	-- Wastewander Skyterror
i(174770, 316340);	-- Wicked Swarmer
i(174861, 316343);	-- Wriggling Parasite
i(174840, 316723);	-- Xinlao

-----------------
-- PATCH 8.3.7 --
-----------------
i(0, 326390);		-- Steamscale Incinerator

-----------------
-- PATCH 9.0.1 --
-----------------
--- NYI ---
i(0, 312772);		-- Gilded Prowler
i(0, 332257);		-- Gorm (Yellow)
i(0, 332908);		-- PH Devourer Mite (Green)
i(0, 312758);		-- PH Epic Phalynx
i(0, 312756);		-- PH Phalynx
i(182083, 332482);	-- Bonecleaver's Skullboar
i(181817, 318052);	-- Deathbringer's Flayedwing
i(184035, 0);		-- Silessa's Harness

-----------------
-- PATCH 9.0.2 --
-----------------
i(183800, 342666);	-- Amber Ardenmoth
i(182650, 339632);	-- Arboreal Gulper
i(181815, 332466);	-- Armored Bonehoof Tauralus
i(181820, 332467);	-- Armored Chosen Tauralus
i(181821, 332464);	-- Armored Plaguerot Tauralus
i(181822, 332462);	-- Armored War-Bred Tauralus
i(183741, 342335);	-- Ascended Skymane
i(183798, 333023);	-- Battle Gargon Silessa
i(180948, 312754);	-- Battle Gargon Vrednic
i(184062, 344228);	-- Battle-Bound Warhound
i(182085, 332478);	-- Blisterback Bloodtusk
i(182075, 332457);	-- Bonehoof Tauralus
i(182078, 336041);	-- Bonesewn Fleshroc
i(184160, 344574);	-- Bulbous Necroray
i(181818, 336038);	-- Callow Flayedwing
i(183617, 312776);	-- Chittering Animite
i(182074, 332460);	-- Chosen Tauralus
i(182081, 327405);	-- Colossal Slaughterclaw
i(184166, 344578);	-- Corridor Creeper
i(183518, 341639);	-- Court Sinrunner
i(180945, 332932);	-- Crypt Gargon
i(183052, 312763);	-- Darkwarren Hardshell
i(181317, 336064);	-- Dauntless Duskrunner
i(182209, 332949);	-- Desire's Battle Gargon
i(180263, 312759);	-- Dreamlight Runestag
i(180729, 332256);	-- Duskflutter Ardenmoth
i(180721, 312761);	-- Enchanted Dreamlight Runestag
i(180722, 332246);	-- Enchanted Shadeleaf Runestag
i(180723, 332247);	-- Enchanted Wakener's Runestag
i(180724, 332248);	-- Enchanted Winterborn Runestag
i(180582, 332905);	-- Endmire Flyer
i(180766, 334406);	-- Eternal Phalynx of Courage
i(180768, 334409);	-- Eternal Phalynx of Humility
i(180767, 334408);	-- Eternal Phalynx of Loyalty
i(180765, 334403);	-- Eternal Phalynx of Purity
i(183740, 342334);	-- Gilded Prowler
i(182084, 332480);	-- Gorespine
i(182332, 333021);	-- Gravestone Battle Gargon
i(181300, 336039);	-- Gruesome Flayedwing
i(183618, 341776);	-- Highwind Darkmane
i(180581, 312753);	-- Hopecrusher Gargon
i(180461, 332882);	-- Horrid Dredwing
i(182079, 336042);	-- Hulking Deathroc
i(184161, 344576);	-- Infested Necroray
i(182954, 332923);	-- Inquisition Gargon
i(182589, 333027);	-- Loyal Gorger
i(0, 308087);		-- Lucky Yun
i(182082, 332484);	-- Lurid Bloodtusk
i(181819, 336036);	-- Marrowfang
i(184167, 312762);	-- Mawsworn Soulhunter
i(180726, 334365);	-- Pale Acidmaw
i(184162, 344575);	-- Pestilent Necroray
i(180763, 334391);	-- Phalynx of Courage
i(180762, 334386);	-- Phalynx of Humility
i(180761, 334382);	-- Phalynx of Loyalty
i(180764, 334398);	-- Phalynx of Purity
i(182076, 332456);	-- Plaguerot Tauralus
i(182080, 336045);	-- Predatory Plagueroc
i(182596, 332903);	-- Rampart Screecher
i(180413, 332243);	-- Shadeleaf Runestag
i(180727, 332252);	-- Shimmermist Runner
i(180748, 318051);	-- Silky Shimmermoth
i(0, 346141);		-- Slime Serpent
i(181316, 312777);	-- Silvertip Dredwing
i(180772, 334433);	-- Silverwind Larion
i(183715, 332927);	-- Sinfall Gargon
i(183937, 332400);	-- Sinful Gladiator's Soul Eater
i(182614, 339588);	-- Sinrunner Blanchy
i(182717, 340068);	-- Sintouched Deathwalker
i(0, 341821);		-- Snowstorm
i(180725, 334364);	-- Spinemaw Gladechewer
i(180773, 312765);	-- Sundancer
i(180728, 312767);	-- Swift Gloomhoof
i(183053, 340503);	-- Umbral Scythehorn
i(183801, 342667);	-- Vibrant Flutterwing
i(184013, 327408);	-- Vicious War Spider [H]
i(184014, 327407);	-- Vicious War Spider [A]
i(184183, 344659);	-- Voracious Gorger
i(180414, 332244);	-- Wakener's Runestag
i(182077, 332455);	-- War-Bred Tauralus
i(183615, 341766);	-- Warstitched Darkhound
i(180730, 334366);	-- Wild Glimmerfur Prowler
i(180731, 334352);	-- Wildseed Cradle
i(180415, 332245);	-- Winterborn Runestag

-----------------
-- PATCH 9.0.5 --
-----------------
i(184168, 344577);	-- Bound Shadehound
i(0, 347812);		-- Sapphire Skyblazer
i(0, 346136);		-- Viridian Phase-Hunter
i(0, 348162);		-- Wandering Ancient
--- NYI ---
i(0, 347813);		-- Fireplume Phoenix

-----------------
-- PATCH 9.1.0 --
-----------------
i(186647, 354356);	-- Amber Shardhide
i(186493, 353856);	-- Ardenweald Wilderling
i(186485, 353880);	-- Ascendant's Aquilon
i(186494, 353857);	-- Autumnal Wilderling
i(186480, 343550);	-- Battle-Hardened Aquilon
i(186490, 353885);	-- Battlefield Swarmer
i(186644, 347810);	-- Beryl Shardhide
i(186638, 353263);	-- Cartel Master's Gearglider
i(186645, 354357);	-- Crimson Shardhide
i(186646, 354358);	-- Darkmaul
i(186651, 354361);	-- Dusklight Razorwing
i(186482, 353875);	-- Elysian Aquilon
i(186659, 354353);	-- Fallen Charger
i(186649, 354359);	-- Fierce Razorwing
i(186483, 353877);	-- Forsworn Aquilon
i(186652, 354360);	-- Garnet Razorwing
i(185973, 352309);	-- Hand of Bahmethra
i(186653, 339957);	-- Hand of Hrestimorak
i(186713, 354354);	-- Hand of Nilganihmaht
i(186654, 354355);	-- Hand of Salaranga
i(185996, 332904);	-- Harvester's Dredwing
i(186489, 347250);	-- Lord of the Corpseflies
i(186643, 354362);	-- Maelie The Wanderer
i(186487, 353883);	-- Maldraxxian Corpsefly
i(186479, 215545);	-- Mastercraft Gravewing
i(186655, 339956);	-- Mawsworn Charger
i(186478, 353866);	-- Obsidian Gravewing
i(186477, 353873);	-- Pale Gravewing
i(187183, 356501);	-- Rampaging Mauler
i(186488, 353884);	-- Regal Corpsefly
i(186656, 354351);	-- Sanctum Gloomcharger
i(0, 356488);		-- Sarge's Tale
i(186476, 353872);	-- Sinfall Gravewing
i(186648, 347251);	-- Soaring Razorwing
i(186657, 354352);	-- Soulbound Gloomcharger
i(187525, 358319);	-- Soultwisted Deathwalker
i(186492, 353859);	-- Summer Wilderling
i(0, 317177);		-- Sunwarmed Furline
i(186641, 347536);	-- Tamed Mauler
i(186637, 346554);	-- Tazavesh Gearglider
i(186177, 353036);	-- Unchained Gladiator's Soul Eater
i(186103, 352742);	-- Undying Darkhound
i(186642, 351195);	-- Vengeance
i(186178, 348770);	-- Vicious War Gorm [A]
i(186179, 348769);	-- Vicious War Gorm [H]
i(186000, 352441);	-- Wild Hunt Legsplitter
i(186495, 353858);	-- Winter Wilderling
--- NYI ---
i(186639, 353264);	-- Pilfered Gearglider
i(186640, 353265);	-- Silver Gearglide
i(186491, 353860);	-- Spring Wilderling
i(187412, 0);		-- Shardhide Ka-Sha

-----------------
-- PATCH 9.1.5 --
-----------------
i(186469, 62048);	-- Illidari Doomhawk
i(0, 363613);		-- Lightforged Ruinstrider
i(188674, 359318);	-- Soaring Spelltome
i(187595, 359013);	-- Val'sharah Hippogryph
i(0, 359317);		-- Wen Lo, the River's Edge
--- NYI ---
i(0, 350529);		-- NAK's Test Mount [DNT]

-----------------
-- PATCH 9.2.0 --
-----------------
i(187632, 359232);	-- Adorned Vombata
i(187640, 359276);	-- Anointed Protostag
i(187670, 359376);	-- Bronze Helicid
i(187663, 359364);	-- Bronzewing Vespoid
i(187665, 359366);	-- Buzz
i(190771, 359545);	-- Carcinized Zerethsteed
i(188696, 363136);	-- Colossal Ebonclaw Mawrat
i(190765, 368105);	-- Colossal Plaguespew Mawrat
i(188736, 363297);	-- Colossal Soulshredder Mawrat
i(188700, 363178);	-- Colossal Umbrahide Mawrat
i(190766, 368128);	-- Colossal Wraithbound Mawrat
i(189507, 365559);	-- Cosmic Gladiator's Soul Eater
i(187673, 359381);	-- Cryptic Aurelid
i(187630, 359230);	-- Curious Crystalsniffer
i(187631, 359231);	-- Darkened Vombata
i(187638, 359278);	-- Deathrunner
i(187676, 342680);	-- Deepstar Aurelid
i(187666, 342668);	-- Desertwing Hunter
i(187664, 359367);	-- Forged Spiteflyer
i(187677, 359401);	-- Genesis Crawler
i(187683, 359413);	-- Goldplate Bufonid
i(190580, 367673);	-- Heartbond Lupine
i(187629, 359229);	-- Heartlight Vombata
i(187679, 359403);	-- Ineffable Skitterer
i(187667, 359372);	-- Mawdapted Raptora
i(187639, 342671);	-- Pale Regal Cervid
i(188809, 363703);	-- Prototype Leaper
i(187668, 359373);	-- Raptora Swooper
i(188808, 363701);	-- Patient Bufonid
i(188810, 363706);	-- Russet Bufonid
i(187672, 359378);	-- Scarlet Helicid
i(187675, 359379);	-- Shimmering Aurelid
i(187641, 359277);	-- Sundered Zerethsteed
i(187669, 346719);	-- Serenade
i(187678, 359402);	-- Tarachnid Creeper
i(187671, 359377);	-- Unsuccessful Prototype Fleetpod
i(187681, 347256);	-- Vicious War Croaker [A]
i(187680, 347255);	-- Vicious War Croaker [H]
i(187644, 349824);	-- Vicious Warstalker [A]
i(187642, 349823);	-- Vicious Warstalker [H]
i(187660, 342678);	-- Vespoid Flutterer
i(187682, 359407);	-- Wastewarped Deathwalker
i(190768, 368158);	-- Zereth Overseer
--- NYI ---
i(0, 356802);		-- Holy Lightstrider

-----------------
-- PATCH 9.2.5 --
-----------------
i(191566, 370620);	-- Elusive Emerald Hawkstrider
i(191290, 370346);	-- Eternal Gladiator's Soul Eater
i(191123, 369666);	-- Grimhowl
i(190170, 366791);	-- Jigglesworth Sr.
i(190581, 367676);	-- Nether-Gorged Greatwyrm
i(192557, 334482);	-- Restoration Deathwalker
i(0, 359843);		-- Tangled Dreamweaver
--- NYI ---
i(0, 367190);		-- [DND] Test Mount JZB

-----------------
-- PATCH 9.2.7 --
-----------------
i(0, 386452);		-- Frostbrood Proto-Wyrm
i(0, 370770);		-- Tuskarr Shoreglider

------------------
-- PATCH 10.0.0 --
------------------
i(0, 315132);		-- Gargantuan Grrloc
i(0, 381529);		-- Telix the Stormhorn
--- NYI ---
i(0, 371571);		-- Dragon Isles Drake Model Test
i(0, 372995);		-- Swift Spectral Drake
i(0, 376909);		-- [PH] Blue Armored River Otter
i(0, 374181);		-- [PH] Mammoth V2 Blue
i(0, 387948);		-- [PH] Wind Proto-Drake
i(0, 351404);		-- PH Mammoth V2 Lava
i(0, 385767);		-- PH White Slyvern
i(0, 385771);		-- PH Yellow Slyvern
i(194722, 377849);	-- Carrier Yeti
i(198821, 359408);	-- Divine Kiss of Ohn'ahra
i(192804, 374263);	-- Restless Hornstrider
i(198823, 385253);	-- [PH] Brown Wind Eagle
i(192787, 351403);	-- [PH] Mammoth V2 Dark
i(192771, 352927);	-- [PH] Water Salamander Blue
i(192773, 374093);	-- [PH] Water Salamander Orange
i(192748, 373913);	-- PH Moose Bull Brown
i(192781, 374140);	-- PH Lava Slug Blue
i(192778, 350220);	-- PH Lava Slug Orange
i(192780, 350220);	-- PH Lava Slug Orange [Item: [PH] Lava Snail Orange]
i(192782, 374142);	-- PH Lava Slug Yellow
i(192802, 374258);	-- PH Primal Tallstrider Black
i(192803, 374259);	-- PH Primal Tallstrider Red
i(192801, 374255);	-- PH Primal Tallstrider White
i(192793, 374200);	-- PH Thunder Lizard Black
i(192794, 374201);	-- PH Thunder Lizard Blue
i(194106, 0);		-- Highland Drake
i(192770, 0);		-- Noble Elderhorn
i(192789, 0);		-- [PH] Mammoth V2 Gray

------------------
-- PATCH 10.0.2 --
------------------
i(191114, 369476);	-- Amalgam of Rage
i(198809, 385131);	-- Armored Vorquin Leystrider
i(192762, 374034);	-- Azure Skitterfly
i(201720, 394219);	-- Bronze Vorquin
i(198872, 376875);	-- Brown Scouting Ottuk
i(201426, 376910);	-- Brown War Ottuk
i(194521, 368901);	-- Cliffside Wylderdrake
i(202086, 377071);	-- Crimson Gladiator's Drake
i(201702, 394216);	-- Crimson Vorquin
i(0, 395644);		-- Divine Kiss of Ohn'ahra
i(198808, 384963);	-- Guardian Vorquin
i(199412, 387231);	-- Hailstorm Armoredon
i(194705, 360954);	-- Highland Drake
i(198871, 359409);	-- Iskaara Trader's Ottuk
i(198873, 376879);	-- Ivory Trader's Ottuk
i(0, 369451);		-- Jade, Bright Foreseer
i(201440, 359622);	-- Liberated Slyvern
i(192799, 374247);	-- Lizi, Thunderspine Tramper
i(192601, 373859);	-- Loyal Magmammoth
i(192777, 350219);	-- Magmashell
i(198811, 385115);	-- Majestic Armored Vorquin
i(201719, 394220);	-- Obsidian Vorquin
i(198654, 376912);	-- Otterworldly Ottuk Carrier
i(198870, 376873);	-- Otto
i(192791, 374196);	-- Plainswalker Bearer
i(192806, 374275);	-- Raging Magmammoth
i(194034, 368896);	-- Renewed Proto-Drake
i(201704, 394218);	-- Sapphire Vorquin
i(192786, 374162);	-- Scrappy Worldsnail
i(192784, 374155);	-- Shellack
i(192775, 374098);	-- Stormhide Salamanther
i(198810, 385134);	-- Swift Armored Vorquin
i(192761, 374032);	-- Tamed Skitterfly
i(201454, 385738);	-- Temperamental Skyclaw
i(192764, 374048);	-- Verdant Skitterfly
i(201789, 394737);	-- Vicious Sabertooth [A]
i(201788, 394738);	-- Vicious Sabertooth [H]
i(194549, 368899);	-- Windborne Velocidrake
i(200118, 376880);	-- Yellow Scouting Ottuk
i(201425, 376913);	-- Yellow War Ottuk
i(198825, 385266);	-- Zenet Hatchling

------------------
-- PATCH 10.0.5 --
------------------
i(190231, 366962);	-- Ash'adar, Harbinger of Dawn
i(192800, 352926);	-- Skyskin Hornstrider
--- NYI ---
i(0, 369480);		-- Cerulean Marsh Hopper
i(190168, 366789);	-- Crusty Crawler
i(203226, 399708);	-- Stormfused Salamanther

------------------
-- PATCH 10.0.7 --
------------------
i(192772, 374090);	-- Ancient Salamanther
i(192785, 374157);	-- Gooey Snailemental
i(189978, 366647);	-- Magenta Cloud Serpent
i(192790, 374194);	-- Mossy Mammoth
i(204382, 349935);	-- Noble Bruffalon
i(204091, 400733);	-- Rocket Shredder 9001
i(190613, 367826);	-- Savage Green Battle Turtle

------------------
-- PATCH 10.1.0 --
------------------
i(205155, 408313);	-- Big Slick in the City
i(205209, 408653);	-- Boulder Hauler
i(205204, 408651);	-- Cataloged Shalewing
i(205203, 408647);	-- Cobalt Shalewing
i(206027, 411565);	-- Felcrystal Scorpion
i(206156, 412088);	-- Grotto Netherwing Drake
i(205197, 408627);	-- Igneous Shalewing
i(204798, 406637);	-- Inferno Armoredon
i(205207, 408655);	-- Morsel Sniffer
i(205233, 408977);	-- Obsidian Gladiator's Slitherdrake
i(190169, 366790);	-- Quawks
i(206976, 414986);	-- Royal Swarmer
i(192779, 374138);	-- Seething Slug
i(205205, 408649);	-- Shadowflame Shalewing
i(191838, 371176);	-- Subterranean Magmammoth
i(206162, 407555);	-- Tarecgosa's Visage
i(205246, 409034);	-- Vicious War Snail [A]
i(205245, 409032);	-- Vicious War Snail [H]
i(204361, 368893);	-- Winding Slitherdrake
i(206167, 397406);	-- Wonderous Wavewhisker

------------------
-- PATCH 10.1.5 --
------------------
i(207821, 417245);	-- Ancestral Clefthoof
i(190636, 367875);	-- Armored Siege Kodo
i(206676, 414326);	-- Felstorm Dragon
i(206675, 414324);	-- Gold-Toed Albatross
i(206567, 413827);	-- Harbor Gryphon
i(208152, 418078);	-- Pattie
i(206679, 414328);	-- Perfected Juggernaut
i(206674, 414323);	-- Ravenous Black Gryphon
i(207083, 414323);	-- Ravenous Black Gryphon
i(206566, 413825);	-- Scarlet Pterrordax
i(206680, 414334);	-- Scourgebound Vanquisher
i(206678, 414327);	-- Sulfur Hound
i(206585, 413922);	-- Valiance
i(206673, 414316);	-- White War Wolf

------------------
-- PATCH 10.1.7 --
------------------
i(0, 417888);		-- Algarian Stormrider
i(208572, 420097);	-- Azure Worldchiller
i(0, 358072);		-- Bound Blizzard
i(137576, 171840);	-- Coldflame Infernal
i(198824, 385262);	-- Duskwing Ohuna
i(208598, 419345);	-- Eve's Ghastly Rider
i(0, 419567);		-- Ginormous Grrloc
i(203727, 400976);	-- Gleaming Moonbeast
i(192807, 374278);	-- Renewed Magmammoth
i(205208, 408654);	-- Sandy Shalewing
i(210022, 424082);	-- Mimiron's Jumpjets

------------------
-- PATCH 10.2.0 --
------------------
i(210061, 424484);	-- Anu'relos, Flame's Guidance
i(190767, 368126);	-- Armored Golden Pterrordax
i(0, 418286);		-- Auspicious Arborwyrm
i(209947, 423871);	-- Blossoming Dreamstag
i(211074, 428005);	-- Jeweled Copper Scarab
i(210919, 427435);	-- Crimson Glimmerfur
i(210831, 427222);	-- Delugen
i(210058, 424479);	-- Evening Sun Dreamsaber
i(210412, 425338);	-- Flourishing Whimsydrake
i(211084, 428060);	-- Golden Regal Scarab
i(210948, 427549);	-- Imagiwing
i(209951, 423891);	-- Lunar Dreamstag
i(210946, 427546);	-- Mammyth
i(210057, 424482);	-- Morning Flourish Dreamsaber
i(210774, 427041);	-- Ochre Dreamtalon
i(209950, 423877);	-- Rekindled Dreamstag
i(210008, 424009);	-- Runebound Firelord
i(210969, 427724);	-- Salatrancer
i(210060, 424474);	-- Shadow Dusk Dreamsaber
i(210775, 427043);	-- Snowfluff Dreamtalon
i(210769, 426955);	-- Springtide Dreamtalon
i(210945, 427226);	-- Stargrazer
i(209949, 423873);	-- Suntouched Dreamstag
i(210833, 427224);	-- Talont
i(209060, 422486);	-- Verdant Armoredon
i(210345, 425416);	-- Verdant Gladiator's Slitherdrake
i(210070, 424534);	-- Vicious Moonbeast
i(210069, 424535);	-- Vicious Moonbeast
i(210059, 424476);	-- Winter Night Dreamsaber
--- NYI ---
i(210143, 424608);	-- [PH] White-Furred Bakar
i(210144, 424610);	-- [PH] Yellow-Furred Spiky Bakar
i(210145, 424611);	-- [PH] YellowBlack-Furred Bakar
-- #if BEFORE 11.0.5
i(211075, 428013);	-- Deathbringer's Shadowcycle
-- #endif
i(211086, 428065);	-- Jeweled Jade Scarab
i(211085, 428062);	-- Jeweled Sapphire Scarab
i(210140, 0);		-- [PH] Black-Furred Bakar

------------------
-- PATCH 10.2.5 --
------------------
i(212645, 432610);	-- Clayscale Hornstrider
i(212522, 431992);	-- Compass Rose
i(192796, 374204);	-- Explorer's Stonehide Packbeast
i(163186, 278966);	-- Fiery Hearthsteed
i(212227, 431357);	-- Fur-endship Fox
i(211873, 430225);	-- Gilnean Prowler
i(210973, 427777);	-- Heartseeker Mana Ray
i(212630, 432558);	-- Majestic Azure Peafowl
i(212599, 432455);	-- Noble Flying Carpet
i(212229, 431360);	-- Twilight Sky Prowler
--- NYI ---
i(212632, 432564);	-- Starry Twilight Peafowl
i(211486, 0);		-- Winding Slitherdrake

------------------
-- PATCH 10.2.6 --
------------------
i(192766, 349943);	-- Amber Skitterfly
i(198822, 385260);	-- Bestowed Ohuna Spotter
i(211862, 376898);	-- Bestowed Ottuk Vanguard
i(192765, 374071);	-- Bestowed Sandskimmer
i(192792, 351408);	-- Bestowed Thunderspine Packleader
i(192788, 374172);	-- Bestowed Trawling Mammoth
i(205206, 408648);	-- Calescent Shalewing
i(192774, 374097);	-- Coralscale Salamanther
i(0, 424539);		-- Draconic Gladiator's Drake
i(213438, 434462);	-- Infinite Armoredon
-- #if BEFORE 11.0.7
i(0, 437162);		-- Polly Roger
i(0, 254812);		-- Royal Seafeather
-- #endif
i(212920, 433281);	-- Savage Blue Battle Turtle
-- #if BEFORE 11.0.7
i(0, 300154);		-- Silver Tidestallion
-- #endif
i(192751, 373967);	-- Stormtouched Bruffalon
i(210142, 424607);	-- Taivan
i(213439, 434470);	-- Vicious Dreamtalon [A]
i(213440, 434477);	-- Vicious Dreamtalon [H]
i(217340, 439138);	-- Voyaging Wilderling
i(217612, 440444);	-- Zovaal's Soul Eater

------------------
-- PATCH 10.2.7 --
------------------
i(218111, 441794);	-- Amber Pterrordax
i(220768, 446022);	-- Astral Emperor's Serpent
i(220766, 446017);	-- August Phoenix
i(87786, 127209);	-- Black Riding Yak
i(213623, 435145);	-- Bloody Skyscreamer
i(219450, 443660);	-- Charming Courier
i(213624, 435149);	-- Cobalt Juggernaut
i(213598, 435103);	-- Dashing Windsteed
i(213596, 435108);	-- Daystorm Windsteed
i(213595, 435109);	-- Feathered Windsurfer
i(213625, 435150);	-- Fel Iron Juggernaut
i(213597, 435107);	-- Forest Windsteed
i(213602, 435123);	-- Gilded Riding Crane
i(213576, 435044);	-- Golden Discus
i(213601, 435115);	-- Guardian Quilen
i(213621, 435147);	-- Jade Pterrordax
i(87784, 127178);	-- Jungle Riding Crane
i(84753, 123182);	-- Kafa Yak
i(223449, 449126);	-- Korkron Warsaber
i(213609, 435133);	-- Little Red Riding Goat
i(213607, 435124);	-- Luxurious Riding Crane
i(213600, 435118);	-- Marble Quilen
i(87787, 127213);	-- Modest Expedition Yak
i(213584, 435082);	-- Mogu Hazeblazer
i(213622, 435146);	-- Night Pterrorwing
i(213603, 435128);	-- Pale Riding Crane
i(213627, 435161);	-- Palehide Mushan Beast
i(221814, 447413);	-- Pearlescent Goblin Wave Shredder
i(213626, 435153);	-- Purple Shado-Pan Riding Tiger
i(213628, 435160);	-- Riverwalker Mushan
i(213605, 435127);	-- Rose Riding Crane
i(223469, 449140);	-- Sentinel War Wolf
i(213606, 435126);	-- Silver Riding Crane
i(213582, 435084);	-- Sky Surfer
i(213608, 435131);	-- Snowy Riding Goat
i(224374, 132036);	-- Thundering Ruby Cloud Serpent
i(213604, 435125);	-- Tropical Riding Crane
i(223285, 448851);	-- Underlight Corrupted Behemoth
--- NYI ---
i(223470, 449141);	-- [PH] Alliance Wolf Mount Red
i(223282, 448845);	-- [PH] Blue Old God Fish Mount
i(221270, 446352);	-- [PH] Goblin Surfboard - Blue
i(223460, 449133);	-- [PH] Nightsaber Horde Mount White
i(223284, 448849);	-- Underlight Shorestalker

------------------
-- PATCH 11.0.0 --
------------------
i(229128, 464443);	-- Harmonious Salutations Bear
i(217985, 441324);	-- Remembered Golden Gryphon
i(217987, 441325);	-- Remembered Wind Rider
--- NYI ---
i(0, 405623);		-- Armadillo Roller
i(223570, 449416);	-- Ebonhide Ramolith
i(226044, 457659);	-- Plunderlord's Weathered Crocolisk
i(223321, 448984);	-- [PH] ArathiLynxMount (Black Fur, Black Armor)
i(223319, 448980);	-- [PH] ArathiLynxMount (Gold Fur, Yellow Armor)
i(223320, 448981);	-- [PH] ArathiLynxMount (White Fur, Purple Armor)
i(223272, 447938);	-- [PH] CaveBorerWormMount (Blue Skin, Purple Saddle)
i(223273, 447956);	-- [PH] CaveBorerWormMount (Forest Skin, Blue Saddle)
i(223275, 447958);	-- [PH] CaveBorerWormMount (Nocturne Skin, Red Saddle)
i(223159, 448265);	-- [PH] Firebee Mount (Blue Variant)
i(223152, 447149);	-- [PH] Firebee Mount (Grey Skin, Silver Saddle)
i(223154, 447156);	-- [PH] Firebee Mount (White Skin, White Saddle)
i(222988, 447173);	-- [PH] Firefly2Mount (Green)
i(222991, 447181);	-- [PH] Firefly2Mount (Purple)
i(221778, 447161);	-- [PH] Firefly2Mount (Yellow)
i(224413, 452768);	-- [PH] Goliathus (Blue)
i(224414, 452777);	-- [PH] Goliathus (Green)
i(224416, 452780);	-- [PH] Goliathus (Purple)
i(223271, 447214);	-- [PH] Gryphon_Air_Mount (White Skin, Gold Saddle)
i(223500, 449260);	-- [PH] MoleMount (Gray Skin, Purple Saddle, Teeth Tusks, Nose Base)
i(221852, 447466);	-- [PH] MoleMount (Pink Skin, Blue Saddle, Teeth Rodent, Nose Large Pointed)
i(223503, 449271);	-- [PH] MoleMountBasic (Blue Skin, Purple Saddle, Teeth Tusks, Nose Base)
i(223504, 449283);	-- [PH] MoleMountBasic (Green Skin, Black Saddle, Teeth Tusks, Nose Star)
i(223506, 449265);	-- [PH] MoleMountBasic (Yellow Skin, Blue Saddle, Teeth Rodent, Nose Large Pointed)
i(222898, 447898);	-- [PH] Mount - Unicorn Moose (Blue) (Gold Saddle) (Player Mount)
i(222901, 447910);	-- [PH] Mount - Shalehorn (Brown) (Copper Saddle) (Player Mount) / Item: [PH] Mount - Unicorn Moose (Brown) (Copper Saddle) (Player Mount)
i(222902, 447911);	-- [PH] Mount - Shalehorn (Crimson) (Dark Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Crimson) (Dark Saddle) (Player Mount)
i(222903, 447912);	-- [PH] Mount - Shalehorn (Ivory) (Silver Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Ivory) (Silver Saddle) (Player Mount)
i(222904, 447913);	-- [PH] Mount - Shalehorn (Yellow) (White Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Yellow) (White Saddle) (Player Mount)
i(224148, 451487);	-- [PH] NerubianWarbeastMount (Cyan)
i(224149, 451488);	-- [PH] NerubianWarbeastMount (Orange)
i(223573, 449421);	-- [PH] Proto Ram Earthen (Sand Skin, Grand Horns, Dark Saddle)
i(223574, 449419);	-- [PH] Proto Ram Earthen (White Skin, Grand Horns, White Saddle)
i(223587, 449465);	-- [PH] Silver Armored Fel Bat Gladiator Mount
i(223277, 448682);	-- [PH] SpiderUndergroundMount (Green)
i(220786, 0);		-- Delver's Dirigible
i(207104, 0);		-- Morsel Sniffer Reins
i(219012, 0);		-- Placeholder Delve Exclusive Mount
i(223268, 0);		-- [PH] DwarvenMechBoss (Gold)
i(223502, 0);		-- [PH] MoleMount (Brown Skin, Red Saddle, Teeth Tusks, Nose Pointed)

------------------
-- PATCH 11.0.2 --
------------------
i(223270, 447213);	-- Alunira
i(223264, 447185);	-- Aquamarine Swarmite
i(224151, 451491);	-- Ascendant Skyrazor
i(223315, 448941);	-- Beledar's Spawn
i(223505, 449269);	-- Crimson Mudnose
i(221967, 448186);	-- Crowd Pummeler 2-30
i(222989, 447176);	-- Cyan Glowmite
i(223318, 448979);	-- Dauntless Imperial Lynx
i(187674, 359380);	-- Depthstalker
i(226357, 458335);	-- Diamond Mechsuit
i(219391, 446052);	-- Delver's Dirigible
i(0, 453785);		-- Earthen Ordinant's Ramolith
i(223274, 447957);	-- Ferocious Jawcrawler
i(223586, 449466);	-- Forged Gladiator's Fel Bat
i(228751, 463025);	-- Gigantic Grrloc
i(0, 457485);		-- Grizzly Hills Packmaster
i(226506, 459193);	-- Hand of Reshkigaal
i(223278, 448685);	-- Heritage Undercrawler
i(224415, 452779);	-- Ivory Goliathus
i(223286, 448850);	-- Kah, Legend of the Deep
i(226041, 457654);	-- Keg Leg's Radiant Crocolisk
i(223269, 448188);	-- Machine Defense Unit 1-11
i(223501, 449258);	-- Ol' Mole Rufus
i(226040, 457650);	-- Plunderlord's Golden Crocolisk
i(223158, 447160);	-- Raging Cinderbee
i(223279, 448689);	-- Royal Court Undercrawler
i(224574, 453255);	-- Savage Ebony Battle Turtle
i(223314, 448939);	-- Shackled Shadow
i(223266, 447190);	-- Shadowed Swarmite
i(223571, 449418);	-- Shale Ramolith
i(224150, 451489);	-- Siesbarg
i(223572, 449415);	-- Slatestone Ramolith
i(221753, 447057);	-- Smoldering Cinderbee
i(223153, 447151);	-- Soaring Meaderbee
i(225250, 454682);	-- Startouched Furline
i(221765, 442358);	-- Stonevault Mechsuit
i(224147, 451486);	-- Sureki Skyrazor
i(223267, 447195);	-- Swarmite Skyhunter
i(223317, 448978);	-- Vermillion Imperial Lynx
i(223511, 449325);	-- Vicious Skyflayer [A]
i(221813, 447405);	-- Vicious Skyflayer [H]
i(225548, 449264);	-- Wick's Lead
i(223276, 448680);	-- Widow's Undercrawler

------------------
-- PATCH 11.0.5 --
------------------
i(224399, 452645);	-- Amani Hunting Bear
i(223459, 449132);	-- Blackrock Warsaber
i(230200, 466838);	-- Chaos-Forged Dreadwing
i(230184, 466811);	-- Chaos-Forged Gryphon
i(230185, 466812);	-- Chaos-Forged Hippogryph
i(230201, 466845);	-- Chaos-Forged Wind Rider
i(228760, 463133);	-- Coldflame Tempest
i(231374, 468353);	-- Enchanted Spellweave Carpet
i(224398, 452643);	-- Frayfeather Hippogryph
i(211087, 428067);	-- Hateforged Blazecycle
-- #if AFTER 11.0.5
i(229348, 428013);		-- Incognitro, the Indecipherable Felcycle
-- #endif
i(223471, 449142);	-- Kaldorei War Wolf
i(212228, 431359);	-- Soaring Sky Fox
i(229418, 465235);	-- Trader's Gilded Brutosaur

------------------
-- PATCH 11.0.7 --
------------------
i(235344, 1216542);	-- Blazing Royal Fire Hawk (CN Only)
i(212631, 432562);	-- Brilliant Sunburst Peafowl
i(234730, 1214946);	-- Broodling of Sinestra
i(234740, 1214974);	-- Copper-Maned Quilen
i(190539, 367620);	-- Coral-Stalker Waveray
i(0, 303767);		-- Honeyback Hivemother
i(227362, 459784);	-- Golden Ashes of Al'ar (CN Only)
i(233241, 471696);	-- Hooktalon
i(235515, 473472);	-- Jani's Trashpile
i(234716, 1214920);	-- Nightfall Skyreaver
i(232926, 472479);	-- Love Witch's Sweeper
i(232901, 472253);	-- Lunar Launcher
i(226042, 457656);	-- Plunderlord's Midnight Crocolisk
i(233240, 437162);	-- Polly Roger
i(233489, 474086);	-- Prismatic Snapdragon
i(233242, 254812);	-- Royal Seafeather
i(233354, 473861);	-- Savage Alabaster Battle Turtle
i(235286, 1216422);	-- Sha-Warped Cloud Serpent
i(235287, 1216430);	-- Sha-Warped Riding Tiger
i(223313, 448934);	-- Shadow of Doubt
i(233243, 300154);	-- Silver Tidestallion
i(233023, 472487);	-- Silvermoon Sweeper
i(233019, 472489);	-- Sky Witch's Sweeper
i(233058, 473137);	-- Soweezi's Vintage Waveshredder
i(232991, 472752);	-- The Breaker's Song
i(232639, 471562);	-- Thrayir, Eyes of the Siren
i(231297, 468205);	-- Timbered Sky Snake
i(232624, 471538);	-- Timely Buzzbee
i(233020, 472488);	-- Twilight Witch's Sweeper
i(234721, 1214940);	-- Ur'zul Fleshripper

------------------
-- PATCH 11.1.0 --
------------------
i(229952, 466023);	-- Asset Advocator
i(229957, 466024);	-- Bilgewater Bombardier
i(229937, 466001);	-- Blackwater Bonecrusher
i(229948, 466019);	-- Blackwater Shredder Deluxe Mk 2
i(233064, 473188);	-- Bronze Goblin Wave Shredder
i(229935, 465999);	-- Crimson Armored Growler
i(235549, 1217235);	-- Crimson Shreddertank
i(229924, 466000);	-- Darkfuse Chompactor
i(229950, 466018);	-- Darkfuse Demolisher
i(229955, 466027);	-- Darkfuse Spy-Eye
i(229974, 466133);	-- Delver's Gob-Trotter
i(235662, 1218069);	-- Emerald Snail
i(237141, 1221694);	-- Enterprising Shreddertank
i(229940, 466011);	-- Flarendo the Furious
i(229941, 466017);	-- Innovation Investigator
i(231173, 468068);	-- Junkmaestro's Magnetomech
i(235555, 1217341);	-- Lively Darkmoon Charger
i(229954, 466025);	-- Margin Manipulator
i(229956, 466028);	-- Mean Green Flying Machine
i(233286, 473745);	-- Meeksi Brewthief
i(233284, 473743);	-- Meeksi Rollingpaw
i(233282, 473739);	-- Meeksi Rufflefur
i(233283, 473741);	-- Meeksi Softpaw
i(233285, 473744);	-- Meeksi Teatuft
i(229946, 466013);	-- Ocher Delivery Rocket
i(235650, 1217994);	-- Pearlescent Butterfly
i(229949, 466020);	-- Personalized Goblin S.C.R.A.Per
i(229987, 466144);	-- Prized Gladiator's Fel Bat
i(236960, 1221155);	-- Prototype A.S.M.R.
i(235657, 1218012);	-- Ruby Butterfly
i(229953, 466026);	-- Salvaged Goblin Gazillionaire's Flying Machine
i(229943, 466014);	-- Steamwheedle Supplier
i(235626, 1217760);	-- The Big G
i(229944, 466016);	-- The Topskimmer Special
i(229945, 466012);	-- Thunderdrum Misfire
i(229951, 466022);	-- Venture Co-ordinator
i(229989, 466146);	-- Vicious Electro Eel [A]
i(229988, 466145);	-- Vicious Electro Eel [H]
i(229936, 466002);	-- Violet Armored Growler
i(235556, 1217342);	-- Violet Darkmoon Charger
i(229947, 466021);	-- Violet Goblin Shredder
-- TRADING POST TAG
i(235659, 1218014);	-- Midnight Butterfly
i(235554, 1217340);	-- Midnight Darkmoon Charger
i(235646, 1217965);	-- Shimmermist Free Runner
i(235557, 1217343);	-- Snowy Darkmoon Charger
i(235658, 1218013);	-- Spring Butterfly
--- NYI ---
i(232523, 460013);	-- G-99 Breakneck
i(0, 466423);	-- Unstable Rocket
i(0, 466464);	-- Unstable Rocket

------------------
-- PATCH 11.1.5 --
------------------
--- ITEM ---
i(235711, 1218316);	-- Corruption of the Aspects
i(223265, 447189);	-- Nesting Swarmite
i(235709, 1218314);	-- Ny'alothan Shadow Worm
i(238829, 1226421);	-- Radiant Imperial Lynx
i(239020, 1227076);	-- Tyrannotort
i(235712, 1218317);	-- Void-Crystal Panther
i(235705, 1218305);	-- Void-Forged Stallion
i(235700, 1218229);	-- Void-Scarred Gryphon
i(239563, 1228865);	-- Void-Scarred Lynx
i(235706, 1218306);	-- Void-Scarred Pack Mother
i(235707, 1218307);	-- Void-Scarred Windrider
i(211089, 428068);	-- Voidfire Deathcycle
--- UNSORTED ---
i(238902, 1226533);	-- Autumn Harvesthog
i(210141, 424601);	-- Brown-Furred Spiky Bakar
i(238941, 1226740);	-- Coldflame Cormaera
i(238966, 1226851);	-- Felborn Cormaera
i(238968, 1226856);	-- Lavaborn Cormaera
i(238967, 1226855);	-- Molten Cormaera
i(236415, 1219705);	-- Spotted Black Riding Goat
i(238897, 1226511);	-- Spring Harvesthog
i(238900, 1226531);	-- Summer Harvesthog
i(238901, 1226532);	-- Winter Harvesthog