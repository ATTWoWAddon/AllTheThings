-- This data is needed in environments that don't have Pet Journal.
-- Parser will rip out the spellID for builds that support Pet Journal.
local CompanionPetSpellIDToSpeciesID = {};
local CompanionPetSpeciesIDToSpellID = {
	[39] = 4055,	-- Mechanical Squirrel
	[40] = 10673,	-- Bombay Cat
	[41] = 10674,	-- Cornish Rex Cat
	[42] = 10675,	-- Black Tabby Cat
	[43] = 10676,	-- Orange Tabby Cat
	[44] = 10677,	-- Siamese Cat
	[45] = 10678,	-- Silver Tabby Cat
	[46] = 10679,	-- White Kitten
	[47] = 10680,	-- Cockatiel
	[49] = 10682,	-- Hyacinth Macaw
	[50] = 10683,	-- Green Wing Macaw
	[51] = 10684,	-- Senegal
	[52] = 10685,	-- Ancona Chicken
	[55] = 10688,	-- Undercity Cockroach
	[56] = 10695,	-- Dark Whelpling
	[57] = 10696,	-- Azure Whelpling
	[58] = 10697,	-- Crimson Whelpling
	[59] = 10698,	-- Emerald Whelpling
	[64] = 10703,	-- Wood Frog
	[65] = 10704,	-- Tree Frog
	[67] = 10706,	-- Hawk Owl
	[68] = 10707,	-- Great Horned Owl
	[70] = 10709,	-- Brown Prairie Dog
	[72] = 10711,	-- Snowshoe Rabbit
	[74] = 10713,	-- Albino Snake
	[75] = 10714,	-- Black Kingsnake
	[77] = 10716,	-- Brown Snake
	[78] = 10717,	-- Crimson Snake
	[83] = 12243,	-- Mechanical Chicken
	[84] = 13548,	-- Westfall Chicken
	[85] = 15048,	-- Pet Bombling
	[86] = 15049,	-- Lil' Smoky
	[87] = 15067,	-- Sprite Darter Hatchling
	[89] = 15999,	-- Worg Pup
	[90] = 16450,	-- Smolderweb Hatchling
	[92] = 17707,	-- Panda Cub
	[93] = 17708,	-- Mini Diablo
	[94] = 17709,	-- Zergling
	[95] = 19772,	-- Lifelike Toad
	[106] = 23811,	-- Jubling
	[107] = 24696,	-- Murky
	[111] = 24988,	-- Lurky
	[114] = 25162,	-- Disgusting Oozeling
	[115] = 172695,	-- Land Shark
	[116] = 26010,	-- Tranquil Mechanical Yeti
	[117] = 26045,	-- Tiny Snowman
	[118] = 26529,	-- Winter Reindeer
	[119] = 26533,	-- Father Winter's Helper
	[120] = 26541,	-- Winter's Little Helper
	[121] = 27241,	-- Gurky
	[122] = 27570,	-- Peddlefeet
	[124] = 28505,	-- Poley
	[125] = 28738,	-- Speedy
	[126] = 28739,	-- Mr. Wiggles
	[127] = 28740,	-- Whiskers the Rat
	[128] = 28871,	-- Spirit of Summer
	[130] = 30156,	-- Hippogryph Hatchling
	[131] = 32298,	-- Netherwhelp
	[132] = 33050,	-- Magical Crawdad
	[136] = 35156,	-- Mana Wyrmling
	[137] = 35239,	-- Brown Rabbit
	[138] = 35907,	-- Blue Moth
	[139] = 35909,	-- Red Moth
	[140] = 35910,	-- Yellow Moth
	[141] = 35911,	-- White Moth
	[142] = 36027,	-- Golden Dragonhawk Hatchling
	[143] = 36028,	-- Red Dragonhawk Hatchling
	[144] = 36029,	-- Silver Dragonhawk Hatchling
	[145] = 36031,	-- Blue Dragonhawk Hatchling
	[146] = 36034,	-- Firefly
	[149] = 39181,	-- Miniwing
	[153] = 39709,	-- Wolpertinger
	[155] = 40405,	-- Lucky
	[156] = 40549,	-- Bananas
	[157] = 40613,	-- Willy
	[158] = 40614,	-- Egbert
	[159] = 40634,	-- Peanut
	[160] = 40990,	-- Stinker
	[162] = 42609,	-- Sinister Squashling
	[163] = 43697,	-- Toothy
	[164] = 43698,	-- Muckbreath
	[165] = 43918,	-- Mojo
	[166] = 44369,	-- Pint-Sized Pink Pachyderm
	[167] = 45082,	-- Tiny Sporebat
	[168] = 45125,	-- Rocket Chicken
	[169] = 45127,	-- Dragon Kite
	[170] = 45174,	-- Golden Pig
	[171] = 45175,	-- Silver Pig
	[172] = 45890,	-- Searing Scorchling
	[173] = 46425,	-- Snarly
	[174] = 46426,	-- Chuck
	[175] = 46599,	-- Phoenix Hatchling
	[179] = 48406,	-- Spirit of Competition
	[180] = 48408,	-- Essence of Competition
	[183] = 49964,	-- Ethereal Soul-Trader
	[186] = 51716,	-- Nether Ray Fry
	[187] = 51851,	-- Vampiric Batling
	[188] = 52615,	-- Frosty
	[189] = 53082,	-- Mini Tyrael
	[190] = 53316,	-- Ghostly Skull
	[191] = 54187,	-- Clockwork Rocket Bot
	[192] = 55068,	-- Mr. Chilly
	[193] = 59250,	-- Giant Sewer Rat
	[194] = 61348,	-- Tickbird Hatchling
	[195] = 61349,	-- White Tickbird Hatchling
	[196] = 61350,	-- Proto-Drake Whelp
	[197] = 61351,	-- Cobra Hatchling
	[198] = 61357,	-- Pengu
	[199] = 61472,	-- Kirin Tor Familiar
	[200] = 61725,	-- Spring Rabbit
	[201] = 61773,	-- Plump Turkey
	[202] = 61855,	-- Baby Blizzard Bear
	[203] = 61991,	-- Little Fawn
	[204] = 62491,	-- Teldrassil Sproutling
	[205] = 62508,	-- Dun Morogh Cub
	[206] = 62510,	-- Tirisfal Batling
	[207] = 62513,	-- Durotar Scorpion
	[209] = 62516,	-- Elwynn Lamb
	[210] = 62542,	-- Mulgore Hatchling
	[211] = 62561,	-- Strand Crawler
	[212] = 62562,	-- Ammen Vale Lashling
	[213] = 62564,	-- Enchanted Broom
	[214] = 62609,	-- Argent Squire
	[215] = 62674,	-- Mechanopeep
	[216] = 62746,	-- Argent Gruntling
	[217] = 63318,	-- Murkimus the Gladiator
	[218] = 63712,	-- Sen'jin Fetish
	[220] = 65046,	-- Withers
	[224] = 65358,	-- Calico Cat
	[225] = 65381,	-- Curious Oracle Hatchling
	[226] = 65382,	-- Curious Wolvar Pup
	[227] = 65682,	-- Warbot
	[228] = 66030,	-- Grunty
	[229] = 66096,	-- Shimmering Wyrmling
	[231] = 66520,	-- Jade Tiger
	[232] = 67413,	-- Darting Hatchling
	[233] = 67414,	-- Deviate Hatchling
	[234] = 67415,	-- Gundrak Hatchling
	[235] = 67416,	-- Leaping Hatchling
	[236] = 67417,	-- Obsidian Hatchling
	[237] = 67418,	-- Ravasaur Hatchling
	[238] = 67419,	-- Razormaw Hatchling
	[239] = 67420,	-- Razzashi Hatchling
	[240] = 67527,	-- Onyx Panther
	[241] = 68767,	-- Tuskarr Kite
	[242] = 68810,	-- Spectral Tiger Cub
	[243] = 69002,	-- Onyxian Whelpling
	[244] = 69452,	-- Core Hound Pup
	[245] = 69535,	-- Gryphon Hatchling
	[246] = 69536,	-- Wind Rider Cub
	[247] = 69539,	-- Zipao Tiger
	[248] = 69541,	-- Pandaren Monk
	[249] = 69677,	-- Lil' K.T.
	[250] = 70613,	-- Perky Pug
	[251] = 71840,	-- Toxic Wasteling
	[253] = 74932,	-- Frigid Frostling
	[254] = 75134,	-- Blue Clockwork Rocket Bot
	[255] = 75613,	-- Celestial Dragon
	[256] = 75906,	-- Lil' XT
	[257] = 75936,	-- Murkimus the Gladiator
	[258] = 78381,	-- Mini Thor
	[259] = 78683,	-- Blue Mini Jouster
	[260] = 78685,	-- Gold Mini Jouster
	[261] = 81937,	-- Personal World Destroyer
	[262] = 82173,	-- De-Weaponized Mechanical Companion
	[264] = 84263,	-- Crawling Claw
	[265] = 84492,	-- Pebble
	[266] = 84752,	-- Fossilized Hatchling
	[267] = 93836,	-- Enchanted Lantern
	[268] = 87344,	-- Lil' Deathwing
	[270] = 89039,	-- Dark Phoenix Hatchling
	[271] = 89472,	-- Rustberg Gull
	[272] = 89670,	-- Armadillo Pup
	[277] = 90523,	-- Clockwork Gnome
	[278] = 90637,	-- Fox Kit
	[279] = 91343,	-- Tiny Shale Spider
	[280] = 92395,	-- Guild Page
	[281] = 92396,	-- Guild Page
	[282] = 92397,	-- Guild Herald
	[283] = 92398,	-- Guild Herald
	[285] = 93624,	-- Landro's Lil' XT
	[286] = 93739,	-- Mr. Grubbs
	[287] = 93813,	-- Tiny Flamefly
	[289] = 93817,	-- Scooter the Snail
	[291] = 93823,	-- Singing Sunflower
	[292] = 93837,	-- Magic Lamp
	[293] = 93838,	-- Elementium Geode
	[294] = 94070,	-- Deathy
	[296] = 95786,	-- Moonkin Hatchling
	[297] = 95787,	-- Lil' Ragnaros
	[298] = 95909,	-- Moonkin Hatchling
	[301] = 96571,	-- Panther Cub
	[302] = 96817,	-- Landro's Lichling
	[303] = 96819,	-- Nightsaber Cub
	[306] = 97638,	-- Winterspring Cub
	[307] = 97779,	-- Lashtail Hatchling
	[308] = 98079,	-- Legs
	[309] = 98571,	-- Pterrordax Hatchling
	[310] = 98587,	-- Voodoo Figurine
	[311] = 98736,	-- Guardian Cub
	[316] = 99578,	-- Cenarion Hatchling
	[317] = 99663,	-- Hyjal Bear Cub
	[318] = 99668,	-- Crimson Lasher
	[319] = 100330,	-- Feline Familiar
	[320] = 100576,	-- Lil' Tarecgosa
	[321] = 100684,	-- Creepy Crate
	[323] = 100970,	-- Nuts
	[325] = 101424,	-- Brilliant Kaliri
	[328] = 101493,	-- Purple Puffer
	[329] = 101606,	-- Murkablo
	[330] = 101733,	-- Darkmoon Monkey
	[331] = 101986,	-- Alliance Balloon
	[332] = 101989,	-- Horde Balloon
	[333] = 102317,	-- Gregarious Grell
	[335] = 103074,	-- Darkmoon Turtle
	[336] = 103076,	-- Darkmoon Balloon
	[337] = 103125,	-- Lumpy
	[338] = 103544,	-- Darkmoon Tonk
	[339] = 103549,	-- Darkmoon Zeppelin
	[340] = 103588,	-- Sea Pony
	[341] = 104047,	-- Lunar Lantern
	[342] = 104049,	-- Festival Lantern
	[343] = 105122,	-- Darkmoon Cub
	[344] = 105228,	-- Green Balloon
	[345] = 105229,	-- Yellow Balloon
	[346] = 105633,	-- Fetish Shaman
	[347] = 110029,	-- Soul of the Aspects
	[348] = 112994,	-- Eye of the Legion
	[381] = 118414,	-- Porcupette
	[382] = 231215,	-- Sun Darter Hatchling
	[384] = 118419,	-- Otter Pup
	--[462] = 89472,	-- Jacob the Test Seagull [NYI]
	[629] = 123212,	-- Shore Crawler
	[630] = 123214,	-- Gilnean Raven
	[650] = 123778,	-- Terrible Turnip
	[652] = 124000,	-- Tiny Goldfish
	[665] = 102353,	-- Sand Scarab
	[666] = 249870,	-- Micronax
	[671] = 124660,	-- Lucky Quilen Cub
	[757] = 23531,	-- Tiny Green Dragon
	[758] = 23530,	-- Tiny Red Dragon
	[792] = 127816,	-- Jade Crane Chick
	[802] = 127813,	-- Thundering Serpent Hatchling
	[820] = 127815,	-- Singing Cricket
	[821] = 124152,	-- Feral Vermling
	[834] = 126251,	-- Grinder
	[835] = 126247,	-- Hopling
	[836] = 126249,	-- Aqua Strider
	[844] = 126885,	-- Mechanical Pandaren Dragonling
	[845] = 120501,	-- Jade Owl
	[846] = 120507,	-- Sapphire Cub
	[847] = 122748,	-- Fishy
	[848] = 114090,	-- Darkmoon Rabbit
	[849] = 127008,	-- Chi-Ji Kite
	[850] = 127006,	-- Yu'lon Kite
	[855] = 130759,	-- Venus
	[856] = 130726,	-- Jade Tentacle
	[868] = 131590,	-- Pandaren Water Spirit
	[903] = 131650,	-- Baneling
	[1039] = 132574,	-- Imperial Moth
	[1040] = 132580,	-- Imperial Silkworm
	[1042] = 123784,	-- Red Cricket
	[1061] = 132762,	-- Darkmoon Hatchling
	[1063] = 132789,	-- Darkmoon Eye
	[1073] = 28487,	-- Terky
	[1117] = 134538,	-- Cinder Kitten
	[1124] = 134892,	-- Pandaren Fire Spirit
	[1125] = 134894,	-- Pandaren Air Spirit
	[1126] = 134895,	-- Pandaren Earth Spirit
	[1127] = 132759,	-- Spectral Cub
	[1142] = 135156,	-- Clock'em
	[1143] = 135254,	-- Giant Bone Spider
	[1144] = 135255,	-- Fungal Abomination
	[1145] = 135256,	-- Mr. Bigglesworth
	[1146] = 135257,	-- Stitched Pup
	[1147] = 135258,	-- Harbinger of Flame
	[1149] = 135259,	-- Corefire Imp
	[1150] = 135261,	-- Ashstone Core
	[1151] = 135263,	-- Untamed Hatchling
	[1152] = 135264,	-- Chrominius
	[1153] = 135265,	-- Death Talon Whelpguard
	[1154] = 135266,	-- Viscidus Globule
	[1155] = 135267,	-- Anubisath Idol
	[1156] = 135268,	-- Mini Mindslayer
	[1168] = 25018,	-- Murki
	[1174] = 136484,	-- Gusting Grimoire
	[1176] = 137568,	-- Red Panda
	[1177] = 137977,	-- Living Sandling
	[1178] = 138082,	-- Sunreaver Micro-Sentry
	[1180] = 138087,	-- Zandalari Kneebiter
	[1183] = 138161,	-- Son of Animus
	[1184] = 138287,	-- Stunted Direhorn
	[1185] = 138285,	-- Spectral Porcupette
	[1196] = 138380,	-- Sunfur Panda
	[1197] = 138381,	-- Snowy Panda
	[1198] = 138382,	-- Mountain Panda
	[1200] = 138825,	-- Pygmy Direhorn
	[1201] = 138913,	-- Spawn of G'nathus
	[1202] = 139148,	-- Ji-Kun Hatchling
	[1204] = 138824,	-- Pierre
	[1205] = 139153,	-- Direhorn Runt
	[1206] = 139361,	-- Tiny Red Carp
	[1207] = 139362,	-- Tiny Blue Carp
	[1208] = 139363,	-- Tiny Green Carp
	[1209] = 139365,	-- Tiny White Carp
	[1211] = 139932,	-- Zandalari Anklerender
	[1212] = 139933,	-- Zandalari Footslasher
	[1213] = 139934,	-- Zandalari Toenibbler
	[1226] = 141433,	-- Lil' Bad Wolf
	[1227] = 141434,	-- Menagerie Custodian
	[1228] = 141435,	-- Netherspace Abyssal
	[1229] = 141451,	-- Fiendish Imp
	[1230] = 141436,	-- Tideskipper
	[1231] = 141437,	-- Tainted Waveling
	[1232] = 141446,	-- Coilfang Stalker
	[1233] = 141447,	-- Pocket Reaver
	[1234] = 141448,	-- Lesser Voidcaller
	[1235] = 141449,	-- Phoenix Hawk Hatchling
	[1236] = 141450,	-- Tito
	[1237] = 141789,	-- Gahz'rooki
	[1243] = 142028,	-- Living Fluid
	[1244] = 142029,	-- Viscous Horror
	[1245] = 142030,	-- Filthling
	[1248] = 142880,	-- Blossoming Ancient
	[1255] = 143637,	-- Zeradar
	[1256] = 143703,	-- Rascal-Bot
	[1257] = 143732,	-- Crafty
	[1266] = 145696,	-- Xu-Fu, Cub of Xuen
	[1276] = 144761,	-- Moon Moon
	[1303] = 145697,	-- Chi-Chi, Hatchling of Chi-Ji
	[1304] = 145698,	-- Yu'la, Broodling of Yu'lon
	[1305] = 145699,	-- Zao, Calfling of Niuzao
	[1320] = 147124,	-- Lil' Bling
	[1322] = 148049,	-- Blackfuse Bombling
	[1323] = 148046,	-- Ashleaf Spriteling
	[1324] = 148068,	-- Ashwing Moth
	[1325] = 148069,	-- Flamering Moth
	[1326] = 148065,	-- Skywisp Moth
	[1328] = 148050,	-- Ruby Droplet
	[1329] = 148051,	-- Dandelion Frolicker
	[1330] = 148052,	-- Death Adder Hatchling
	[1331] = 148058,	-- Droplet of Y'Shaarj
	[1332] = 148059,	-- Gooey Sha-ling
	[1333] = 148060,	-- Jademist Dancer
	[1334] = 148061,	-- Kovok
	[1335] = 148551,	-- Ominous Flame
	[1336] = 148063,	-- Skunky Alemental
	[1337] = 148066,	-- Spineclaw Crab
	[1338] = 148067,	-- Gulp Froglet
	[1343] = 148373,	-- Bonkers
	[1344] = 148427,	-- Vengeful Porcupette
	[1345] = 148527,	-- Gu'chi Swarmling
	[1346] = 148530,	-- Harmonious Porcupette
	[1348] = 148552,	-- Jadefire Spirit
	[1349] = 148567,	-- Rotten Little Helper
	[1350] = 148684,	-- Sky Lantern
	[1351] = 66175,	-- Macabre Marionette
	[1363] = 149787,	-- Alterac Brew-Pup
	[1364] = 149792,	-- Murkalot
	[1365] = 149810,	-- Treasure Goblin
	[1384] = 170267,	-- Hogs
	[1386] = 155748,	-- Dread Hatchling
	[1387] = 155838,	-- Iron Starlette
	[1395] = 159296,	-- Lil' Leftovers
	[1396] = 159581,	-- Crazy Carrot
	--[1401] = 53082,	-- Tyri	[This is a Garrison Fight, not tameable]
	--[1402] = 149810,	-- Puzzle	[This is a Garrison Fight, not tameable]
	[1403] = 160403,	-- Mechanical Axebeak
	[1410] = 161522,	-- Mechanical Training Dummy
	[1411] = 161643,	-- Royal Peachick
	[1412] = 162135,	-- Lifelike Mechanical Frostboar
	[1416] = 164212,	-- Teroclaw Hatchling
	[1426] = 166071,	-- Elekk Plushie
	[1429] = 167389,	-- Autumnal Sproutling
	[1430] = 167390,	-- Forest Sproutling
	[1431] = 167392,	-- Kelp Sproutling
	[1432] = 167394,	-- Nightshade Sproutling
	[1433] = 167395,	-- Sassy Sproutling
	[1434] = 167397,	-- Sun Sproutling
	[1446] = 168668,	-- Meadowstomper Calf
	[1448] = 168977,	-- Sea Calf
	[1449] = 169220,	-- Deathwatch Hatchling
	[1450] = 169666,	-- Draenei Micro Defender
	[1451] = 169695,	-- Molten Corgi
	[1453] = 223110,	-- River Calf
	[1454] = 190036,	-- Murkidan
	[1458] = 170286,	-- Bone Wasp
	[1466] = 190035,	-- Brightpaw
	[1467] = 170292,	-- Sky-Bo
	[1471] = 170285,	-- Fruit Hunter
	[1478] = 170774,	-- Syd the Squid
	[1495] = 170280,	-- Ore Eater
	[1511] = 171118,	-- Lovebird Hatchling
	[1514] = 171222,	-- Mystical Spring Bouquet
	[1515] = 170282,	-- Stonegrinder
	[1516] = 171500,	-- Bush Chicken
	[1517] = 171552,	-- Blazing Cindercrawler
	[1518] = 171758,	-- Stout Alemental
	[1521] = 171912,	-- Cursed Birman
	[1523] = 171915,	-- Widget the Departed
	[1524] = 170269,	-- Netherspawn, Spawn of Netherspawn
	[1530] = 170274,	-- Frostwolf Ghostpup
	[1531] = 172632,	-- Ancient Nest Guardian
	[1532] = 170270,	-- Ikky
	[1533] = 172998,	-- Lanticore Spawnling
	[1536] = 173532,	-- Zangar Spore
	[1537] = 173542,	-- Crimson Spore
	[1538] = 173543,	-- Umbrafen Spore
	[1539] = 173544,	-- Seaborne Spore
	[1540] = 173547,	-- Brilliant Spore
	[1541] = 170273,	-- Hydraling
	[1542] = 170281,	-- Frostwolf Pup
	[1543] = 177216,	-- Pygmy Cow
	[1544] = 170268,	-- Hatespark the Tiny
	[1545] = 170291,	-- Firewing
	[1546] = 170289,	-- Stormwing
	[1563] = 10699,	-- Bronze Whelpling
	[1564] = 170272,	-- Doom Bloom
	[1565] = 170288,	-- Mechanical Scorpid
	[1566] = 176137,	-- Everbloom Peachick
	[1567] = 176140,	-- Sentinel's Companion
	[1568] = 170279,	-- Puddle Terror
	[1569] = 170276,	-- Soul of the Forge
	[1570] = 177227,	-- Sunfire Kaliri
	[1571] = 170287,	-- Albino River Calf
	[1574] = 170277,	-- Son of Sethe
	[1575] = 170271,	-- Sky Fry
	[1576] = 170275,	-- Eye of Observation
	[1577] = 187384,	-- Bloodthorn Hatchling
	[1588] = 187383,	-- Dusty Sporewing
	[1596] = 170283,	-- Veilwatcher Hatchling
	[1597] = 177215,	-- Kaliri Hatchling
	[1598] = 187376,	-- Glowing Sporebat
	[1600] = 177238,	-- Bone Serpent
	[1601] = 170278,	-- Servant of Demidos
	[1602] = 177234,	-- Grommloc
	[1603] = 177232,	-- Argi
	[1604] = 177220,	-- Nethaera's Light
	[1605] = 177233,	-- Trunks
	[1622] = 179811,	-- Grotesque
	[1623] = 179830,	-- Leviathan Hatchling
	[1624] = 179831,	-- Abyssius
	[1625] = 179832,	-- Fragment of Anger
	[1626] = 179833,	-- Fragment of Suffering
	[1627] = 179834,	-- Fragment of Desire
	[1628] = 179835,	-- Sister of Temptation
	[1629] = 179836,	-- Stinkrot
	[1631] = 179837,	-- Hyjal Wisp
	[1632] = 179838,	-- Sunblade Micro-Defender
	[1633] = 179839,	-- Chaos Pup
	[1634] = 179840,	-- Wretched Servant
	[1635] = 179841,	-- K'ute
	[1636] = 179954,	-- Race MiniZep
	[1639] = 181086,	-- Graves
	--[1642] = 170272,	-- Salad	[This is a Garrison Fight, not tameable]
	[1655] = 177223,	-- Slithershock Elver
	[1656] = 177218,	-- Young Talbuk
	[1660] = 184480,	-- Fel Pup
	[1661] = 184481,	-- Lost Netherpup
	[1662] = 184482,	-- Cinder Pup
	[1663] = 187555,	-- Periwinkle Calf
	[1664] = 185055,	-- Nightmare Bell
	[1665] = 185591,	-- Ghostshell Crab
	[1666] = 185601,	-- Blorp
	[1672] = 187532,	-- Corrupted Nest Guardian
	[1687] = 188084,	-- Left Shark
	[1688] = 188235,	-- Crusher
	[1690] = 189357,	-- Shard of Cyrukh
	[1691] = 190020,	-- Nibbles
	[1692] = 190682,	-- Savage Cub
	[1693] = 190681,	-- Blazing Firehawk
	[1699] = 191071,	-- Enchanted Cauldron
	[1700] = 191072,	-- Enchanted Torch
	[1701] = 191073,	-- Enchanted Pen
	[1705] = 186299,	-- Grumpy
	[1706] = 191425,	-- Ashmaw Cub
	[1711] = 193680,	-- Skyhorn Nestling
	[1715] = 194393,	-- Nightwatch Swooper
	[1716] = 210669,	-- Fledgling Warden Owl
	[1717] = 210671,	-- Extinguished Eye
	[1718] = 210672,	-- Hateful Eye
	[1719] = 210673,	-- Eye of Inquisition
	[1720] = 193388,	-- Emmigosa
	[1721] = 193514,	-- Stormborne Whelpling
	[1722] = 210674,	-- Dream Whelpling
	[1723] = 210675,	-- Nightmare Whelpling
	[1725] = 191967,	-- Grumpling
	[1727] = 194357,	-- Nursery Spider
	[1751] = 193279,	-- Son of Goredome
	[1752] = 193368,	-- Crispin
	[1753] = 193434,	-- Bleakwater Jelly
	[1754] = 210677,	-- Sewer-Pipe Jelly
	[1755] = 194330,	-- Plump Jelly
	[1756] = 210678,	-- Ridgeback Piglet
	[1757] = 210679,	-- Brown Piglet
	[1758] = 210680,	-- Black Piglet
	[1759] = 210681,	-- Thaumaturgical Piglet
	[1760] = 194294,	-- Fel Piglet
	[1764] = 193572,	-- Energized Manafiend
	[1765] = 193589,	-- Empyreal Manafiend
	[1766] = 193588,	-- Empowered Manafiend
	[1777] = 193943,	-- Broot
	[1802] = 195368,	-- Fetid Waveling
	[1803] = 195369,	-- Thistleleaf Adventurer
	[1804] = 195370,	-- Risen Saber Kitten
	[1805] = 210682,	-- Alarm-o-Bot
	[1806] = 210683,	-- Knockoff Blingtron
	[1808] = 210691,	-- Leyline Broodling
	[1828] = 204148,	-- Baby Winston
	[1884] = 210694,	-- Baby Elderhorn
	[1885] = 210695,	-- Sunborne Val'kyr
	[1886] = 210696,	-- Trigger
	[1887] = 210697,	-- Wyrmy Tunkins
	[1888] = 210698,	-- Celestial Calf
	[1889] = 210699,	-- Felbat Pup
	[1890] = 210701,	-- Corgi Pup
	[1907] = 215560,	-- Pygmy Owl
	[1911] = 217218,	-- Sting Ray Pup
	[1918] = 221684,	-- Alliance Enthusiast
	[1919] = 221683,	-- Horde Fanatic
	[1920] = 221906,	-- Transmutant
	[1921] = 221907,	-- Untethered Wyrmling
	[1922] = 221908,	-- Lurking Owl Kitten
	[1926] = 223027,	-- Hungering Claw
	[1927] = 30152,	-- Ash'ana
	[1928] = 223339,	-- Firebat Pup
	[1929] = 223359,	-- Corgnelius
	[1930] = 223409,	-- Lagan
	[1931] = 224403,	-- Court Scribe
	[1932] = 224536,	-- Nightmare Lasher
	[1933] = 224786,	-- Nightmare Treant
	[1934] = 225200,	-- Benax
	[1936] = 225761,	-- Mischief
	[1937] = 226682,	-- Wondrous Wisdomball
	[1938] = 226813,	-- Rescued Fawn
	[1939] = 227051,	-- Legionnaire Murky
	[1940] = 227052,	-- Knight-Captain Murky
	[1941] = 227093,	-- Snowfang
	[1943] = 227113,	-- Noblegarden Bunny
	[1952] = 229090,	-- Dreadmaw
	[1953] = 229091,	-- Snobold Runt
	[1954] = 229092,	-- Nerubian Swarmer
	[1955] = 229093,	-- Magma Rageling
	[1956] = 229094,	-- Ironbound Proto-Whelp
	[1957] = 229095,	-- Runeforged Servitor
	[1958] = 229096,	-- Sanctum Cub
	[1959] = 229097,	-- Winter Rageling
	[1960] = 229098,	-- Snaplasher
	[1961] = 229099,	-- G0-R41-0N Ultratonk
	[1962] = 229100,	-- Creeping Tentacle
	[1963] = 229101,	-- Boneshard
	[1964] = 229102,	-- Blood Boil
	[1965] = 229103,	-- Blightbreath
	[1966] = 229104,	-- Soulbroken Whelpling
	[1967] = 229105,	-- Drudge Ghoul
	[1968] = 229106,	-- Wicked Soul
	[1969] = 229110,	-- Stardust
	[1974] = 230073,	-- Snowfeather Hatchling
	[1975] = 230074,	-- Direbeak Hatchling
	[1976] = 230075,	-- Sharptalon Hatchling
	[1977] = 230076,	-- Bloodgazer Hatchling
	[1978] = 230443,	-- Dutiful Squire
	[1979] = 230444,	-- Dutiful Gruntling
	[1984] = 231017,	-- Albino Buzzard
	[1997] = 232867,	-- Crackers
	[1998] = 233331,	-- Everliving Spore
	[1999] = 233333,	-- Cavern Moccasin
	[2000] = 233335,	-- Young Venomfang
	[2001] = 233647,	-- Dibbler
	[2002] = 233649,	-- Naxxy
	[2003] = 233650,	-- Hearthy
	[2004] = 233805,	-- Trashy
	[2017] = 234555,	-- Infinite Hatchling
	[2018] = 234556,	-- Paradox Spirit
	[2022] = 236285,	-- Tylarr Gronnden
	[2035] = 237250,	-- Bloodbrood Whelpling
	[2036] = 237251,	-- Frostbrood Whelpling
	[2037] = 237252,	-- Vilebrood Whelpling
	[2042] = 240064,	-- Scraps
	[2046] = 240385,	-- Arne's Test Pet
	[2047] = 240794,	-- Ban-Fu, Cub of Ban-Lu
	[2048] = 241072,	-- Golden Retriever
	[2049] = 242047,	-- Son of Skum
	[2050] = 243136,	-- Orphaned Felbat
	[2051] = 243499,	-- Twilight
	[2062] = 246105,	-- Shadow
	[2063] = 247123,	-- Sneaky Marmot
	[2065] = 247474,	-- Dig Rat
	[2071] = 248025,	-- Bronze Proto-Whelp
	[2072] = 248240,	-- Ageless Bronze Drake
	[2077] = 251191,	-- Ghost Shark
	[2078] = 253788,	-- Tinytron
	[2079] = 253790,	-- Discarded Experiment
	[2080] = 253799,	-- Rattlejaw
	[2081] = 253805,	-- Twilight Clutch-Sister
	[2082] = 253809,	-- Bound Stream
	[2083] = 253813,	-- Faceless Minion
	[2084] = 253816,	-- Zephyrian Prince
	[2085] = 253818,	-- Drafty
	[2086] = 253916,	-- Blazehound
	[2087] = 253918,	-- Cinderweb Recluse
	[2088] = 253924,	-- Surger
	[2089] = 253925,	-- Infernal Pyreclaw
	[2090] = 253926,	-- Faceless Mindlasher
	[2091] = 253927,	-- Corrupted Blood
	[2092] = 253928,	-- Unstable Tendril
	[2093] = 253929,	-- Amalgam of Destruction
	[2113] = 254255,	-- Felclaw Marsuul
	[2115] = 254196,	-- Cross Gazer
	[2116] = 254197,	-- Orphaned Marsuul
	[2117] = 254271,	-- Fel Lasher
	[2118] = 254295,	-- Docile Skyfin
	[2119] = 254296,	-- Fel-Afflicted Skyfin
	[2120] = 254297,	-- Grasping Manifestation
	[2121] = 254298,	-- Fossorial Bile Larva
	[2135] = 254749,	-- Rebellious Imp
	[2136] = 254763,	-- Uuna
	[2143] = 255702,	-- Tottle
	[2144] = 256010,	-- REUSE
	[2146] = 257603,	-- Perculia's Peculiar Parrot
	[2157] = 259758,	-- Dart
	[2163] = 261755,	-- Silithid Mini-Tank
	[2165] = 264001,	-- Francois
	[2184] = 272771,	-- Whomper
	[2185] = 272772,	-- Cap'n Crackers
	[2186] = 273159,	-- Spawn of Merektha
	[2187] = 273184,	-- Filthy Slime
	[2188] = 273195,	-- Poda
	[2189] = 273215,	-- Smoochums
	[2190] = 273839,	-- Guardian Cobra Hatchling
	[2192] = 273869,	-- Vengeful Chicken
	[2196] = 274202,	-- Lil' Tika
	[2197] = 274348,	-- Direhorn Hatchling
	[2198] = 274353,	-- Taptaf
	[2199] = 274380,	-- Restored Revenant
	[2201] = 274760,	-- Enchanted Tiki Mask
	[2202] = 274776,	-- Miimii
	[2352] = 277461,	-- Baa'l
	[2401] = 279129,	-- Rooter
	[2402] = 279171,	-- Brutus
	[2403] = 279205,	-- Abyssal Eel
	[2404] = 279206,	-- Seabreeze Bumblebee
	[2405] = 279207,	-- Corlain Falcon
	[2406] = 279208,	-- Drustvar Piglet
	[2407] = 279209,	-- Frenzied Cottontail
	[2408] = 279210,	-- Bilefang Skitterer
	[2409] = 279211,	-- Greatwing Macaw
	[2410] = 279212,	-- Mechanical Prairie Dog
	[2411] = 279213,	-- Wicker Pup
	[2412] = 279214,	-- Tiny Direhorn
	[2413] = 279215,	-- Zandalari Shinchomper
	[2414] = 279216,	-- Bloodfeaster Larva
	[2415] = 279217,	-- Tragg the Curious
	[2416] = 279218,	-- Lil' Ben'fon
	[2417] = 279219,	-- Ranishu Runt
	[2418] = 279220,	-- Child of Jani
	[2419] = 279221,	-- Swamp Toad
	[2420] = 279224,	-- Accursed Hexxer
	[2421] = 279225,	-- Saurolisk Hatchling
	[2422] = 279226,	-- Blue Flitter
	[2423] = 279227,	-- Freshwater Pincher
	[2424] = 279228,	-- Crimson Frog
	[2425] = 279230,	-- Barnacled Hermit Crab
	[2426] = 279231,	-- Sandstinger Wasp
	[2427] = 279232,	-- Cou'pa
	[2428] = 279233,	-- Carnivorous Lasher
	[2429] = 279234,	-- Azeriti
	[2430] = 279433,	-- Lost Platysaur
	[2431] = 279576,	-- Dreadtick Leecher
	[2432] = 279631,	-- Fuzzy Creepling
	[2433] = 279638,	-- Aldrusian Sproutling
	[2434] = 279643,	-- Voidwiggler
	[2435] = 279657,	-- Teeny Titan Orb
	[2436] = 279686,	-- Scabby
	[2437] = 279723,	-- Ragepeep
	[2438] = 279724,	-- Foulfeather
	[2439] = 279365,	-- Azerite Puddle
	[2440] = 279929,	-- Fozling
	[2441] = 279930,	-- Squawkling
	[2442] = 280157,	-- Bumbles
	[2443] = 280185,	-- Lil' Siege Tower
	[2444] = 280188,	-- Lil' War Machine
	[2445] = 177244,	-- Scuttle
	[2446] = 177237,	-- Sparkleshell Sandcrawler
	[2447] = 177236,	-- Kindleweb Spiderling
	[2448] = 177235,	-- Craghoof Kid
	[2449] = 177231,	-- False Knucklebump
	[2450] = 177230,	-- Tinder Pup
	[2451] = 280332,	-- Bloodstone Tunneler
	[2452] = 177241,	-- Poro
	[2453] = 280335,	-- Juvenile Brineshell
	[2454] = 280336,	-- Kunchong Hatchling
	[2455] = 177243,	-- Captain Nibs
	[2456] = 177242,	-- Barnaby
	[2457] = 280337,	-- Coldlight Surfrunner
	[2458] = 280334,	-- Muskflank Calfling
	[2459] = 280333,	-- Snort
	[2460] = 280338,	-- Voru'kar Leecher
	[2461] = 177239,	-- Inky
	[2462] = 177240,	-- Octopode Fry
	[2463] = 177229,	-- Sandshell Chitterer
	[2464] = 177228,	-- Deathsting Scorpid
	[2465] = 177222,	-- Playful Frostkin
	[2466] = 177225,	-- Giggling Flame
	[2467] = 177221,	-- Mischievous Zephyr
	[2468] = 177224,	-- Laughing Stonekin
	[2469] = 177226,	-- Thistlebrush Bud
	[2471] = 177219,	-- Littlehoof
	[2472] = 177217,	-- Snapper
	[2473] = 280331,	-- Sunscale Hatchling
	[2474] = 280617,	-- Gearspring Hopper
	[2475] = 280619,	-- Slippy
	[2476] = 280618,	-- Bloated Bloodfeaster
	[2477] = 279435,	-- Baby Crawg
	[2478] = 280728,	-- Sir Snips
	[2479] = 280727,	-- Bucketshell
	[2480] = 281878,	-- Test Pet
	[2482] = 283744,	-- Wolf Balloon
	[2483] = 283741,	-- Murloc Balloon
	[2484] = 283740,	-- Horse Balloon
	[2525] = 285843,	-- Redridge Tarantula
	[2526] = 286474,	-- Feathers
	[2527] = 286483,	-- Child of Pa'ku
	[2528] = 286484,	-- Spawn of Krag'wa
	[2529] = 286482,	-- Thunder Lizard Runt
	[2530] = 286514,	-- Mechantula
	[2531] = 286574,	-- Mechanical Cockroach
	[2532] = 286576,	-- Leper Rat
	[2533] = 286582,	-- Alarm-O-Dog
	[2534] = 286790,	-- Mini Spider Tank
	[2535] = 286837,	-- Wicker Wraith
	[2538] = 287997,	-- Dasher
	[2539] = 288006,	-- Trecker
	[2540] = 288009,	-- Tanzil
	[2541] = 288054,	-- Proper Parrot
	[2544] = 288486,	-- Darkshore Sentinel
	[2545] = 288582,	-- Gust of Cyclarus
	[2546] = 288592,	-- Detective Ray
	[2547] = 288595,	-- Hydrath Droplet
	[2548] = 288597,	-- Everburning Treant
	[2549] = 288598,	-- Void Jelly
	[2550] = 288600,	-- Zur'aj the Depleted
	[2551] = 288867,	-- Baby Stonehide
	[2552] = 288868,	-- Leatherwing Screecher
	[2553] = 288870,	-- Rotting Ghoul
	[2554] = 288875,	-- Needleback Pup
	[2555] = 288890,	-- Albino Duskwatcher
	[2556] = 288889,	-- Shadefeather Hatchling
	[2557] = 288895,	-- Firesting Buzzer
	[2558] = 288901,	-- Lord Woofington
	[2559] = 288910,	-- Tonguelasher
	[2560] = 288914,	-- Scritches
	[2561] = 288916,	-- Thunderscale Whelpling
	[2562] = 288919,	-- Crimson Octopode
	[2563] = 289359,	-- Nightwreathed Watcher
	[2564] = 289604,	-- Rebuilt Gorilla Bot
	[2565] = 289605,	-- Rebuilt Mechanical Spider
	[2566] = 289606,	-- Albatross Hatchling
	[2567] = 289622,	-- Crimson Bat Pup
	[2568] = 289629,	-- Cobalt Raven
	[2569] = 289633,	-- Violet Abyssal Eel
	[2575] = 291203,	-- Mr. Crabs
	[2576] = 291214,	-- Beakbert
	[2577] = 291215,	-- Froglet
	[2578] = 291223,	-- Scaley
	[2579] = 291513,	-- Stoneclaw
	[2580] = 291515,	-- Wayward Spirit
	[2581] = 291517,	-- Comet
	[2582] = 291533,	-- Baoh-Xi
	[2583] = 291537,	-- Azure Windseeker
	[2584] = 291547,	-- Spirit of the Spring
	[2585] = 291548,	-- Kor'thik Swarmling
	[2586] = 291549,	-- Amberglow Stinger
	[2587] = 291553,	-- Spawn of Garalon
	[2589] = 291556,	-- Living Amber
	[2590] = 291560,	-- Ravenous Prideling
	[2591] = 291561,	-- Happiness
	[2621] = 294206,	-- Lil' Nefarian
	[2622] = 294211,	-- Jingles
	[2623] = 294231,	-- Dottie
	[2638] = 300387,	-- Minimancer
	[2680] = 301015,	-- Zanj'ir Poker
	[2681] = 301042,	-- Murgle
	[2682] = 301043,	-- Necrofin Tadpole
	[2683] = 301020,	-- Kelpfin
	[2684] = 301021,	-- Glittering Diamondshell
	[2685] = 301022,	-- Sandclaw Nestseeker
	[2686] = 301023,	-- Pearlescent Glimmershell
	[2687] = 301024,	-- Lustrous Glimmershell
	[2688] = 301025,	-- Brilliant Glimmershell
	[2689] = 301026,	-- Chitterspine Needler
	[2690] = 301027,	-- Caverndark Nightmare
	[2691] = 301028,	-- Chitterspine Devourer
	[2692] = 301029,	-- Lightless Ambusher
	[2693] = 301030,	-- Spawn of Nalaada
	[2694] = 301031,	-- Mindlost Bloodfrenzy
	[2695] = 301032,	-- Daggertooth Frenzy
	[2696] = 301033,	-- Nameless Octopode
	[2697] = 301034,	-- Amethyst Softshell
	[2698] = 301035,	-- Prismatic Softshell
	[2699] = 301036,	-- Damplight Slug
	[2700] = 301037,	-- Wriggler
	[2701] = 301038,	-- Seafury
	[2702] = 301039,	-- Stormwrath
	[2703] = 301040,	-- Sandkeep
	[2704] = 301041,	-- Scalebrood Hydra
	[2706] = 301044,	-- Brinestone Algan
	[2707] = 301045,	-- Budding Algan
	[2708] = 301046,	-- Coral Lashling
	[2709] = 301047,	-- Skittering Eel
	[2710] = 301048,	-- Drowned Hatchling
	[2711] = 301049,	-- Golden Snorf
	[2712] = 301050,	-- Snowsoft Nibbler
	[2713] = 301051,	-- Mustyfur Snooter
	[2714] = 301052,	-- OOX-35/MG
	[2715] = 301053,	-- Lost Robogrip
	[2716] = 301054,	-- Utility Mechanoclaw
	[2717] = 301055,	-- Microbot XD
	[2718] = 301056,	-- Microbot 8D
	[2719] = 301136,	-- Bonebiter
	[2720] = 301137,	-- Arachnoid Skitterbot
	[2721] = 301162,	-- Echoing Oozeling
	[2747] = 301985,	-- Gruesome Belcher
	[2748] = 301992,	-- Ziggy
	[2749] = 301996,	-- Crypt Fiend
	[2750] = 302003,	-- Shrieker
	[2753] = 303023,	-- Spraybot 0D
	[2754] = 300367,	-- Ghostly Whelpling
	[2755] = 300934,	-- Adventurous Hopling
	[2756] = 303608,	-- Irradiated Elementaling
	[2757] = 294275,	-- Slimy Otter
	[2758] = 294278,	-- Slimy Eel
	[2760] = 294276,	-- Slimy Octopode
	[2761] = 294277,	-- Slimy Fangtooth
	[2762] = 294279,	-- Slimy Darkhunter
	[2763] = 294280,	-- Slimy Hermit Crab
	[2765] = 294274,	-- Slimy Sea Slug
	[2766] = 303784,	-- Armored Vaultbot
	[2767] = 303899,	-- Burnout
	[2776] = 307264,	-- Rikki
	[2777] = 307654,	-- Gillvanas
	[2778] = 307655,	-- Finduin
	[2779] = 308067,	-- Anima Wyrmling
	[2780] = 308369,	-- Daisy
	[2792] = 309516,	-- Papi
	[2793] = 309519,	-- Sunsoaked Flitter
	[2794] = 309522,	-- Crimson Skipper
	[2795] = 311289,	-- Jenafur
	[2796] = 312029,	-- Void-Scarred Toad
	[2797] = 312030,	-- Void-Scarred Pup
	[2798] = 312833,	-- Plagueborn Slime
	[2832] = 315221,	-- Muar
	[2833] = 315225,	-- Void-Scarred Anubisath
	[2834] = 315229,	-- Aqir Hivespawn
	[2835] = 315231,	-- Ra'kim
	[2836] = 315270,	-- Eye of Corruption
	[2837] = 315285,	-- Gloop
	[2838] = 315290,	-- C'Thuffer
	[2839] = 315297,	-- Void-Scarred Hare
	[2840] = 315298,	-- Void-Scarred Cat
	[2841] = 315301,	-- Void-Scarred Rat
	[2842] = 315302,	-- Anomalus
	[2843] = 315303,	-- Void-Scarred Beetle
	[2844] = 315304,	-- Reek
	[2845] = 315339,	-- K'uddly
	[2846] = 315353,	-- Corrupted Tentacle
	[2847] = 315355,	-- Rotbreath
	[2848] = 315360,	-- Aqir Tunneler
	[2849] = 315363,	-- Pygmy Camel
	[2850] = 315367,	-- Cursed Dune Watcher
	[2851] = 315370,	-- Wicked Lurker
	[2852] = 315371,	-- Jade Defender
	[2853] = 315372,	-- Windfeather Chick
	[2868] = 316629,	-- Experiment 13
	[2869] = 316628,	-- Tinyclaw
	[2870] = 316627,	-- Wailing Lasher
	[2872] = 318300,	-- Shadowbarb Hatchling
	[2878] = 318876,	-- Renny
	[2888] = 329900,	-- Glimr
	[2889] = 330997,	-- PHA7-YNX
	[2891] = 333794,	-- Blushing Spiderling
	[2892] = 333796,	-- Bound Lightspawn
	[2893] = 333797,	-- Animated Tome
	[2894] = 333800,	-- Burdened Soul
	[2896] = 333799,	-- Primordial Bogling
	[2897] = 333795,	-- Wrathling
	[2898] = 333802,	-- Raw Emotion
	[2899] = 333804,	-- Court Messenger
	[2900] = 333819,	-- Dal
	[2901] = 333803,	-- Trapped Stonefiend
	[2903] = 333865,	-- Crimson Dredwing Pup
	[2904] = 333868,	-- Violet Dredwing Pup
	[2905] = 334160,	-- Dodger
	[2907] = 334159,	-- Rocky
	[2908] = 334158,	-- Chirpy Valeshrieker
	[2909] = 334157,	-- Cloudfeather Fledgling
	[2910] = 334156,	-- Floofa
	[2911] = 334155,	-- Amber Glitterwing
	[2912] = 334154,	-- Dusty Sporeflutterer
	[2913] = 334153,	-- Fuzzy Shimmermoth
	[2914] = 334151,	-- Starry Dreamfoal
	[2915] = 334150,	-- Willowbreeze
	[2916] = 334149,	-- Hungry Burrower
	[2917] = 334146,	-- Gloober, as G'huun
	[2918] = 334145,	-- Grubby
	[2920] = 334143,	-- Gorm Needler
	[2921] = 334142,	-- Gorm Harrier
	[2922] = 334141,	-- Devouring Animite
	[2923] = 334139,	-- Pearlwing Heron
	[2925] = 334789,	-- Golden Cloudfeather
	[2928] = 334987,	-- Helpful Glimmerfly
	[2931] = 334798,	-- Brightscale Hatchling
	[2932] = 335050,	-- Silvershell Snapper
	[2933] = 334796,	-- Sable
	[2934] = 335053,	-- Goldenpaw Kit
	[2935] = 335056,	-- Purity
	[2938] = 335076,	-- Gilded Wader
	[2940] = 335083,	-- Devoured Wader
	[2941] = 335085,	-- Indigo
	[2942] = 335087,	-- Spirited Skyfoal
	[2944] = 335698,	-- Oonar's Arm
	[2945] = 335753,	-- Corpulent Bonetusk
	[2946] = 335755,	-- Pernicious Bonetusk
	[2947] = 335762,	-- Luminous Webspinner
	[2948] = 335764,	-- Boneweave Hatchling
	[2949] = 335765,	-- Skittering Venomspitter
	[2952] = 335966,	-- Bubbling Pustule
	[2953] = 335969,	-- Shy Melvin
	[2954] = 335972,	-- Plaguelouse Larva
	[2955] = 335974,	-- Corpselouse Larva
	[2956] = 335977,	-- Feasting Larva
	[2957] = 335979,	-- Writhing Spine
	[2958] = 335980,	-- Backbone
	[2959] = 336020,	-- Micromancer
	[2960] = 336021,	-- Invertebrate Oil
	[2961] = 336022,	-- Sludge Feeler
	[2962] = 336024,	-- Toenail
	[2963] = 336030,	-- Mu'dud
	[2964] = 336031,	-- Foulwing Buzzer
	[2965] = 336311,	-- Bloodfeaster Spiderling
	[2966] = 337031,	-- Sinheart
	[2967] = 337694,	-- Dredger Butler
	[3006] = 339590,	-- Stoneskin Dredwing Pup
	[3008] = 339593,	-- Lost Quill
	[3009] = 339668,	-- The Count
	[3010] = 339670,	-- Sinfall Screecher
	[3011] = 339671,	-- Battie
	[3012] = 339674,	-- Stony
	[3013] = 339677,	-- Bloodlouse Larva
	[3016] = 339976,	-- Fun Guss
	[3017] = 339981,	-- Leafadore
	[3018] = 339982,	-- Trootie
	[3019] = 339983,	-- Stemmins
	[3020] = 339997,	-- Runelight Leaper
	[3022] = 339999,	-- Shimmerbough Hoarder
	[3023] = 340002,	-- Sir Reginald
	[3024] = 340710,	-- Char
	[3025] = 340717,	-- Carpal
	[3026] = 340721,	-- Tower Deathroach
	[3027] = 340722,	-- Hissing Deathroach
	[3028] = 340723,	-- Severs
	[3029] = 341289,	-- Maw Crawler
	[3030] = 341292,	-- Ashen Chomper
	[3032] = 341293,	-- Frenzied Mawrat
	[3033] = 341295,	-- Maw Stalker
	[3034] = 341298,	-- Torghast Lurker
	[3035] = 341301,	-- Lavender Nibbler
	[3036] = 341302,	-- Will of Remornia
	[3037] = 341492,	-- Dread
	[3038] = 341493,	-- Undying Deathroach
	[3039] = 341494,	-- Decaying Mawrat
	[3040] = 341495,	-- Sharpclaw
	[3041] = 341497,	-- Death Seeker
	[3042] = 341515,	-- Ruffle
	[3043] = 341516,	-- Jiggles
	[3044] = 341519,	-- Spinemaw Gormling
	[3045] = 341635,	-- Iridescent Ooze
	[3046] = 341825,	-- Putrid Geist
	[3047] = 343161,	-- Spinebug
	[3053] = 344755,	-- Moon-Touched Netherwhelp
	[3054] = 344792,	-- Archivist's Quill
	[3061] = 345740,	-- Steward Featherling
	[3062] = 345741,	-- Lost Featherling
	[3063] = 345742,	-- Larion Pouncer
	[3064] = 345744,	-- Larion Cub
	[3065] = 345743,	-- Courage
	[3066] = 346192,	-- Lucy
	[3067] = 346236,	-- Spriggan Trickster
	[3079] = 346260,	-- Winterleaf Spriggan
	[4234] = 384796,	-- Pebble
	[4235] = 388541,	-- Hoplet
	[4236] = 407786,	-- Glub
	[4233] = 359755,	-- Flurky
	[4329] = 428053,	-- Arfus
	[4273] = 423843,	-- Cypress
	[4274] = 423868,	-- Lil' Wrathion
	[4532] = 446916,	-- Pinchy the Plunderer
	[446105] = 446105,	-- Skeletal Wind Serpent
};
for key,value in pairs(CompanionPetSpeciesIDToSpellID) do
	if CompanionPetSpellIDToSpeciesID[value] then
		print("CompanionPetSpellIDToSpeciesID ALREADY HAS KEY ", key, value);
	else
		CompanionPetSpellIDToSpeciesID[value] = key;
	end
end

local Pets = root("_petDB");
local Items = ItemDBConditional;
local i = function(itemID, speciesID, altSpeciesID)
	local item = Items[itemID];
	item.ignoreBonus = true;
	if speciesID > 0 then
		item.speciesID = speciesID;
		local spellID = CompanionPetSpeciesIDToSpellID[speciesID];
		if spellID then item.spellID = spellID; end
		if altSpeciesID then item.altSpeciesID = altSpeciesID; end
	elseif item.speciesID then
		item.speciesID = nil;
	end
	return item;
end
local n = function(npcID, speciesID)
	local pet = { ["speciesID"] = speciesID, ["cr"] = npcID, ["ignoreBonus"] = true };
	Pets[npcID] = pet;
	return pet;
end

-- If the pet is obtained from an item, use i(itemID, speciesID);
-- If the pet can be caught through pet battle use n(npcID, speciesID);
-- Otherwise use i(0, speciesID);	example if the pet is obtained from store.
-- At the end the comment should contain the pet name not npc or item name.
-- To acquire itemID, npcID and speciesID one can use wowhead. If you want speciesID from wowhead it can be found in "Summoned by" tab.
-- To manually collect the speciesID in-game (live or PTR):
	-- /dump C_PetJournal.FindPetIDByName("Cypress")
-- The speciesID can also be found via various addons
	-- In the Rematch options, make sure "Show Species ID & Ability ID" is checked.
	-- The speciesID is the number by the icon that looks like a cogwheel on the card that pops up when you hover over a pet.
-- MissingIDs also host speciesIDs that are still missing in our database. For a full list of speciesID see Database Harvester > Raw > Pets.txt

-- #if ANYCLASSIC
-----------------
-- CLASSIC WOW --
-----------------
i(198665, 4234);	-- Pebble's Pebble
i(200060, 4235);	-- Hoplet (Classic)
i(204982, 4236);	-- Glub
i(187794, 4233);	-- Flurky
i(211082, 4329);	-- Arfus (WOTLK)
i(209877, 4273);	-- Cypress (WOTLK)
i(209945, 4274);	-- Lil' Wrathion (WOTLK)
i(0, 4532);			-- Pinchy the Plunderer (WOTLK)
-- #if SEASON_OF_DISCOVERY
i(220620, 446105);	-- Skeletal Wind Serpent (SOD) [Sunken Temple]
-- #endif
i(224002, 4585);	-- Swoopy (Cata)
-- #endif

-----------------
--   CLASSIC   --
-----------------
i(11023, 52);		-- Ancona Chicken
i(10360, 75);		-- Black Kingsnake
i(8491, 42);		-- Black Tabby Cat
i(8485, 40);		-- Bombay Cat
i(10394, 70);		-- Brown Prairie Dog
i(10361, 77);		-- Brown Snake
i(8496, 47);		-- Cockatiel
i(8486, 41);		-- Cornish Rex Cat
i(10392, 78);		-- Crimson Snake
i(8499, 58);		-- Crimson Whelpling
i(10822, 56);		-- Dark Whelpling
i(20769, 114);		-- Disgusting Oozeling
i(8498, 59);		-- Emerald Whelpling
i(21301, 119);		-- Father Winter's Helper
i(8500, 68);		-- Great Horned Owl
i(8492, 50);		-- Green Wing Macaw
i(8501, 67);		-- Hawk Owl
i(8494, 49);		-- Hyacinth Macaw
i(19450, 106);		-- Jubling
i(15996, 95);		-- Lifelike Toad
i(11826, 86);		-- Lil' Smoky
i(10398, 83);		-- Mechanical Chicken
i(4401, 39);		-- Mechanical Squirrel
i(13584, 93);		-- Mini Diablo
i(23007, 126);		-- Mr. Wiggles
i(20371, 107);		-- Murky
i(8487, 43);		-- Orange Tabby Cat
i(13583, 92);		-- Panda Cub
i(22235, 122);		-- Peddlefeet
i(11825, 85);		-- Pet Bombling
i(22781, 124);		-- Poley
i(8495, 51);		-- Senegal
i(8490, 44);		-- Siamese Cat
i(8488, 45);		-- Silver Tabby Cat
i(12529, 90);		-- Smolderweb Hatchling [Old]
i(8497, 72);		-- Snowshoe Rabbit
i(23002, 125);		-- Speedy
i(23083, 128);		-- Spirit of Summer
i(11474, 87);		-- Sprite Darter Hatchling
i(22780, 1073);		-- Terky
i(19055, 757);		-- Tiny Green Dragon
i(19054, 758);		-- Tiny Red Dragon
i(21309, 117);		-- Tiny Snowman
i(21277, 116);		-- Tranquil Mechanical Yeti
i(11026, 65);		-- Tree Frog
i(10393, 55);		-- Undercity Cockroach
i(11110, 84);		-- Westfall Chicken
i(23015, 127);		-- Whiskers the Rat
i(8489, 46);		-- White Kitten
i(21308, 118);		-- Winter Reindeer
i(21305, 120);		-- Winter's Little Helper
i(11027, 64);		-- Wood Frog
i(12264, 89);		-- Worg Pup
i(13582, 94);		-- Zergling
--- NYI ---
i(11903, 0);		-- Cat Carrier (Corrupted Kitten)
i(18964, 0);		-- Loggerhead Snapjaw / Turtle Egg (Loggerhead)
i(13342, 0);		-- Pet Fish
i(13343, 0);		-- Pet Stone

-----------------
-- PATCH 2.0.5 --
-----------------
i(32588, 156);		-- Bananas
i(29958, 145);		-- Blue Dragonhawk Hatchling
i(29901, 138);		-- Blue Moth
i(29364, 137);		-- Brown Rabbit
i(29953, 142);		-- Golden Dragonhawk Hatchling
i(22114, 121);		-- Gurky
i(23713, 130);		-- Hippogryph Hatchling
i(30360, 111);		-- Lurky
i(27445, 132);		-- Magical Crawdad
i(29363, 136);		-- Mana Wyrmling
i(31760, 149);		-- Miniwing
i(25535, 131);		-- Netherwhelp
i(29956, 143);		-- Red Dragonhawk Hatchling
i(29902, 139);		-- Red Moth
i(29957, 144);		-- Silver Dragonhawk Hatchling
i(29904, 141);		-- White Moth
i(29903, 140);		-- Yellow Moth

-----------------
-- PATCH 2.1.0 --
-----------------
i(32616, 158);		-- Egbert
i(20651, 1168);		-- Murki
i(32622, 159);		-- Peanut
i(32617, 157);		-- Willy

-----------------
-- PATCH 2.1.1 --
-----------------
--- NYI ---
i(31665, 0);		-- Toy RC Mortar Tank

-----------------
-- PATCH 2.2.2 --
-----------------
i(29960, 146);		-- Firefly
i(32498, 155);		-- Lucky
--- NYI ---
i(32465, 154);		-- Lucky

-----------------
-- PATCH 2.2.2 --
-----------------
i(33154, 162);		-- Sinister Squashling
i(32233, 153);		-- Wolpertinger

-----------------
-- PATCH 2.3.0 --
-----------------
i(34535, 57);		-- Azure Whelpling
i(34425, 191);		-- Clockwork Rocket Bot
i(34493, 169);		-- Dragon Kite
i(34518, 170);		-- Golden Pig
i(33993, 165);		-- Mojo
i(34492, 168);		-- Rocket Chicken
i(34519, 171);		-- Silver Pig
i(34478, 167);		-- Tiny Sporebat

-----------------
-- PATCH 2.4.0 --
-----------------
i(35350, 174);		-- Chuck
i(33818, 164);		-- Muckbreath
i(35504, 175);		-- Phoenix Hatchling
i(34955, 172);		-- Searing Scorchling
i(35349, 173);		-- Snarly
i(33816, 163);		-- Toothy

-----------------
-- PATCH 2.4.2 --
-----------------
i(38050, 183);		-- Ethereal Soul-Trader
i(39656, 189);		-- Mini Tyrael
i(38628, 186);		-- Nether Ray Fry

-----------------
-- PATCH 2.4.3 --
-----------------
i(37298, 180);		-- Essence of Competition
i(37297, 179);		-- Spirit of Competition

-----------------
-- PATCH 3.0.2 --
-----------------
i(40653, 160);		-- Stinker
i(38658, 187);		-- Vampiric Batling
--- NYI ---
i(39148, 0);		-- Baby Coralshell Turtle
i(21168, 0);		-- Baby Shark

-----------------
-- PATCH 3.0.3 --
-----------------
i(44819, 202);		-- Baby Blizzard Bear
i(39898, 197);		-- Cobra Hatchling
i(39286, 188);		-- Frosty
i(39973, 190);		-- Ghostly Skull
i(43698, 193);		-- Giant Sewer Rat
i(44738, 199);		-- Kirin Tor Familiar
i(44723, 198);		-- Pengu
i(44721, 196);		-- Proto-Drake Whelp
i(39896, 194);		-- Tickbird Hatchling
i(39899, 195);		-- White Tickbird Hatchling

-----------------
-- PATCH 3.1.0 --
-----------------
i(44822, 74);		-- Albino Snake
i(44841, 203);		-- Little Fawn
i(44794, 200);		-- Spring Rabbit
i(44983, 211);		-- Strand Crawler
--- NYI ---
i(45942, 0);		-- XS-001 Constructor Bot

-----------------
-- PATCH 3.1.2 --
-----------------
i(45180, 217);		-- Murkimus the Gladiator [Murkimus' Little Spear]

-----------------
-- PATCH 3.2.0 --
-----------------
i(44984, 212);		-- Ammen Vale Lashling
i(45022, 216);		-- Argent Gruntling
i(44998, 214);		-- Argent Squire
i(46545, 225);		-- Curious Oracle Hatchling
i(46544, 226);		-- Curious Wolvar Pup
i(48112, 232);		-- Darting Hatchling
i(48114, 233);		-- Deviate Hatchling
i(44970, 205);		-- Dun Morogh Cub
i(44973, 207);		-- Durotar Scorpion
i(44974, 209);		-- Elwynn Lamb
i(44982, 213);		-- Enchanted Broom
i(46802, 228);		-- Grunty
i(48116, 234);		-- Gundrak Hatchling
i(48118, 235);		-- Leaping Hatchling
i(45002, 215);		-- Mechanopeep
i(44980, 210);		-- Mulgore Hatchling
i(48120, 236);		-- Obsidian Hatchling
i(46707, 166);		-- Pint-Sized Pink Pachyderm
i(48122, 237);		-- Ravasaur Hatchling
i(48124, 238);		-- Razormaw Hatchling
i(48126, 239);		-- Razzashi Hatchling
i(45606, 218);		-- Sen'jin Fetish
i(46820, 229);		-- Shimmering Wyrmling [A]
i(46821, 229);		-- Shimmering Wyrmling [H]
i(44965, 204);		-- Teldrassil Sproutling
i(44971, 206);		-- Tirisfal Batling

-----------------
-- PATCH 3.2.2 --
-----------------
i(49693, 249);		-- Lil' K.T.
-- #if AFTER MOP
i(46831, 1351);		-- Macabre Marionette [NOTE: This pet could not be learned until MOP!]
-- #endif
i(41133, 192);		-- Mr. Chilly
i(49362, 243);		-- Onyxian Whelpling
i(49665, 248);		-- Pandaren Monk
i(49343, 242);		-- Spectral Tiger Cub
i(44810, 201);		-- Plump Turkey
i(49287, 241);		-- Tuskarr Kite
--- NYI ---
i(0, 230);			-- Macabre Marionette

-----------------
-- PATCH 3.3.0 --
-----------------
i(46398, 224);		-- Calico Cat
i(49646, 244);		-- Core Hound Pup
i(49912, 250);		-- Perky Pug
i(50446, 251);		-- Toxic Wasteling

-----------------
-- PATCH 3.3.2 --
-----------------
i(49662, 245);		-- Gryphon Hatchling
i(49663, 246);		-- Wind Rider Cub

-----------------
-- PATCH 3.3.3 --
-----------------
i(54436, 254);		-- Blue Clockwork Rocket Bot
i(53641, 253);		-- Frigid Frostling
i(54847, 256);		-- Lil' XT

-----------------
-- PATCH 3.3.5 --
-----------------
i(56806, 258);		-- Mini Thor

-----------------
-- PATCH 4.0.1 --
-----------------
i(67418, 294);		-- Deathy
i(62540, 268);		-- Lil' Deathwing
--- NYI ---
i(67417, 0);		-- [DND] Lil' Deathwing Placeholder
i(44972, 0);		-- Alarming Clockbot (NOT IN USE)

-----------------
-- PATCH 4.0.3 --
-----------------
i(63398, 272);		-- Armadillo Pup
i(65661, 259);		-- Blue Mini Jouster
i(64372, 277);		-- Clockwork Gnome
i(60847, 264);		-- Crawling Claw
i(63138, 270);		-- Dark Phoenix Hatchling
i(60216, 262);		-- De-Weaponized Mechanical Companion
i(67282, 293);		-- Elementium Geode
i(67274, 267);		-- Enchanted Lantern
i(60955, 266);		-- Fossilized Hatchling
i(64403, 278);		-- Fox Kit
i(65662, 260);		-- Gold Mini Jouster
i(65363, 282);		-- Guild Herald [A]
i(65364, 283);		-- Guild Herald [H]
i(65361, 280);		-- Guild Page [A]
i(65362, 281);		-- Guild Page [H]
i(46894, 231);		-- Jade Tiger
i(67128, 285);		-- Landro's Lil' XT
i(68385, 297);		-- Lil' Ragnaros
i(67275, 292);		-- Magic Lamp
i(68618, 296);		-- Moonkin Hatchling [A]
i(68619, 298);		-- Moonkin Hatchling [H]
i(66076, 286);		-- Mr. Grubbs
i(48527, 240);		-- Onyx Panther
i(60869, 265);		-- Pebble
i(59597, 261);		-- Personal World Destroyer
i(63355, 271);		-- Rustberg Gull [A]
i(64996, 271);		-- Rustberg Gull [H]
i(66073, 289);		-- Scooter the Snail
i(66067, 291);		-- Singing Sunflower
i(66080, 287);		-- Tiny Flamefly
i(64494, 279);		-- Tiny Shale Spider
i(46325, 220);		-- Withers
i(49664, 247);		-- Zipao Tiger
--- NYI ---
i(66075, 0);		-- Bubbles
i(62769, 0);		-- Hardboiled Egg
i(67600, 0);		-- Lil' Alexstrasza
i(66070, 0);		-- Lizzy

-----------------
-- PATCH 4.0.6 --
-----------------
i(68673, 90);		-- Smolderweb Hatchling

-----------------
-- PATCH 4.1.0 --
-----------------
i(70099, 316);		-- Cenarion Hatchling
i(68840, 302);		-- Landro's Lichling
i(69251, 307);		-- Lashtail Hatchling
i(69648, 308);		-- Legs
i(68841, 303);		-- Nightsaber Cub
i(68833, 301);		-- Panther Cub
i(69821, 309);		-- Pterrordax Hatchling
i(69992, 229);		-- Shimmering Wyrmling (No Rep Requirement)
i(69991, 167);		-- Tiny Sporebat
i(69824, 310);		-- Voodoo Figurine
i(69239, 306);		-- Winterspring Cub

-----------------
-- PATCH 4.2.0 --
-----------------
i(72042, 331);		-- Alliance Balloon
i(71387, 325);		-- Brilliant Kaliri
i(54810, 255);		-- Celestial Dragon
i(71076, 321);		-- Creepy Crate
i(70160, 318);		-- Crimson Lasher
i(70908, 319);		-- Feline Familiar
i(72068, 311);		-- Guardian Cub
i(72045, 332);		-- Horde Balloon
i(70140, 317);		-- Hyjal Bear Cub
i(71033, 320);		-- Lil' Tarecgosa
i(71726, 329);		-- Murkablo
i(46892, 217);		-- Murkimus the Gladiator [Murkimus' Tiny Spear]
i(71140, 323);		-- Nuts
--- NYI ---
i(0, 257);			-- Murkimus the Gladiator

-----------------
-- PATCH 4.3.0 --
-----------------
i(73762, 336);		-- Darkmoon Balloon
i(74981, 343);		-- Darkmoon Cub
i(73764, 330);		-- Darkmoon Monkey
i(73903, 338);		-- Darkmoon Tonk
i(73765, 335);		-- Darkmoon Turtle
i(73905, 339);		-- Darkmoon Zeppelin
i(74611, 342);		-- Festival Lantern
i(76062, 346);		-- Fetish Shaman
i(72134, 333);		-- Gregarious Grell
i(73797, 337);		-- Lumpy
i(74610, 341);		-- Lunar Lantern
i(71624, 328);		-- Purple Puffer
i(72153, 665);		-- Sand Scarab
i(73953, 340);		-- Sea Pony
i(78916, 347);		-- Soul of the Aspects
--- NYI ---
i(0, 344);			-- Green Balloon
i(0, 345);			-- Yellow Balloon

-----------------
-- PATCH 4.3.2 --
-----------------
i(79744, 348);		-- Eye of the Legion

-----------------
-- PATCH 5.0.4 --
-----------------
i(86563, 836);		-- Aqua Strider
i(90177, 903);		-- Baneling
i(89368, 849);		-- Chi-Ji Kite
i(80008, 848);		-- Darkmoon Rabbit
i(85578, 821);		-- Feral Vermling
i(84105, 847);		-- Fishy
i(90897, 278);		-- Fox Kit [A]
i(90898, 278);		-- Fox Kit [H]
i(86564, 834);		-- Grinder
i(86562, 835);		-- Hopling
i(0, 792);			-- Jade Crane Chick
i(82774, 845);		-- Jade Owl
i(89686, 856);		-- Jade Tentacle
i(85871, 671);		-- Lucky Quilen Cub
i(87526, 844);		-- Mechanical Pandaren Dragonling
i(89587, 381);		-- Porcupette
i(85222, 1042);		-- Red Cricket
i(82775, 846);		-- Sapphire Cub
i(88147, 820);		-- Singing Cricket
i(90953, 1127);		-- Spectral Cub
i(85220, 650);		-- Terrible Turnip
i(85513, 802);		-- Thundering Serpent Hatchling
i(85447, 652);		-- Tiny Goldfish
i(89736, 855);		-- Venus
i(89367, 850);		-- Yu'lon Kite
--- NPC ---
n(61325, 635);		-- Adder
n(62189, 487);		-- Alpine Chipmunk
n(63550, 724);		-- Alpine Foxling
n(63551, 725);		-- Alpine Foxling Kit
n(61690, 441);		-- Alpine Hare
n(65187, 732);		-- Amber Moth
n(62182, 838);		-- Amethyst Shale Hatchling
n(63288, 716);		-- Amethyst Spiderling
n(62864, 558);		-- Arctic Fox Kit
n(62693, 641);		-- Arctic Hare
n(62364, 632);		-- Ash Lizard
n(61420, 427);		-- Ash Spiderling
n(61385, 425);		-- Ash Viper
n(61324, 411);		-- Baby Ape
n(63062, 706);		-- Bandicoon
n(63064, 707);		-- Bandicoon Kit
n(61829, 626);		-- Bat
n(61319, 406);		-- Beetle
n(62815, 649);		-- Biletoad
n(60649, 374);		-- Black Lamb
n(61257, 398);		-- Black Rat
n(61890, 455);		-- Blighted Squirrel
n(61826, 456);		-- Blighthawk
n(62695, 639);		-- Borean Marmot
n(61752, 449);		-- Brown Marmot
n(62992, 380);		-- Bucktooth Flapper
n(62885, 540);		-- Carrion Rat
n(62019, 459);		-- Cat
n(62129, 474);		-- Cheetah Cub
n(62664, 646);		-- Chicken
n(62620, 518);		-- Clefthoof Runt
n(64242, 742);		-- Clouded Hedgehog
n(61384, 393);		-- Cockroach
n(62991, 562);		-- Coral Adder
n(62190, 488);		-- Coral Snake
n(62116, 468);		-- Creepy Crawly
n(62242, 507);		-- Crested Owl
n(62927, 559);		-- Crimson Geode
n(61314, 421);		-- Crimson Moth
n(62922, 554);		-- Crimson Shale Hatchling
n(63548, 745);		-- Crunchy Scorpion
n(62925, 556);		-- Crystal Beetle
n(62435, 634);		-- Crystal Spider
n(63847, 751);		-- Dancing Water Skimmer
n(62250, 508);		-- Darkshore Cub
n(62887, 755);		-- Death's Head Cockroach
n(62924, 555);		-- Deepholm Cockroach
n(62186, 484);		-- Desert Spider
n(62640, 523);		-- Devouring Maggot
n(62375, 504);		-- Diemetradon Hatchling
n(62852, 537);		-- Dragonbone Hatchling
n(62115, 467);		-- Dung Beetle
n(61253, 396);		-- Dusk Spiderling
n(62178, 479);		-- Elfin Rabbit
n(63850, 747);		-- Effervescent Glowfly
n(62127, 631);		-- Emerald Boa
n(62915, 837);		-- Emerald Shale Hatchling
n(62994, 564);		-- Emerald Turtle
n(65203, 746);		-- Emperor Crab
n(61088, 383);		-- Eternal Strider
n(61165, 447);		-- Fawn
n(62621, 519);		-- Fel Flame
n(61830, 457);		-- Festering Maggot
n(65054, 714);		-- Feverbite Hatchling
n(61328, 415);		-- Fire Beetle
n(62886, 541);		-- Fire-Proof Roach
n(62641, 644);		-- Fjord Rat
n(62669, 529);		-- Fjord Worg Pup
n(62555, 514);		-- Flayer Youngling
n(61171, 395);		-- Fledgling Buzzard
n(62627, 521);		-- Fledgling Nether Ray
n(62177, 478);		-- Forest Moth
n(61320, 407);		-- Forest Spiderling
n(62312, 495);		-- Frog
n(62916, 756);		-- Fungal Moth
n(63002, 569);		-- Garden Frog
n(65215, 753);		-- Garden Moth
n(62176, 477);		-- Gazelle Fawn
n(63838, 748);		-- Gilded Moth
n(63098, 630);		-- Gilnean Raven
n(62130, 475);		-- Giraffe Calf
n(61438, 430);		-- Gold Beetle
n(63841, 749);		-- Golden Civet
n(63842, 750);		-- Golden Civet Kitten
n(61704, 443);		-- Grasslands Cottontail
n(63549, 733);		-- Grasslands Hopper
n(62050, 464);		-- Grey Moth
n(62818, 647);		-- Grizzly Squirrel
n(62884, 539);		-- Grotto Vole
n(63004, 571);		-- Grove Viper
n(61751, 448);		-- Hare
n(62905, 550);		-- Highlands Mouse
n(62907, 823);		-- Highlands Skunk
n(62906, 645);		-- Highlands Turkey
n(62894, 851);		-- Horned Lizard
n(62185, 483);		-- Horny Toad
n(61368, 648);		-- Huge Toad
n(62819, 534);		-- Imperial Eagle Chick
n(61827, 628);		-- Infected Fawn
n(61828, 627);		-- Infected Squirrel
n(61758, 453);		-- Infested Bear Cub
n(61691, 442);		-- Irradiated Roach
n(61718, 446);		-- Jade Oozeling
n(63715, 699);		-- Jumping Spider
n(62997, 565);		-- Jungle Darter
n(63304, 678);		-- Jungle Grub
n(61443, 438);		-- King Snake
n(63953, 680);		-- Kuitan Mongoose
n(62022, 461);		-- Larva
n(61386, 429);		-- Lava Beetle
n(61383, 423);		-- Lava Crab
n(62896, 545);		-- Leopard Scorpid
n(63919, 702);		-- Leopard Tree Frog
n(61459, 437);		-- Little Black Ram
n(61321, 408);		-- Lizard Hatchling
n(62893, 543);		-- Locust
n(61317, 404);		-- Long-tailed Mole
n(61905, 458);		-- Lost of Lordaeron
n(65124, 718);		-- Luyu Moth
n(62892, 542);		-- Mac Frog
n(61753, 450);		-- Maggot
n(63094, 708);		-- Malayan Quillrat
n(63095, 709);		-- Malayan Quillrat Pup
n(63096, 710);		-- Marsh Fiddler
n(63003, 570);		-- Masked Tanuki
n(63716, 703);		-- Masked Tanuki Pup
n(65185, 722);		-- Mei-Li Sparkler
n(62317, 500);		-- Minifernal
n(62998, 566);		-- Mirror Strider
n(61372, 422);		-- Moccasin
n(61425, 428);		-- Molten Hatchling
n(65190, 737);		-- Mongoose
n(63954, 739);		-- Mongoose Pup
n(61167, 391);		-- Mountain Cottontail
n(61677, 633);		-- Mountain Skunk
n(61143, 385);		-- Mouse
n(62395, 557);		-- Nether Faerie Dragon
n(62625, 638);		-- Nether Roach
n(62888, 547);		-- Nordrassil Wisp
n(62895, 544);		-- Oasis Moth
n(62697, 530);		-- Oily Slimeling
n(61313, 403);		-- Parrot
n(63547, 726);		-- Plains Monitor
n(61322, 409);		-- Polly
n(61141, 386);		-- Prarie Dog
n(59702, 727);		-- Prarie Mouse
n(62526, 513);		-- Qiraji Guardling
n(61080, 378);		-- Rabbit
n(62120, 472);		-- Rabid Nut Varmint 5000
n(64352, 743);		-- Rapana Whelk
n(61366, 417);		-- Rat
n(61258, 399);		-- Rat Snake
n(61439, 431);		-- Rattlesnake
n(62051, 465);		-- Ravager Hatchling
n(61757, 452);		-- Red-Tailed Chipmunk
n(61168, 392);		-- Redridge Rat
n(64238, 744);		-- Resilient Roach
n(61375, 439);		-- Restless Shadeling
n(61755, 640);		-- Snowshoe Hare
n(61169, 424);		-- Roach
n(62119, 471);		-- Robo-Chick
n(62184, 482);		-- Rock Viper
n(62020, 460);		-- Ruby Sapling
n(62313, 496);		-- Rusty Snail
n(62257, 491);		-- Sand Kitten
n(63006, 573);		-- Sandy Petrel
n(63291, 717);		-- Savory Beetle
n(62628, 528);		-- Scalded Basilisk Hatchling
n(62524, 512);		-- Scarab Hatchling
n(61326, 414);		-- Scorpid
n(61329, 416);		-- Scorpling
n(62854, 538);		-- Scourged Whelpling
n(62953, 560);		-- Sea Gull
n(62246, 493);		-- Shimmershell Snail
n(65216, 754);		-- Shrine Fly
n(61158, 388);		-- Shore Crab
n(63097, 629);		-- Shore Crawler
n(64246, 677);		-- Shy Bandicoon
n(62523, 511);		-- Sidewinder
n(63057, 711);		-- Sifang Otter
n(63358, 712);		-- Sifang Otter Pup
n(64804, 741);		-- Silent Hedgehog
n(62258, 494);		-- Silithis Hatchling
n(63001, 568);		-- Silkbead Snail
n(62373, 503);		-- Silky Moth
n(62638, 637);		-- Skittering Cavern Crawler
n(61255, 397);		-- Skunk
n(61071, 419);		-- Small Frog
n(61142, 387);		-- Snake
n(61689, 440);		-- Snow Cub
n(7554, 69);		-- Snowy Owl
n(63060, 713);		-- Softshell Snapling
n(62201, 489);		-- Spawn of Onyxia
n(61327, 412);		-- Spider
n(61441, 433);		-- Spiky Lizard
n(62114, 466);		-- Spiny Lizard
n(63293, 723);		-- Spiny Terrapin
n(63005, 572);		-- Spirebound Crab
n(62034, 463);		-- Spirit Crab
n(62564, 515);		-- Sporeling Sprout
n(62370, 502);		-- Spotted Bell Frog
n(61081, 379);		-- Squirrel
n(62256, 492);		-- Stinkbug
n(62187, 485);		-- Stone Armadillo
n(62954, 675);		-- Stormwind Rat
n(62921, 553);		-- Stowaway Rat
n(61312, 401);		-- Strand Crab
n(61440, 432);		-- Stripe-Tailed Scorpid
n(62816, 532);		-- Stunted Shardhorn
n(64248, 679);		-- Summit Kid
n(61370, 402);		-- Swamp Moth
n(63585, 728);		-- Szechuan Chicken
n(62314, 497);		-- Tainted Cockroach
n(62315, 498);		-- Tainted Moth
n(62316, 499);		-- Tainted Rat
n(62999, 567);		-- Temple Snake
n(61686, 509);		-- Tiny Bog Beast
n(61160, 389);		-- Tiny Harvester
n(61703, 445);		-- Tiny Twister
n(61369, 420);		-- Toad
n(62899, 546);		-- Tol'vir Scarab
n(63557, 729);		-- Tolai Hare
n(63558, 730);		-- Tolai Hare Pup
n(62181, 480);		-- Topaz Shale Hatchling
n(61318, 405);		-- Tree Python
n(62835, 536);		-- Tundra Penguin
n(62648, 525);		-- Turkey
n(62121, 473);		-- Turquoise Turtle
n(62118, 469);		-- Twilight Beetle
n(62914, 552);		-- Twilight Fiendling
n(62255, 505);		-- Twilight Iguana
n(62117, 470);		-- Twilight Spider
n(61889, 454);		-- Undercity Rat
n(62191, 506);		-- Venomspitter Hatchling
n(67022, 1013);		-- Wanderer's Festival Hatchling
n(62583, 517);		-- Warpstalker Hatchling
n(61367, 418);		-- Water Snake
n(62820, 535);		-- Water Waveling
n(61323, 410);		-- Wharf Rat
n(61259, 400);		-- Widow Spiderling
n(65321, 819);		-- Wild Crimson Hatchling
n(65324, 818);		-- Wild Golden Hatchling
n(65323, 817);		-- Wild Jade Hatchling
n(62900, 548);		-- Wildhammer Gryphon Hatchling
n(63957, 740);		-- Yakrat
n(63849, 752);		-- Yellow-Bellied Bullfrog
n(62904, 549);		-- Yellow-Bellied Marmot
n(63555, 731);		-- Zooey Snake
--- TRAINER ---
n(0, 897);			-- Acidous
n(0, 901);			-- Ambershell
n(0, 987);			-- Amythel
n(0, 941);			-- Anklor
n(0, 964);			-- Arcanus
n(0, 981);			-- Ashtail
n(0, 925);			-- Beacon
n(0, 978);			-- Beakmaster X-225
n(0, 922);			-- Beamer
n(0, 948);			-- Bishibosh
n(0, 881);			-- Blackfang
n(0, 913);			-- Blaze
n(0, 935);			-- Bleakspinner
n(0, 1001);			-- Bleat
n(0, 974);			-- Blight
n(0, 927);			-- Blizzy
n(0, 977);			-- Bloom
n(0, 902);			-- Bounder
n(0, 995);			-- Brood of Mothallus
n(0, 888);			-- Burgle
n(0, 976);			-- Cadavus
n(0, 936);			-- Carrion
n(0, 1012);			-- Chirrup
n(0, 915);			-- Cho'guana
n(0, 961);			-- Chomps
n(0, 989);			-- Clatter
n(0, 908);			-- Cluckatron
n(0, 875);			-- Clucks
n(0, 946);			-- Comet
n(0, 899);			-- Constrictor
n(0, 932);			-- Corpsefeeder
n(0, 959);			-- Cragmaw
n(0, 942);			-- Croaker
n(0, 1009);			-- Crusher
n(0, 984);			-- Crystallus
n(0, 943);			-- Dampwing
n(0, 880);			-- Darkwidow
n(0, 1006);			-- Diamond
n(0, 967);			-- Dinner
n(0, 878);			-- Dipsy
n(0, 992);			-- Dor the Wall
n(0, 957);			-- Dramaticus
n(0, 973);			-- Drogar
n(0, 952);			-- ED-005
n(0, 883);			-- Emeralda
n(0, 887);			-- Eyegouger
n(0, 993);			-- Fangor
n(0, 873);			-- Fangs
n(0, 911);			-- Firetooth
n(0, 912);			-- Flameclaw
n(0, 975);			-- Fleshrender
n(0, 877);			-- Flipsy
n(0, 879);			-- Flufftail
n(0, 894);			-- Flutterby
n(0, 876);			-- Foe Reaper 800
n(0, 983);			-- Fracture
n(0, 928);			-- Frostmaw
n(0, 953);			-- Fungor
n(0, 939);			-- Garnestrasz
n(0, 909);			-- Gizmo
n(0, 906);			-- Glimmer
n(0, 955);			-- Glitterfly
n(0, 960);			-- Gnasher
n(0, 966);			-- Gobbles
n(0, 951);			-- Goliath
n(0, 979);			-- Grizzle
n(0, 923);			-- Hatewalker
n(0, 986);			-- Helios
n(0, 945);			-- Ignious
n(0, 980);			-- Incinderous
n(0, 917);			-- Indigon
n(0, 949);			-- Jack
n(0, 963);			-- Jadefire
n(0, 982);			-- Kali
n(0, 924);			-- Lacewing
n(0, 1002);			-- Lapin
n(0, 1000);			-- Lightstalker
n(0, 893);			-- Longneck
n(0, 896);			-- Mister Pinch
n(0, 1005);			-- Mollus
n(0, 944);			-- Moltar
n(0, 884);			-- Moonstalker
n(0, 968);			-- Mort
n(0, 889);			-- Mumtar
n(0, 1007);			-- Mutilator
n(0, 885);			-- Nanners
n(0, 999);			-- Needleback
n(0, 962);			-- Netherbite
n(0, 947);			-- Nightstalker
n(0, 937);			-- Obsidion
n(0, 898);			-- Odoron
n(0, 895);			-- Oozer
n(0, 1003);			-- Piqua
n(0, 916);			-- Plague
n(0, 934);			-- Plaguebringer
n(0, 931);			-- Plop
n(0, 1008);			-- Pounder
n(0, 904);			-- Prancer
n(0, 958);			-- Prince Wart
n(0, 991);			-- Pyth
n(0, 905);			-- Rasp
n(0, 891);			-- Ripper
n(0, 900);			-- Rockhide
n(0, 971);			-- Rot
n(0, 985);			-- Ruby
n(0, 997);			-- Siren
n(0, 1004);			-- Skimmer
n(0, 994);			-- Skyshaper
n(0, 972);			-- Sleet
n(0, 872);			-- Slither
n(0, 890);			-- Spike
n(0, 950);			-- Sploder
n(0, 892);			-- Springtail
n(0, 970);			-- Spooky Strangler
n(0, 990);			-- Spring
n(0, 969);			-- Stitch
n(0, 956);			-- Stompy
n(0, 1011);			-- Stormlash
n(0, 933);			-- Subject 142
n(0, 874);			-- Teensy
n(0, 929);			-- Tinygos
n(0, 996);			-- Toothbreaker
n(0, 954);			-- Tripod
n(0, 988);			-- Twilight
n(0, 921);			-- Ultramus
n(0, 938);			-- Veridia
n(0, 965);			-- Warble
n(0, 882);			-- Webwinder
n(0, 907);			-- Whirls
n(0, 1010);			-- Whiskers
n(0, 926);			-- Willow
n(0, 998);			-- Woodcarver
n(0, 886);			-- Young Beaky
--- NYI ---
i(0, 705);			-- Amorous Rooster
i(0, 832);			-- Boomy Jr.
i(0, 390);			-- Deer
i(0, 833);			-- Dr. Stinky
i(0, 2);			-- Dumptruck
i(0, 476);			-- Gazelle
i(0, 462);			-- Jacob the Test Seagull
i(0, 827);			-- Lady Burninator
i(0, 828);			-- Lord Landslide
i(0, 829);			-- Madam Flapsalot
i(0, 831);			-- Miss Mystical
i(0, 825);			-- Mr. Growls
i(0, 826);			-- Mrs. Skitters
i(0, 824);			-- Ms. Croaker
i(0, 800);			-- Muffin
i(0, 486);			-- Mule Deer
i(0, 384);			-- Otter Pup
i(0, 354);			-- PattyMack - WildBattlePet Test
i(0, 444);			-- PattyMack 2.0 - WildBattlePet Test
i(0, 510);			-- Rabbot
i(0, 434);			-- Ram
i(0, 394);			-- Sheep
i(0, 830);			-- Sir Buckethead
i(0, 864);			-- Spider
i(0, 375);			-- The Gurkster
i(0, 863);			-- Widow Spiderling
i(0, 715);			-- Wild Silkworm
i(0, 71);			-- Unknown
i(0, 73);			-- Unknown
i(88148, 0);		-- Jade Crane Chick
i(82800, 0);		-- Pet Cage

-----------------
-- PATCH 5.1.0 --
-----------------
i(93040, 1155);		-- Anubisath Idol
i(93035, 1150);		-- Ashstone Core
i(93038, 1152);		-- Chrominius
i(92707, 1117);		-- Cinder Kitten
i(93025, 1142);		-- Clock'em
i(93034, 1149);		-- Corefire Imp
i(91040, 1063);		-- Darkmoon Eye
i(91003, 1061);		-- Darkmoon Hatchling
i(93037, 1153);		-- Death Talon Whelpguard
i(93032, 1144);		-- Fungal Abomination
i(93030, 1143);		-- Giant Bone Spider
i(93033, 1147);		-- Harbinger of Flame
i(90900, 1039);		-- Imperial Moth
i(90902, 1040);		-- Imperial Silkworm
i(93041, 1156);		-- Mini Mindslayer
i(93031, 1145);		-- Mr. Bigglesworth
i(92799, 1125);		-- Pandaren Air Spirit
i(92800, 1126);		-- Pandaren Earth Spirit
i(92798, 1124);		-- Pandaren Fire Spirit
i(90173, 868);		-- Pandaren Water Spirit
i(93029, 1146);		-- Stitched Pup
i(93036, 1151);		-- Untamed Hatchling
i(93039, 1154);		-- Viscidus Globule
--- NPC ---
n(68839, 1163);		-- Anodized Robo Cub
n(68819, 1160);		-- Arcane Eye
n(68841, 1164);		-- Cogblade Raptor
n(67443, 1068);		-- Crow
n(67329, 1062);		-- Darkmoon Glowfly
n(68850, 1167);		-- Emerald Proto-Whelp
n(68838, 1162);		-- Fluxfire Feline
n(68804, 1157);		-- Harpy Youngling
n(68820, 1161);		-- Infinite Whelpling
n(68846, 1166);		-- Kun-Lai Runt
n(68806, 1159);		-- Lofty Libram
n(68845, 1165);		-- Nexus Whelpling
n(68805, 1158);		-- Stunted Yeti
n(68506, 1128);		-- Sumprush Rodent
--- TRAINER ---
i(0, 1130);			-- Crimson
i(0, 1137);			-- Darnak the Tunneler
i(0, 1135);			-- Dusty
i(0, 1066);			-- Fezwick
i(0, 1131);			-- Glowy
i(0, 1067);			-- Honky-Tonk
i(0, 1065);			-- Judgment
i(0, 1132);			-- Marley
i(0, 1140);			-- Pandaren Air Spirit
i(0, 1141);			-- Pandaren Earth Spirit
i(0, 1139);			-- Pandaren Fire Spirit
i(0, 1138);			-- Pandaren Water Spirit
i(0, 1134);			-- Sludgy
i(0, 1133);			-- Tiptoe
i(0, 1136);			-- Whispertail
--- NYI ---
i(91031, 0);		-- Darkmoon Glowfly

-----------------
-- PATCH 5.2.0 --
-----------------
i(93669, 1174);		-- Gusting Grimoire
i(94835, 1202);		-- Ji-Kun Hatchling
i(94125, 1177);		-- Living Sandling
i(94210, 1198);		-- Mountain Panda
i(100870, 217);		-- Murkimus the Gladiator [Murkimus' Tyrannical Spear]
i(94025, 1176);		-- Red Panda
i(94209, 1197);		-- Snowy Panda
i(94152, 1183);		-- Son of Animus
i(94595, 1201);		-- Spawn of G'nathus
i(94190, 1185);		-- Spectral Porcupette
i(94191, 1184);		-- Stunted Direhorn
i(94208, 1196);		-- Sunfur Panda
i(94124, 1178);		-- Sunreaver Micro-Sentry
i(94933, 1207);		-- Tiny Blue Carp
i(94934, 1208);		-- Tiny Green Carp
i(94932, 1206);		-- Tiny Red Carp
i(94935, 1209);		-- Tiny White Carp
i(95621, 227);		-- Warbot
i(95422, 1211);		-- Zandalari Anklerender
i(95423, 1212);		-- Zandalari Footslasher
i(94126, 1180);		-- Zandalari Kneebiter
i(95424, 1213);		-- Zandalari Toenibbler
--- NPC ---
n(69818, 1181);		-- Elder Python
n(69794, 1179);		-- Electrified Razortooth
n(69819, 1182);		-- Swamp Croaker
n(69648, 1175);		-- Thundertail Flapper
--- TRAINER ---
i(0, 1193);			-- Dos-Ryga
i(0, 1187);			-- Gorespine
i(0, 1189);			-- Greyhoof
i(0, 1129);			-- Ka'wi the Gorger
i(0, 1192);			-- Kafi
i(0, 1190);			-- Lucky Yi
i(0, 1194);			-- Nitun
i(0, 1188);			-- No-No
i(0, 1195);			-- Skitterer Xi'a
i(0, 1191);			-- Ti'un the Wanderer

-----------------
-- PATCH 5.3.0 --
-----------------
i(98550, 1248);		-- Blossoming Ancient
i(97554, 1232);		-- Coilfang Stalker
i(94573, 1205);		-- Direhorn Runt
i(97551, 1229);		-- Fiendish Imp
i(97961, 1245);		-- Filthling
i(97821, 1237);		-- Gahz'rooki
i(97556, 1234);		-- Lesser Voidcaller
i(97548, 1226);		-- Lil' Bad Wolf
i(97959, 1243);		-- Living Fluid
i(97549, 1227);		-- Menagerie Custodian
i(97550, 1228);		-- Netherspace Abyssal
i(97557, 1235);		-- Phoenix Hawk Hatchling
i(97555, 1233);		-- Pocket Reaver
i(94574, 1200);		-- Pygmy Direhorn
i(97553, 1231);		-- Tainted Waveling
i(97552, 1230);		-- Tideskipper
i(97558, 1236);		-- Tito
i(97960, 1244);		-- Viscous Horror
--- NPC ---
n(71163, 1238);		-- Unborn Val'kyr
--- TRAINER ---
i(0, 1247);			-- Doopy

-----------------
-- PATCH 5.4.0 --
-----------------
i(104156, 1323);	-- Ashleaf Spriteling
i(104157, 1321);	-- Azure Crane Chick
i(104158, 1322);	-- Blackfuse Bombling
i(104202, 1343);	-- Bonkers
i(102145, 1303);	-- Chi-Chi, Hatchling of Chi-Ji
i(104160, 1329);	-- Dandelion Frolicker
i(104161, 1330);	-- Death Adder Hatchling
i(104162, 1331);	-- Droplet of Y'Shaarj
i(104163, 1332);	-- Gooey Sha-ling
i(104291, 1345);	-- Gu'chi Swarmling
i(104169, 1338);	-- Gulp Froglet
i(104295, 1346);	-- Harmonious Porcupette
i(104307, 1348);	-- Jadefire Spirit
i(104164, 1333);	-- Jademist Dancer
i(104165, 1334);	-- Kovok
i(103670, 1320);	-- Lil' Bling
i(101570, 1276);	-- Moon Moon
i(104166, 1335);	-- Ominous Flame
i(94903, 1204);		-- Pierre
i(100905, 1256);	-- Rascal-Bot
i(104317, 1349);	-- Rotten Little Helper
i(104159, 1328);	-- Ruby Droplet
i(104167, 1336);	-- Skunky Alemental
i(104332, 1350);	-- Sky Lantern
i(104168, 1337);	-- Spineclaw Crab
i(103637, 1344);	-- Vengeful Porcupette
i(101771, 1266);	-- Xu-Fu, Cub of Xuen
i(102147, 1304);	-- Yu'la, Broodling of Yu'lon
i(102146, 1305);	-- Zao, Calfling of Niuzao
--- NPC ---
n(73542, 1324);		-- Ashwing Moth
n(73543, 1325);		-- Flamering Moth
n(73368, 1326);		-- Skywisp Moth
--- TRAINER ---
i(0, 1301);			-- Alex
i(0, 1278);			-- Au
i(0, 1279);			-- Banks
i(0, 1292);			-- Bolo
i(0, 1280);			-- Brewly
i(0, 1296);			-- Carpe Diem
i(0, 1271);			-- Chaos
i(0, 1311);			-- Chi-Chi, Hatchling of Chi-Ji
i(0, 1281);			-- Chirps
i(0, 1299);			-- Cindy
i(0, 1300);			-- Dah'da
i(0, 1283);			-- Knowledge
i(0, 1293);			-- Li
i(0, 1277);			-- Lil' B
i(0, 1339);			-- Lil' Oondasta
i(0, 1289);			-- Monte
i(0, 1288);			-- Nairn
i(0, 1284);			-- Patience
i(0, 1290);			-- Rikki
i(0, 1297);			-- River
i(0, 1269);			-- Screamer
i(0, 1291);			-- Socks
i(0, 1298);			-- Spirus
i(0, 1287);			-- Stormoen
i(0, 1286);			-- Summer
i(0, 1282);			-- Tonsa
i(0, 1268);			-- Trike
i(0, 1285);			-- Wisdom
i(0, 1267);			-- Xu-Fu, Cub of Xuen
i(0, 1295);			-- Yen
i(0, 1317);			-- Yu'la, Broodling of Yu'lon
i(0, 1319);			-- Zao, Calfling of Niuzao
--- NYI ---
i(0, 1258);			-- Angara
i(0, 1354);			-- C92 Annihilator
i(0, 1257);			-- Crafty

-----------------
-- PATCH 5.4.1 --
-----------------
i(106240, 1363);	-- Alterac Brew-Pup
i(106244, 1364);	-- Murkalot

-----------------
-- PATCH 5.4.2 --
-----------------
i(106256, 1365);	-- Treasure Goblin

-----------------
-- PATCH 5.4.7 --
-----------------
i(109014, 1386);	-- Dread Hatchling

-----------------
-- PATCH 6.0.2 --
-----------------
--- NYI ---
i(0, 1423);			-- Bitey
i(0, 1420);			-- Evil Widowling
i(0, 1352);			-- Lord Piglet
i(0, 1404);			-- Mechanical Scorpid
i(0, 1410);			-- Mechanical Training Dummy
i(0, 1610);			-- Unborn Val'kyr
i(0, 1259);			-- Widowling
i(118597, 1431);	-- Kelp Sproutling
i(118596, 1433);	-- Sassy Sproutling
i(113569, 0);		-- Autumnal Sproutling
i(115282, 0);		-- Draenei Micro Defender
i(109602, 0);		-- Echo of Murmur [TEMP ITEM & SPELL]
i(118600, 0);		-- Forest Sproutling
i(119466, 0);		-- Ikky
i(119147, 0);		-- Nether Ray Fry
i(115469, 0);		-- Pet Template
i(119112, 0);		-- Son of Sethe

-----------------
-- PATCH 6.0.3 --
-----------------
i(119434, 1385);	-- Albino Chimaeraling
i(119148, 1571);	-- Albino River Calf
i(117354, 1531);	-- Ancient Nest Guardian
i(118516, 1603);	-- Argi
i(116439, 1517);	-- Blazing Cindercrawler
i(119146, 1458);	-- Bone Wasp
i(118107, 1540);	-- Brilliant Spore
i(118675, 1563);	-- Bronze Whelpling
i(116403, 1516);	-- Bush Chicken
i(110721, 1396);	-- Crazy Carrot
i(118106, 1537);	-- Crimson Spore
i(116801, 1521);	-- Cursed Birman
i(114968, 1449);	-- Deathwatch Hatchling
i(118709, 1564);	-- Doom Bloom
i(119142, 1450);	-- Draenei Micro Defender
i(113216, 1426);	-- Elekk Plushie
i(118921, 1566);	-- Everbloom Peachick
i(119170, 1576);	-- Eye of Observation
i(118578, 1545);	-- Firewing
i(119149, 1430);	-- Forest Sproutling
i(117380, 1530);	-- Frostwolf Ghostpup
i(119141, 1542);	-- Frostwolf Pup
i(117564, 1471);	-- Fruit Hunter
i(113623, 1442);	-- Ghastly Kid
i(118517, 1602);	-- Grommloc
i(118574, 1544);	-- Hatespark the Tiny
i(123862, 1384);	-- Hogs
i(118207, 1541);	-- Hydraling
i(0, 1532);			-- Ikky
i(111660, 1387);	-- Iron Starlette
i(120051, 1597);	-- Kaliri Hatchling
i(117404, 115);		-- Land Shark
i(117528, 1533);	-- Lanticore Spawnling
i(112057, 1412);	-- Lifelike Mechanical Frostboar
i(110684, 1395);	-- Lil' Leftovers
i(116155, 1511);	-- Lovebird Hatchling
i(114834, 1446);	-- Meadowstomper Calf
i(111402, 1403);	-- Mechanical Axebeak
i(118741, 1565);	-- Mechanical Scorpid
i(115301, 1451);	-- Molten Corgi
i(116258, 1514);	-- Mystical Spring Bouquet
i(116815, 1524);	-- Netherspawn, Spawn of Netherspawn
i(118595, 1432);	-- Nightshade Sproutling
i(118919, 1495);	-- Ore Eater
i(119467, 1568);	-- Puddle Terror
i(120309, 1543);	-- Pygmy Cow
i(111866, 1411);	-- Royal Peachick
i(114919, 1448);	-- Sea Calf
i(118923, 1567);	-- Sentinel's Companion
i(119431, 1601);	-- Servant of Demidos
i(115483, 1467);	-- Sky-Bo
i(119150, 1575);	-- Sky Fry
i(119143, 1574);	-- Son of Sethe
i(119328, 1569);	-- Soul of the Forge
i(116402, 1515);	-- Stonegrinder
i(118577, 1546);	-- Stormwing
i(116756, 1518);	-- Stout Alemental
i(118598, 1434);	-- Sun Sproutling
i(119468, 1570);	-- Sunfire Kaliri
i(116064, 1478);	-- Syd the Squid
i(112699, 1416);	-- Teroclaw Hatchling
i(120121, 1605);	-- Trunks
i(118104, 1538);	-- Umbrafen Spore
i(120050, 1596);	-- Veilwatcher Hatchling
i(113558, 1394);	-- Weebomination
i(116804, 1523);	-- Widget the Departed
i(113554, 1428);	-- Zomstrok
--- NPC ---
n(85257, 1465);		-- Amberbarb Wasp
n(85389, 1470);		-- Axebeak Hatchling
n(85255, 1462);		-- Bloodsting Wasp
n(88385, 1572);		-- Brilliant Bloodfeather
n(88413, 1589);		-- Crimsonwing Moth
n(88572, 1595);		-- Flat-Tooth Calf
n(82715, 1427);		-- Frostfur Rat
n(88480, 1578);		-- Frostshell Pincher
n(85798, 1573);		-- Golden Dawnfeather
n(85003, 1457);		-- Icespine Hatchling
n(88474, 1579);		-- Ironclaw Scuttler
n(85192, 1469);		-- Junglebeak
n(88465, 1583);		-- Kelp Scuttler
n(89198, 1435);		-- Leatherhide Runt
n(82045, 1447);		-- Moonshell Crab
n(85005, 1455);		-- Mossbite Skitterer
n(83642, 1441);		-- Mud Jumper
n(88571, 1594);		-- Mudback Calf
n(89194, 1615);		-- Parched Lizard
n(88417, 1587);		-- Royal Moth
n(88356, 1592);		-- Sapphire Firefly
n(88576, 1599);		-- Shadow Sporebat
n(88359, 1590);		-- Swamplighter Firefly
n(85007, 1456);		-- Thicket Skitterer
n(85253, 1464);		-- Twilight Wasp
n(88355, 1593);		-- Waterfly
n(85254, 1463);		-- Wood Wasp
n(88466, 1582);		-- Zangar Crawler
--- TRAINER ---
i(0, 1503);			-- Acidtooth
i(0, 1559);			-- Apexis Guardian
i(0, 1498);			-- Archimedes
i(0, 1562);			-- Atonement
i(0, 1504);			-- Blingtron 4999b
i(0, 1479);			-- Brutus
i(0, 1484);			-- Carroteye
i(0, 1473);			-- Carrotus Maximus
i(0, 1608);			-- Carrotus Maximus
i(0, 1557);			-- Darkwing
i(0, 1400);			-- Deebs
i(0, 1548);			-- Doodle
i(0, 1409);			-- Eleanor
i(0, 1552);			-- Fangra
i(0, 1510);			-- Fatos
i(0, 1499);			-- Fiero
i(0, 1554);			-- Gladiator Deathy
i(0, 1555);			-- Gladiator Murkalot
i(0, 1556);			-- Gladiator Murkimus
i(0, 1472);			-- Gnawface
i(0, 1609);			-- Gnawface
i(0, 1474);			-- Gorefu
i(0, 1607);			-- Gorefu
i(0, 1561);			-- Grace
i(0, 1490);			-- Gromli
i(0, 1492);			-- Grubbles
i(0, 1424);			-- Gyrexle, the Eternal Mechanic
i(0, 1509);			-- Hanos
i(0, 1443);			-- Idol of Decay
i(0, 1496);			-- Jahan
i(0, 1487);			-- King Floret
i(0, 1489);			-- Kromli
i(0, 1508);			-- Manos
i(0, 1476);			-- Mr. Pointy
i(0, 1483);			-- Mr. Terrible
i(0, 1475);			-- Otto
i(0, 1547);			-- Pixiebell
i(0, 1506);			-- Protectron 011803
i(0, 1505);			-- Protectron 022481
i(0, 1402);			-- Puzzle
i(0, 1488);			-- Queen Floret
i(0, 1480);			-- Quintessence of Light
i(0, 1501);			-- Rockbiter
i(0, 1482);			-- Rukus
i(0, 1497);			-- Samm
i(0, 1494);			-- Scrags
i(0, 1560);			-- Serendipity
i(0, 1485);			-- Sloppus
i(0, 1493);			-- Stings
i(0, 1507);			-- Stitches Jr.
i(0, 1502);			-- Stonechewer
i(0, 1477);			-- Syd
i(0, 1549);			-- Tally
i(0, 1486);			-- The Beakinator
i(0, 1558);			-- The Great Kaliri
i(0, 1500);			-- Tirs
i(0, 1401);			-- Tyri
i(0, 1444);			-- Wishbright Lantern
i(0, 1553);			-- Wolfgar
i(0, 1550);			-- Wolfus

-----------------
-- PATCH 6.1.0 --
-----------------
i(122106, 1624);	-- Abyssius
i(122532, 1600);	-- Bone Serpent
i(122114, 1633);	-- Chaos Pup
i(122107, 1625);	-- Fragment of Anger
i(122109, 1627);	-- Fragment of Desire
i(122108, 1626);	-- Fragment of Suffering
i(122105, 1622);	-- Grotesque
i(122112, 1631);	-- Hyjal Wisp
i(122116, 1635);	-- K'ute
i(122104, 1623);	-- Leviathan Hatchling
i(122125, 1636);	-- Race MiniZep
i(122110, 1628);	-- Sister of Temptation
i(122534, 1655);	-- Slithershock Elver
i(122111, 1629);	-- Stinkrot
i(122113, 1632);	-- Sunblade Micro-Defender
i(122115, 1634);	-- Wretched Servant
i(122533, 1656);	-- Young Talbuk
--- TRAINER ---
i(0, 1647);			-- Bones
i(0, 1653);			-- Brisby
i(0, 1644);			-- Carl
i(0, 1641);			-- Dusty
i(0, 1646);			-- Enbi'see
i(0, 1652);			-- Jenner
i(0, 1645);			-- Mal
i(0, 1637);			-- Moon
i(0, 1643);			-- Mouthy
i(0, 1654);			-- Nicodemus
i(0, 1651);			-- Prince Charming
i(0, 1649);			-- Runts
i(0, 1642);			-- Salad
i(0, 1640);			-- Spores
i(0, 1648);			-- Sprouts

-----------------
-- PATCH 6.1.2 --
-----------------
i(118518, 1639);	-- Graves

-----------------
-- PATCH 6.2.0 --
-----------------
i(128478, 1693);	-- Blazing Firehawk
i(127704, 1577);	-- Bloodthorn Hatchling
i(126925, 1666);	-- Blorp
i(127748, 1662);	-- Cinder Pup
i(127749, 1672);	-- Corrupted Nest Guardian
i(127868, 1688);	-- Crusher
i(127703, 1588);	-- Dusty Sporewing
i(129205, 1660);	-- Fel Pup
i(126926, 1665);	-- Ghostshell Crab
i(127701, 1598);	-- Glowing Sporebat
i(127856, 1687);	-- Left Shark
i(127705, 1661);	-- Lost Netherpup
i(127753, 1664);	-- Nightmare Bell
i(127754, 1663);	-- Periwinkle Calf
i(128477, 1692);	-- Savage Cub
i(118105, 1539);	-- Seaborne Spore
i(128309, 1690);	-- Shard of Cyrukh
i(118101, 1536);	-- Zangar Spore
--- NPC ---
n(85388, 1468);		-- Bloodbeak
n(88422, 1586);		-- Cerulean Moth
n(88473, 1581);		-- Fen Crab
n(88814, 1604);		-- Nethaera's Light
n(88357, 1591);		-- Violet Firefly
--- TRAINER ---
i(0, 1681);			-- Bleakclaw
i(0, 1674);			-- Chaos Pup
i(0, 1673);			-- Corrupted Thundertail
i(0, 1675);			-- Cursed Spirit
i(0, 1680);			-- Dark Gazer
i(0, 1686);			-- Defiled Earth
i(0, 1678);			-- Direflame
i(0, 1683);			-- Dreadwalker
i(0, 1676);			-- Felfly
i(0, 1671);			-- Felsworn Sentry
i(0, 1679);			-- Mirecroak
i(0, 1684);			-- Netherfist
i(0, 1685);			-- Skrillix
i(0, 1677);			-- Tainted Maulclaw
i(0, 1682);			-- Vile Blood of Draenor

-----------------
-- PATCH 6.2.2 --
-----------------
i(129217, 1766);	-- Empowered Manafiend
i(129218, 1765);	-- Empyreal Manafiend
i(129216, 1764);	-- Energized Manafiend
i(128770, 1725);	-- Grumpling
i(128427, 1454);	-- Murkidan
i(128426, 1691);	-- Nibbles
i(128423, 1255);	-- Zeradar
--- NPC ---
n(97568, 1741);		-- Ghastly Rat
n(97569, 1740);		-- Ghost Maggot
n(97324, 1730);		-- Spectral Spinner

-----------------
-- PATCH 6.2.3 --
-----------------
i(134047, 1828);	-- Baby Winston
i(128424, 1466);	-- Brightpaw

-----------------
-- PATCH 7.0.3 --
-----------------
i(136910, 1805);	-- Alarm-o-Bot
i(139775, 1918);	-- Alliance Enthusiast
i(23712, 1927);		-- Ash'ana
i(128690, 1706);	-- Ashmaw Cub
i(118599, 1429);	-- Autumnal Sproutling
i(136919, 1884);	-- Baby Elderhorn
i(140934, 1934);	-- Benax
i(129188, 1753);	-- Bleakwater Jelly
i(129362, 1777);	-- Broot
i(136923, 1888);	-- Celestial Calf
i(136925, 1890);	-- Corgi Pup
i(140320, 1929);	-- Corgnelius
i(140672, 1931);	-- Court Scribe
i(129175, 1752);	-- Crispin
i(129178, 1720);	-- Emmigosa
i(128533, 1699);	-- Enchanted Cauldron
i(128535, 1701);	-- Enchanted Pen
i(128534, 1700);	-- Enchanted Torch
i(136899, 1717);	-- Extinguished Eye
i(136901, 1719);	-- Eye of Inquisition
i(129760, 1760);	-- Fel Piglet
i(136924, 1889);	-- Felbat Pup
i(130168, 1802);	-- Fetid Waveling
i(140316, 1928);	-- Firebat Pup
i(136898, 1716);	-- Fledgling Warden Owl
i(128354, 1705);	-- Grumpy
i(136900, 1718);	-- Hateful Eye
i(139776, 1919);	-- Horde Fanatic
i(140261, 1926);	-- Hungering Claw
i(136911, 1806);	-- Knockoff Blingtron
i(140323, 1930);	-- Lagan
i(136914, 1808);	-- Leyline Broodling
i(139791, 1922);	-- Lurking Owl Kitten
i(140741, 1932);	-- Nightmare Lasher
i(140761, 1933);	-- Nightmare Treant
i(136903, 1723);	-- Nightmare Whelpling
i(129878, 1715);	-- Nightwatch Swooper
i(129826, 1727);	-- Nursery Spider
i(129798, 1755);	-- Plump Jelly
i(130154, 1907);	-- Pygmy Owl
i(141352, 1938);	-- Rescued Fawn
i(136905, 1756);	-- Ridgeback Piglet
i(130166, 1804);	-- Risen Saber Kitten
i(140274, 1453);	-- River Calf
i(136908, 1759);	-- Thaumaturgical Piglet
i(130167, 1803);	-- Thistleleaf Adventurer
i(136904, 1754);	-- Sewer-Pipe Jelly
i(129277, 1711);	-- Skyhorn Nestling
i(141530, 1941);	-- Snowfang
i(138810, 1911);	-- Sting Ray Pup
i(129208, 1721);	-- Stormborne Whelpling
i(136920, 1885);	-- Sunborne Val'kyr
i(139789, 1920);	-- Transmutant
i(132519, 1886);	-- Trigger
i(139790, 1921);	-- Untethered Wyrmling
i(141348, 1937);	-- Wondrous Wisdomball
i(136922, 1887);	-- Wyrmy Tunkins
i(137298, 1903);	-- Zoom
--- NPC ---
n(97018, 1708);		-- Albatross Chick
n(97555, 1738);		-- Auburn Ringtail
n(97741, 1743);		-- Black-Footed Fox Kit
n(111158, 1915);	-- Blind Rat
n(97236, 1726);		-- Burrow Spiderling
n(110826, 1914);	-- Coastal Sandpiper
n(98428, 1775);		-- Coralback Fiddler
n(99527, 1809);		-- Crystalline Broodling
n(97206, 1722);		-- Dream Whelpling
n(98506, 1778);		-- Dust Bunny
n(88542, 1761);		-- Echo Batling
n(98386, 1774);		-- Eldritch Manafiend
n(98385, 1773);		-- Erudite Manafiend
n(97323, 1731);		-- Felspider
n(97076, 1709);		-- Fledgling Kingfeather
n(97078, 1710);		-- Fledgling Oliveback
n(110741, 1913);	-- Gleamhoof Fawn
n(97080, 1712);		-- Golden Eaglet
n(98192, 1762);		-- Hog-Nosed Bat
n(97283, 1728);		-- Juvenile Scuttleback
n(97118, 1713);		-- Long-Eared Owl
n(97743, 1744);		-- Mist Fox Kit
n(98446, 1776);		-- Mudshell Conch
n(97126, 1714);		-- Northern Hawk Owl
n(97294, 1729);		-- Olivetail Hare
n(97840, 1749);		-- Rose Taipan
n(97511, 1734);		-- Shimmering Aquafly
n(97542, 1736);		-- Slithering Brownscale
n(98211, 1763);		-- Spiketail Beaver
n(97559, 1739);		-- Spring Strider
n(111172, 1917);	-- Stormstruck Beaver
n(97531, 1735);		-- Terror Larva
n(99528, 1810);		-- Thornclaw Broodling
n(97952, 1750);		-- Tiny Apparition
n(97547, 1737);		-- Vale Flitter
n(99513, 1807);		-- Vicious Broodling
n(110666, 1912);	-- Young Mutant Wartutle
--- TRAINER ---
i(0, 1893);			-- Allured Tadpole
i(0, 1860);			-- Ancient Catacomb Spider
i(0, 1866);			-- Baby Bjorn
i(0, 1771);			-- Baeloth
i(0, 1788);			-- Beaky
i(0, 1857);			-- Beauty
i(0, 1883);			-- Blottis
i(0, 1897);			-- Breezy Book
i(0, 1851);			-- Cackling Flame
i(0, 1861);			-- Catacomb Bat
i(0, 1862);			-- Catacomb Snake
i(0, 1882);			-- Chromadon
i(0, 1782);			-- Clamps
i(0, 1796);			-- Coach
i(0, 1894);			-- Confused Tadpole
i(0, 1858);			-- Conviction
i(0, 1869);			-- Crawdead
i(0, 1899);			-- Delicate Moth
i(0, 1852);			-- Devouring Blaze
i(0, 1859);			-- Dignity
i(0, 1875);			-- Dinner
i(0, 1793);			-- Egcellent
i(0, 1865);			-- Essence of Mana
i(0, 1877);			-- Eye of Inquisition
i(0, 1878);			-- Eye of Interrogation
i(0, 1879);			-- Eye of Impetration
i(0, 1792);			-- Fethyr
i(0, 1863);			-- Font of Mana
i(0, 1905);			-- Foof
i(0, 1846);			-- Globs
i(0, 1870);			-- Gnaw
i(0, 1797);			-- Greatest Foe
i(0, 1799);			-- Grommet
i(0, 1798);			-- Gulp
i(0, 1873);			-- Gusteau
i(0, 1871);			-- Harbinger of Dark
i(0, 1815);			-- Heliosus
i(0, 1898);			-- Helpful Spirit
i(0, 1872);			-- Herald of Light
i(0, 1843);			-- Hungry Icefang
i(0, 1895);			-- Hungry Owl
i(0, 1896);			-- Hungry Rat
i(0, 1800);			-- Itchy
i(0, 1748);			-- Jinx
i(0, 1780);			-- Kiazor the Destroyer
i(0, 1790);			-- Lil' Spirit Guide
i(0, 1906);			-- Lil' Sizzle
i(0, 1881);			-- Lil'idan
i(0, 1853);			-- Living Coals
i(0, 1745);			-- Marshmallow
i(0, 1742);			-- Master Tamer Flummox
i(0, 1816);			-- Mini Magmatron
i(0, 1817);			-- Mini Arcanotron
i(0, 1818);			-- Mini Electron
i(0, 1867);			-- Mini Musken
i(0, 1868);			-- Mist Wraith
i(0, 1848);			-- Nightmare Sprout
i(0, 1791);			-- Quillino
i(0, 1794);			-- Red Wire
i(0, 1874);			-- Remy
i(0, 1746);			-- Rocket
i(0, 1842);			-- Rocklick
i(0, 1811);			-- Rocko
i(0, 1787);			-- Roots
i(0, 1801);			-- Salty Bird
i(0, 1781);			-- Scuttles
i(0, 1864);			-- Seed of Mana
i(0, 1795);			-- Sir Murkeston
i(0, 1841);			-- Slow Moe
i(0, 1840);			-- Snot
i(0, 1519);			-- Snowfang
i(0, 1855);			-- Splint Jr.
i(0, 1880);			-- Stitches Jr. Jr.
i(0, 1904);			-- Stumpers
i(0, 1892);			-- Subjugated Tadpole
i(0, 1789);			-- Sunny
i(0, 1849);			-- The Maw
i(0, 1850);			-- Thistleleaf Bully
i(0, 1770);			-- Thrugtusk
i(0, 1847);			-- Trixy
i(0, 1891);			-- Vinu
i(0, 1772);			-- Wumpas
--- NYI ---
i(136907, 1758);	-- Black Piglet
i(136906, 1757);	-- Brown Piglet
i(129108, 1751);	-- Son of Goredome
i(136897, 0);		-- Northern Hawk Owl
i(136913, 0);		-- Red Broodling
i(136902, 0);		-- Toxic Whelpling
i(136921, 0);		-- Trigger
i(131737, 0);		-- Wyrmy Tunkins
i(130145, 0);		-- Unknown

-----------------
-- PATCH 7.1.0 --
-----------------
i(142448, 1984);	-- Albino Buzzard
i(142096, 1965);	-- Blightbreath
i(142095, 1964);	-- Blood Boil
i(0, 1977);			-- Bloodgazer Hatchling
i(142094, 1963);	-- Boneshard
i(142093, 1962);	-- Creeping Tentacle
i(0, 1975);			-- Direbeak Hatchling
i(142083, 1952);	-- Dreadmaw
i(142098, 1967);	-- Drudge Ghoul
i(142380, 1979);	-- Dutiful Gruntling
i(142379, 1978);	-- Dutiful Squire
i(142092, 1961);	-- G0-R41-0N Ultratonk
i(141714, 1949);	-- Igneous Flameling
i(142087, 1956);	-- Ironbound Proto-Whelp
i(141894, 1940);	-- Knight-Captain Murky
i(141895, 1939);	-- Legionnaire Murky
i(142086, 1955);	-- Magma Rageling
i(141893, 1936);	-- Mischief
i(142085, 1954);	-- Nerubian Swarmer
i(141532, 1943);	-- Noblegarden Bunny
i(142088, 1957);	-- Runeforged Servitor
i(142089, 1958);	-- Sanctum Cub
i(0, 1976);			-- Sharptalon Hatchling
i(142091, 1960);	-- Snaplasher
i(142084, 1953);	-- Snobold Runt
i(0, 1974);			-- Snowfeather Hatchling
i(142097, 1966);	-- Soulbroken Whelpling
i(142100, 1969);	-- Stardust
i(142099, 1968);	-- Wicked Soul
i(142090, 1959);	-- Winter Rageling
--- NPC ---
n(113440, 1935);	-- Squirky
--- TRAINER ---
i(0, 1982);			-- Buzz
i(0, 1983);			-- Cherry
i(0, 1971);			-- Comet
i(0, 1973);			-- Constellatius
i(0, 1972);			-- Cosmos
i(0, 1981);			-- Swoop
--- NYI ---
i(141316, 0);		-- Odd Murloc Egg

-----------------
-- PATCH 7.1.5 --
-----------------
i(143953, 2017);	-- Infinite Hatchling
i(143954, 2018);	-- Paradox Spirit
i(143842, 2004);	-- Trashy
i(144394, 2022);	-- Tylarr Gronnden

-----------------
-- PATCH 7.2.0 --
-----------------
i(147542, 2047);	-- Ban-Fu, Cub of Ban-Lu
i(147539, 2035);	-- Bloodbrood Whelpling
i(143754, 1999);	-- Cavern Moccasin
i(143679, 1997);	-- Crackers
i(143756, 1998);	-- Everliving Spore
i(147540, 2036);	-- Frostbrood Whelpling
i(147841, 2050);	-- Orphaned Felbat
i(146953, 2042);	-- Scraps
i(147543, 2049);	-- Son of Skum
i(142223, 382);		-- Sun Darter Hatchling
i(147541, 2037);	-- Vilebrood Whelpling
i(143755, 2000);	-- Young Venomfang
--- TRAINER ---
i(0, 1996);			-- Budding Everliving Spore
i(0, 1988);			-- Deviate Chomper
i(0, 1987);			-- Deviate Flapper
i(0, 1989);			-- Deviate Smallclaw
i(0, 1992);			-- Dreadcoil
i(0, 2008);			-- Fido
i(0, 2010);			-- Flickering Fel
i(0, 1995);			-- Growing Ectoplasm
i(0, 1994);			-- Hiss
i(0, 2011);			-- Imply
i(0, 2014);			-- Living Pool
i(0, 1993);			-- Phyxia
i(0, 2016);			-- Rock Lobster
i(0, 2012);			-- Rover
i(0, 2013);			-- Seduction
i(0, 2009);			-- Seer's Eye
i(0, 1990);			-- Son of Skum
i(0, 2015);			-- Tia Mia and Larry
i(0, 1991);			-- Vilefang
--- NYI ---
i(0, 2046);			-- Arne's Test Pet

-----------------
-- PATCH 7.2.5 --
-----------------
i(151828, 2072);	-- Ageless Bronze Drake
i(151829, 2071);	-- Bronze Proto-Whelp
i(151633, 2065);	-- Dig Rat
i(150742, 2058);	-- Foe Reaper 0.9
i(150739, 2041);	-- Pocket Cannon
i(101426, 666);		-- Micronax
i(151632, 2064);	-- Mining Monkey
i(151569, 2063);	-- Sneaky Marmot
i(150741, 2057);	-- Tricorne
i(147900, 2051);	-- Twilight
--- TRAINER ---
i(0, 2033);			-- "Captain" Klutz
i(0, 2027);			-- Angry Geode
i(0, 2032);			-- Cookie's Leftovers
i(0, 2039);			-- Deadmines Parrot
i(0, 2038);			-- Deadmines Rat
i(0, 2031);			-- Foe Reaper 50
i(0, 2040);			-- Ironclad Crab
i(0, 2025);			-- Klutz's Battle Bird
i(0, 2024);			-- Klutz's Battle Monkey
i(0, 2026);			-- Klutz's Battle Rat
i(0, 2028);			-- Mining Monkey
i(0, 2023);			-- Unfortunate Defias
--- NYI ---
i(0, 2061);			-- Test Dragon Pet

-----------------
-- PATCH 7.3.0 --
-----------------
i(152963, 2093);	-- Amalgam of Destruction
i(152975, 2086);	-- Blazehound
i(152970, 2082);	-- Bound Stream
i(152976, 2087);	-- Cinderweb Recluse
i(152980, 2091);	-- Corrupted Blood
i(153026, 2115);	-- Cross Gazer
i(151645, 2001);	-- Dibbler
i(152967, 2079);	-- Discarded Experiment
i(153054, 2118);	-- Docile Skyfin
i(152974, 2085);	-- Drafty
i(152979, 2090);	-- Faceless Mindlasher
i(152972, 2083);	-- Faceless Minion
i(153055, 2119);	-- Fel-Afflicted Skyfin
i(153045, 2117);	-- Fel Lasher
i(153040, 2113);	-- Felclaw Marsuul
i(153057, 2121);	-- Fossorial Bile Larva
i(152555, 2077);	-- Ghost Shark
i(153056, 2120);	-- Grasping Manifestation
i(152978, 2089);	-- Infernal Pyreclaw
i(151269, 2002);	-- Naxxy
i(153027, 2116);	-- Orphaned Marsuul
i(152968, 2080);	-- Rattlejaw
i(153252, 2135);	-- Rebellious Imp
i(151234, 2062);	-- Shadow
i(152977, 2088);	-- Surger
i(152966, 2078);	-- Tinytron
i(152969, 2081);	-- Twilight Clutch-Sister
i(152981, 2092);	-- Unstable Tendril
i(153195, 2136);	-- Uuna
i(152973, 2084);	-- Zephyrian Prince
--- NPC ---
n(128163, 2122);	-- Antoran Bile Larva
n(128175, 2126);	-- Antoran Bilescourge
n(128172, 2131);	-- Arcane Gorger
n(128162, 2123);	-- Bile Larva
n(128164, 2124);	-- Bilescourge
n(128174, 2132);	-- Felcrazed Wyrm
n(128166, 2127);	-- Flickering Argunite
n(128156, 2114);	-- Globe Yeti
n(128173, 2133);	-- Pygmy Marsuul
n(128167, 2134);	-- Skyfin Juvenile
n(128171, 2130);	-- Void Shardling
n(128168, 2129);	-- Voidstalker Runt
n(128170, 2128);	-- Warpstalker Runt
--- TRAINER ---
i(0, 2097);			-- Baneglow
i(0, 2108);			-- Bloat
i(0, 2101);			-- Bucky
i(0, 2066);			-- Clamp
i(0, 2068);			-- Corporal Hammer
i(0, 2105);			-- Corrupted Blood of Argus
i(0, 2099);			-- Deathscreech
i(0, 2109);			-- Earseeker
i(0, 2096);			-- Foulclaw
i(0, 2103);			-- Gloamwing
i(0, 2100);			-- Gnasher
i(0, 2067);			-- M-37
i(0, 2106);			-- Mar'cuus
i(0, 2111);			-- Minixis
i(0, 2110);			-- One-of-Many
i(0, 2112);			-- Pilfer
i(0, 2098);			-- Retch
i(0, 2095);			-- Ruinhoof
i(0, 2104);			-- Shadeflicker
i(0, 2102);			-- Snozz
i(0, 2107);			-- Watcher
--- NYI ---
i(0, 2048);			-- Golden Retriever

-----------------
-- PATCH 7.3.5 --
-----------------
i(156721, 2158);	-- Mailemental
i(156851, 2163);	-- Silithid Mini-Tank

-----------------
-- PATCH 8.0.1 --
-----------------
i(163489, 2403);	-- Abyssal Eel
i(163506, 2420);	-- Accursed Hexxer
i(163650, 2433);	-- Aldrusian Sproutling
i(163555, 2439);	-- Azerite Puddle
i(163515, 2429);	-- Azeriti
i(162578, 2352);	-- Baa'l
i(163859, 2477);	-- Baby Crawg
i(163799, 2456);	-- Barnaby
i(163511, 2425);	-- Barnacled Hemit Crab
i(163494, 2408);	-- Bilefang Skitterer
i(163861, 2476);	-- Bloated Bloodfeaster
i(163500, 2414);	-- Bloodfeaster Larva
i(163818, 2451);	-- Bloodstone Tunneler
i(163508, 2422);	-- Blue Flitter
i(163244, 2402);	-- Brutus
i(163974, 2479);	-- Bucketshell
i(163776, 2442);	-- Bumbles
i(163514, 2428);	-- Carnivorous Lasher
i(160588, 2185);	-- Cap'n Crackers
i(163798, 2455);	-- Captain Nibs
i(163504, 2418);	-- Child of Jani
i(163823, 2457);	-- Coldlight Surfrunner
i(163491, 2405);	-- Corlain Falcon
i(163513, 2427);	-- Cou'pa
i(163805, 2448);	-- Craghoof Kid
i(163510, 2424);	-- Crimson Frog
i(156566, 2157);	-- Dart
i(163809, 2464);	-- Deathsting Scorpid
i(161080, 2197);	-- Direhorn Hatchling
i(163634, 2431);	-- Dreadtick Leecher
i(163492, 2406);	-- Drustvar Piglet
i(152878, 2201);	-- Enchanted Tiki Mask
i(163806, 2449);	-- False Knucklebump
i(160704, 2187);	-- Filthy Slime
i(163690, 2438);	-- Foulfeather
i(163711, 2440);	-- Fozling
i(158077, 2165);	-- Francois
i(163493, 2407);	-- Frenzied Cottontail
i(163509, 2423);	-- Freshwater Pincher
i(163648, 2432);	-- Fuzzy Creepling
i(163860, 2474);	-- Gearspring Hopper
i(163811, 2466);	-- Giggling Flame
i(163495, 2409);	-- Greatwing Macaw
i(160847, 2190);	-- Guardian Cobra Hatchling
i(163218, 2003);	-- Hearthy
i(163802, 2461);	-- Inky
i(163821, 2453);	-- Juvenile Brineshell
i(163804, 2447);	-- Kindleweb Spiderling
i(163822, 2454);	-- Kunchong Hatchling
i(163812, 2468);	-- Laughing Stonekin
i(163502, 2416);	-- Lil' Ben'fon
i(161016, 2196);	-- Lil' Tika
i(163778, 2443);	-- Lil' Siege Tower
i(163779, 2444);	-- Lil' War Machine
i(163815, 2471);	-- Littlehoof
i(163568, 2430);	-- Lost Platysaur
i(163496, 2410);	-- Mechanical Prairie Dog
i(161214, 2202);	-- Miimii
i(163814, 2467);	-- Mischievous Zephyr
i(163820, 2458);	-- Muskflank Calfling
i(163801, 2462);	-- Octopode Fry
i(163813, 2465);	-- Playful Frostkin
i(158464, 2188);	-- Poda
i(163800, 2452);	-- Poro
i(163689, 2437);	-- Ragepeep
i(163503, 2417);	-- Ranishu Runt
i(161089, 2199);	-- Restored Revenant
i(163220, 2401);	-- Rooter
i(163808, 2463);	-- Sandshell Chitterer
i(163512, 2426);	-- Sandstinger Wasp
i(163560, 2421);	-- Saurolisk Hatchling
i(163684, 2436);	-- Scabby
i(163797, 2445);	-- Scuttle
i(163490, 2404);	-- Seabreeze Bumblebee
i(163975, 2478);	-- Sir Snips
i(163858, 2475);	-- Slippy
i(160708, 2189);	-- Smoochums
i(163816, 2472);	-- Snapper
i(163819, 2459);	-- Snort
i(163803, 2446);	-- Sparkleshell Sandcrawler
i(160702, 2186);	-- Spawn of Merektha
i(163712, 2441);	-- Squawkling
i(163817, 2473);	-- Sunscale Hatchling
i(163505, 2419);	-- Swamp Toad
i(161081, 2198);	-- Taptaf
i(163677, 2435);	-- Teeny Titan Orb
i(163810, 2469);	-- Thistlebrush Bud
i(163807, 2450);	-- Tinder Pup
i(163498, 2412);	-- Tiny Direhorn
i(153541, 2143);	-- Tottle
i(163501, 2415);	-- Tragg the Curious
i(160940, 2192);	-- Vengeful Chicken
i(163652, 2434);	-- Voidwiggler
i(163824, 2460);	-- Voru'kar Leecher
i(160587, 2184);	-- Whomper
i(163497, 2411);	-- Wicker Pup
i(163499, 2413);	-- Zandalari Shinchomper
--- NPC ---
n(143044, 2385);	-- Barrier Hermit
n(143047, 2388);	-- Bloodfever Tarantula
n(143055, 2398);	-- Boghopper
n(143057, 2400);	-- Coastal Bounder
n(143045, 2386);	-- Coastal Scuttler
n(143048, 2389);	-- Elusive Skimmer
n(143033, 2374);	-- Freshwater Crawler
n(143042, 2383);	-- Giant Woodworm
n(143053, 2395);	-- Glutted Bleeder
n(143046, 2387);	-- Golden Beetle
n(143056, 2399);	-- Hermit Crab
n(143038, 2379);	-- Honey Bee
n(143041, 2382);	-- Inland Croaker
n(143049, 2390);	-- Leafy Flutterwing
n(143039, 2380);	-- Parasitic Boarfly
n(143052, 2394);	-- Returned Hatchling
n(143032, 2373);	-- River Frog
n(143037, 2378);	-- River Otter
n(143036, 2377);	-- Sandyback Crawler
n(143040, 2381);	-- Shack Crab
n(143031, 2372);	-- Shadowback Crawler
n(143043, 2384);	-- Shore Butterfly
n(143054, 2397);	-- Spectral Raven
n(143051, 2393);	-- Sticky Oozeling
n(143034, 2375);	-- Vale Marmot
n(143035, 2376);	-- Valley Chicken
n(143050, 2392);	-- Young Sand Sifter
--- TRAINER ---
i(0, 2204);			-- "Fixed" Remote Control Rocket Chicken
i(0, 2203);			-- "Repaired" Portable Fire Starter
i(0, 2205);			-- "Upgraded" Nightmare Weaver
i(0, 2209);			-- Atherton
i(0, 2212);			-- Azerite Elemental
i(0, 2211);			-- Azerite Geode
i(0, 2210);			-- Azerite Slime
i(0, 2349);			-- Baa'l
i(0, 2350);			-- Baa'l
i(0, 2359);			-- Beets
i(0, 2145);			-- Bloodfeaster Larva
i(0, 2337);			-- Bloodtusk
i(0, 2370);			-- Breaker
i(0, 2200);			-- Bristlespine
i(0, 2344);			-- Brite
i(0, 2228);			-- Bruce
i(0, 2213);			-- Bumble B.
i(0, 2333);			-- Burly Jr.
i(0, 2215);			-- Busy B.
i(0, 2345);			-- Buzzbeak
i(0, 2206);			-- Bybee
i(0, 2230);			-- Chitara
i(0, 2229);			-- Chum
i(0, 2355);			-- Clubber
i(0, 2164);			-- Colonel Shucks
i(0, 2221);			-- Corrupted Slime
i(0, 2220);			-- Dead Deckhand Leonard
i(0, 2338);			-- Delta
i(0, 2364);			-- Eighty Eight
i(0, 2341);			-- Feathers
i(0, 2214);			-- Fris B.
i(0, 2233);			-- Fungus
i(0, 2367);			-- Jammer
i(0, 2208);			-- Jennings
i(0, 2360);			-- Lazy
i(0, 2223);			-- Lesser Charged Gale
i(0, 2225);			-- Lesser Twisted Current
i(0, 2334);			-- Lilly
i(0, 2340);			-- Little Blue
i(0, 2227);			-- Maws Jr.
i(0, 2347);			-- Milo
i(0, 2226);			-- Mind Warper
i(0, 2335);			-- Molaze
i(0, 2232);			-- Murray
i(0, 2231);			-- Old Blue
i(0, 2332);			-- Pokey
i(0, 2357);			-- Rawly
i(0, 2222);			-- Reanimated Kraken Tentacle
i(0, 2368);			-- Scales
i(0, 2339);			-- Scars
i(0, 2195);			-- Shelby
i(0, 2194);			-- Sheldon
i(0, 2193);			-- Shelly
i(0, 2363);			-- Skeeto
i(0, 2356);			-- Spineleaf
i(0, 2343);			-- Splat
i(0, 2361);			-- Spokes
i(0, 2353);			-- Squeezer
i(0, 2354);			-- Squirt
i(0, 2371);			-- Stickers
i(0, 2358);			-- Stinger
i(0, 2336);			-- Ticker
i(0, 2346);			-- Tikka
i(0, 2330);			-- Timbo
i(0, 2365);			-- Turbo
i(0, 2366);			-- Whiplash
--- NYI ---
i(0, 2076);			-- SpeedyNumberIII
i(162686, 2144);	-- REUSE \\ Demon Goat
i(163553, 0);		-- Digitized Assistant
i(163554, 0);		-- Finicky Gauntlet
i(163557, 0);		-- Gigan Tarantula
i(154703, 0);		-- Hot Air Baloon
i(163556, 0);		-- Mechanized Gulper
i(163559, 0);		-- Queen Cobra
i(152879, 0);		-- REUSE ME
i(152880, 0);		-- REUSE ME

-----------------
-- PATCH 8.1.0 --
-----------------
i(165857, 2533);	-- Alarm-O-Dog
i(166714, 2566);	-- Albatross Hatchling
i(166491, 2555);	-- Albino Duskwatcher
i(166486, 2551);	-- Baby Stonehide
i(165846, 2527);	-- Child of Pa'ku
i(166718, 2568);	-- Cobalt Raven
i(166716, 2567);	-- Crimson Bat Pup
i(166500, 2562);	-- Crimson Octopode
i(166449, 2544);	-- Darkshore Sentinel
i(166345, 2538);	-- Dasher
i(166451, 2546);	-- Detective Ray
i(166453, 2548);	-- Everburning Treant
i(166493, 2557);	-- Firesting Buzzer
i(166448, 2545);	-- Gust of Cyclarus
i(166452, 2547);	-- Hydrath Droplet
i(166487, 2552);	-- Leatherwing Screecher
i(165855, 2532);	-- Leper Rat
i(166494, 2558);	-- Lord Woofington
i(165854, 2531);	-- Mechanical Cockroach
i(165849, 2530);	-- Mechantula
i(165894, 2534);	-- Mini Spider Tank
i(166489, 2554);	-- Needleback Pup
i(166528, 2563);	-- Nightwreathed Watcher
i(166715, 2564);	-- Rebuilt Gorilla Bot
i(166723, 2565);	-- Rebuilt Mechanical Spider
i(165722, 2525);	-- Redridge Tarantula
i(166488, 2553);	-- Rotting Ghoul
i(166498, 2560);	-- Scritches
i(166492, 2556);	-- Shadefeather Hatchling
i(165848, 2528);	-- Spawn of Krag'wa
i(166347, 2540);	-- Tanzil
i(165847, 2529);	-- Thunder Lizard Runt
i(166499, 2561);	-- Thunderscale Whelpling
i(166495, 2559);	-- Tonguelasher
i(166346, 2539);	-- Trecker
i(166719, 2569);	-- Violet Abyssal Eel
i(166454, 2549);	-- Void Jelly
i(165907, 2535);	-- Wicker Wraith
i(166455, 2550);	-- Zur'aj the Depleted
--- NPC ---
n(148517, 2537);	-- Baby Zandalari Raptor
--- TRAINER ---
i(0, 2500);			-- Accelerated Defrosting Unit
i(0, 2490);			-- Automated Drilling Machine
i(0, 2487);			-- Automated Spider Tank
i(0, 2489);			-- Autonomous Omni Chopper
i(0, 2495);			-- Bloated Leper Rat
i(0, 2486);			-- Cockroach
i(0, 2498);			-- Freeze Ray Robot Prototype
i(0, 2494);			-- Gnomeregan Guard Mechanostrider
i(0, 2493);			-- Gnomeregan Guard Tiger
i(0, 2492);			-- Gnomeregan Guard Wolf
i(0, 2496);			-- Gnomish Rocket Chicken
i(0, 2485);			-- Leper Rat
i(0, 2502);			-- Living Napalm
i(0, 2504);			-- Living Permafrost
i(0, 2503);			-- Living Sludge
i(0, 2501);			-- Prototype Annoy-O-Tron
i(0, 2488);			-- Pulverizer Bot Mk 6001
i(0, 2499);			-- Sludge Disposal Unit
i(0, 2497);			-- Ultra Safe Napalm Carrier
--- NYI ---
i(166791, 0);		-- Corlain Falcon
i(164629, 2480);	-- Test Pet
i(0, 2481);			-- Unknown

-----------------
-- PATCH 8.1.5 --
-----------------
i(167053, 2586);	-- Amberglow Stinger
i(167051, 2583);	-- Azure Windseeker
i(167050, 2582);	-- Baoh-Xi
i(167010, 2576);	-- Beakbert
i(167049, 2581);	-- Comet
i(165845, 2526);	-- Feathers
i(167011, 2577);	-- Froglet
i(167057, 2591);	-- Happiness
i(164969, 2484);	-- Horse Balloon
i(167058, 2585);	-- Kor'thik Swarmling
i(167055, 2589);	-- Living Amber
i(167008, 2575);	-- Mr. Crabs
i(164971, 2483);	-- Murloc Balloon
i(167056, 2590);	-- Ravenous Prideling
i(167009, 2578);	-- Scaley
i(167054, 2587);	-- Spawn of Garalon
i(167052, 2584);	-- Spirit of the Spring
i(167047, 2579);	-- Stoneclaw
i(167048, 2580);	-- Wayward Spirit
i(164970, 2482);	-- Wolf Balloon
--- NYI ---
i(154902, 2146);	-- Perculia's Peculiar Parrot

-----------------
-- PATCH 8.2.0 --
-----------------
i(169322, 2755);	-- Adventurous Hopling
i(169363, 2697);	-- Amethyst Spireshell
i(169393, 2720);	-- Arachnoid Skitterbot
i(170072, 2766);	-- Armored Vaultbot
i(169354, 2688);	-- Brilliant Glimmershell
i(169373, 2706);	-- Brinestone Algan
i(169392, 2719);	-- Bonebiter
i(169374, 2707);	-- Budding Algan
i(170102, 2767);	-- Burnout
i(169356, 2690);	-- Caverndark Nightmare
i(169357, 2691);	-- Chitterspine Devourer
i(169355, 2689);	-- Chitterspine Needler
i(169375, 2708);	-- Coral Lashling
i(169677, 2749);	-- Crypt Fiend
i(169361, 2695);	-- Daggertooth Frenzy
i(169365, 2699);	-- Damplight Slug
i(169377, 2710);	-- Drowned Hatchling
i(169396, 2721);	-- Echoing Oozeling
i(169205, 2754);	-- Ghostly Whelpling
i(169350, 2684);	-- Glittering Diamondshell
i(169378, 2711);	-- Golden Snorf
i(169679, 2747);	-- Gruesome Belcher
i(169879, 2756);	-- Irradiated Elementaling
i(169349, 2683);	-- Kelpfin
i(169358, 2692);	-- Lightless Ambusher
i(169382, 2715);	-- Lost Robogrip
i(169353, 2687);	-- Lustrous Glimmershell
i(169385, 2718);	-- Microbot 8D
i(169384, 2717);	-- Microbot XD
i(169360, 2694);	-- Mindlost Bloodfrenzy
i(169670, 2638);	-- Minimancer
i(169371, 2681);	-- Murgle
i(169380, 2713);	-- Mustyfur Snooter
i(169362, 2696);	-- Nameless Octopode
i(169372, 2682);	-- Necrofin Tadpole
i(169381, 2714);	-- OOX-35/MG
i(169352, 2686);	-- Pearlescent Glimmershell
i(169364, 2698);	-- Prismatic Softshell
i(169351, 2685);	-- Sandclaw Nestseeker
i(169369, 2703);	-- Sandkeep
i(169370, 2704);	-- Scalebrood Hydra
i(169367, 2701);	-- Seafury
i(169676, 2750);	-- Shrieker
i(169376, 2709);	-- Skittering Eel
i(167809, 2762);	-- Slimy Darkhunter
i(167808, 2758);	-- Slimy Eel
i(167807, 2761);	-- Slimy Fangtooth
i(167810, 2763);	-- Slimy Hermit Crab
i(167806, 2760);	-- Slimy Octopode
i(167805, 2757);	-- Slimy Otter
i(167804, 2765);	-- Slimy Sea Slug
i(169379, 2712);	-- Snowsoft Nibbler
i(169359, 2693);	-- Spawn of Nalaada
i(169886, 2753);	-- Spraybot 0D
i(169368, 2702);	-- Stormwrath
i(169383, 2716);	-- Utility Mechanoclaw
i(169366, 2700);	-- Wriggler
i(169348, 2680);	-- Zanj'ir Poker
i(169678, 2748);	-- Ziggy
--- NPC ---
n(154814, 2678);	-- Abyssal Slitherling
n(154789, 2672);	-- Alloyed Alleyrat
n(154718, 2657);	-- Blackchasm Crawler
n(154714, 2652);	-- Bloodseeker
n(154720, 2658);	-- Chitterspine Deepstalker
n(154706, 2648);	-- Chitterspine Skitterling
n(154796, 2675);	-- Clanking Scrapsorter
n(154781, 2668);	-- Copper Hopper
n(154712, 2651);	-- Deeptide Fingerling
n(154769, 2662);	-- Duskytooth Snooter
n(154773, 2664);	-- Experimental Roach
n(154775, 2665);	-- Fleeting Frog
n(154704, 2647);	-- Glimmershell Scuttler
n(154710, 2650);	-- Great Sea Albatross
n(154794, 2674);	-- H4ND-EE
n(154708, 2649);	-- Hissing Chitterspine
n(154771, 2663);	-- Junkheap Roach
n(154798, 2676);	-- Malfunctioning Microbot
n(154785, 2670);	-- Mechagon Marmot
n(154779, 2667);	-- Motorized Croaker
n(154724, 2660);	-- Muck Slug
n(154783, 2669);	-- Rustbolt Clucker
n(154767, 2661);	-- Rustyroot Snooter
n(154697, 2645);	-- Sandclaw Pincher
n(154702, 2646);	-- Sandclaw Sunshell
n(154791, 2673);	-- Scrapyard Tunneler
n(154787, 2671);	-- Specimen 97
n(154716, 2653);	-- Spireshell Snail
n(154722, 2659);	-- Trench Slug
n(154803, 2677);	-- Twilight Whelpling
n(154777, 2666);	-- Yellow Junkhopper
--- TRAINER ---
i(0, 2609);			-- Belchling
i(0, 2592);			-- Blackmane
i(0, 2724);			-- Chomp
i(0, 2739);			-- CK-9 Micro-Oppression Unit
i(0, 2738);			-- Creakclank
i(0, 2597);			-- Crypt Fiend
i(0, 2595);			-- Diseased Rat
i(0, 2728);			-- Elderspawn of Nalaada
i(0, 2733);			-- Frenzied Knifefang
i(0, 2601);			-- Gargy
i(0, 2734);			-- Giant Opaline Conch
i(0, 2735);			-- Gnomefeaster
i(0, 2737);			-- Goldenbot XD
i(0, 2602);			-- Huncher
i(0, 2770);			-- Infectus
i(0, 2731);			-- Kelpstone
i(0, 2774);			-- Lefty
i(0, 2612);			-- Liz the Tormentor
i(0, 2596);			-- Lost Soul
i(0, 2730);			-- Mindshackle
i(0, 2613);			-- Nefarious Terry
i(0, 2727);			-- Pearlhusk Crawler
i(0, 2594);			-- Plague Rat
i(0, 2593);			-- Plague Roach
i(0, 2606);			-- Plague Whelp
i(0, 2771);			-- Plagued Mailemental
i(0, 2723);			-- Prince Wiggletail
i(0, 2769);			-- Pyro
i(0, 2729);			-- Ravenous Scalespawn
i(0, 2751);			-- Risen Guard
i(0, 2752);			-- Risen Noble
i(0, 2605);			-- Risen Villager
i(0, 2598);			-- Rotting Scavenger
i(0, 2726);			-- Shadowspike Lurker
i(0, 2725);			-- Silence
i(0, 2608);			-- Sludge Belcher
i(0, 2768);			-- Smokey
i(0, 2772);			-- Soul Collector
i(0, 2736);			-- Sputtertube
i(0, 2603);			-- Tommy the Cruel
i(0, 2611);			-- Tormented Spirit
i(0, 2741);			-- Unit 6
i(0, 2742);			-- Unit 17
i(0, 2740);			-- Unit 35
i(0, 2732);			-- Voltgorger
i(0, 2599);			-- Wailing Haunt
i(0, 2600);			-- Wandering Phantasm
i(0, 2607);			-- Zasz the Tiny
--- NYI ---
i(169195, 0);		-- Golden Cricket

-----------------
-- PATCH 8.2.5 --
-----------------
i(172493, 2794);	-- Crimson Skipper
i(0, 2778);			-- Finduin
i(0, 2777);			-- Gillvanas
i(0, 2795);			-- Jenafur
i(172016, 2621);	-- Lil' Nefarian
i(172491, 2792);	-- Papi
i(173296, 2776);	-- Rikki
i(172492, 2793);	-- Sunsoaked Flitter

-----------------
-- PATCH 8.3.0 --
-----------------
i(174461, 2842);	-- Anomalus
i(174448, 2834);	-- Aqir Hivespawn
i(174476, 2848);	-- Aqir Tunneler
i(174474, 2846);	-- Corrupted Tentacle
i(174481, 2850);	-- Cursed Dune Watcher
i(174457, 2838);	-- C'Thuffer
i(0, 2623);			-- Dottie
i(174449, 2835);	-- Ra'kim
i(174828, 2868);	-- Experiment 13
i(174452, 2836);	-- Eye of Corruption
i(174456, 2837);	-- Gloop
i(174479, 2852);	-- Jade Defender
i(174473, 2845);	-- K'uddly
i(174446, 2832);	-- Muar
i(174477, 2849);	-- Pygmy Camel
i(174463, 2844);	-- Reek
i(174475, 2847);	-- Rotbreath
i(175049, 2872);	-- Shadowbarb Hatchling
i(174829, 2869);	-- Tinyclaw
i(174447, 2833);	-- Void-Scarred Anubisath
i(174462, 2843);	-- Void-Scarred Beetle
i(174459, 2840);	-- Void-Scarred Cat
i(174458, 2839);	-- Void-Scarred Hare
i(174646, 2797);	-- Void-Scarred Pup
i(174460, 2841);	-- Void-Scarred Rat
i(173726, 2796);	-- Void-Scarred Toad
i(174827, 2870);	-- Wailing Lasher
i(174478, 2851);	-- Wicked Lurker
i(174480, 2853);	-- Windfeather Chick
--- NPC ---
n(162525, 2867);	-- Golden Chirper
n(162499, 2863);	-- Oasis Void-Duster
n(162506, 2866);	-- Voidglower
n(162502, 2864);	-- Void-Scarred Locust
n(162518, 2865);	-- Voidskimmer
--- TRAINER ---
i(0, 2799);			-- Alpha
i(0, 2856);			-- Aqir Sandcrawler
i(0, 2860);			-- Baruk Stone Defender
i(0, 2800);			-- Beta
i(0, 2857);			-- Blotto
i(0, 2801);			-- Bomber
i(0, 2822);			-- Char
i(0, 2807);			-- Crushface
i(0, 2808);			-- Fozling
i(0, 2804);			-- Frill
i(0, 2811);			-- Fury
i(0, 2814);			-- Gigacharged Mayhem Maker
i(0, 2812);			-- Glitzy
i(0, 2858);			-- K'tiny the Mad
i(0, 2816);			-- Liz
i(0, 2802);			-- Logic
i(0, 2803);			-- Math
i(0, 2819);			-- Ninn Jah
i(0, 2810);			-- Presto
i(0, 2817);			-- Ralf
i(0, 2815);			-- Rampage
i(0, 2854);			-- Retinus the Seeker
i(0, 2805);			-- Ruddy
i(0, 2820);			-- Shred
i(0, 2818);			-- Splint
i(0, 2823);			-- Tempton
i(0, 2859);			-- Tormentius
i(0, 2809);			-- Tremors
i(0, 2861);			-- Vil'thik Hatchling
i(0, 2806);			-- Wanderer
i(0, 2855);			-- Whispers
i(0, 2821);			-- Wilbur
--- NYI ---
i(0, 2871);			-- Pet Training Dummy

-----------------
-- PATCH 9.0.1 --
-----------------
i(0, 2779);			-- Anima Wyrmling
--- NYI ---
i(0, 2951);			-- PH Slime
i(180838, 0);		-- Blue Etherwyrm
i(180837, 0);		-- Blue Glimmerfly
i(181259, 0);		-- Clutch
i(180632, 0);		-- Gorm Rootstinger
i(180590, 0);		-- Lost Soul
i(180860, 0);		-- Orange Vulpin
i(180841, 0);		-- Olive Dragon Turtle
i(182672, 0);		-- Misty Leaper
i(180840, 0);		-- Pink Glimmerfly
i(180861, 0);		-- Red Vulpin
i(180867, 0);		-- Silver Crane
i(180813, 0);		-- Silver Teroclaw
i(183853, 0);		-- Sinfall Screecher
i(184034, 0);		-- Stony's Infused Ruby
i(183714, 0);		-- Swamp Reed
i(180627, 0);		-- Tranquil Wader

-----------------
-- PATCH 9.0.2 --
-----------------
i(180640, 2911);	-- Amber Glitterwing
i(180587, 2893);	-- Animated Tome
i(184221, 3054);	-- Archivist's Quill
i(183193, 3030);	-- Ashen Chomper
i(181268, 2958);	-- Backbone
i(183854, 3011);	-- Battie
i(181315, 2965);	-- Bloodfeaster Spiderling
i(182606, 3013);	-- Bloodlouse Larva
i(180584, 2891);	-- Blushing Spiderling
i(181172, 2948);	-- Boneweave Hatchling
i(180586, 2892);	-- Bound Lightspawn
i(180815, 2931);	-- Brightscale Hatchling
i(181262, 2952);	-- Bubbling Pustule
i(180589, 2894);	-- Burdened Soul
i(183114, 3025);	-- Carpal
i(183107, 3024);	-- Char
i(180643, 2908);	-- Chirpy Valeshrieker
i(180642, 2909);	-- Cloudfeather Fledgling
i(181265, 2955);	-- Corpselouse Larva
i(181168, 2945);	-- Corpulent Bonetusk
i(184400, 3065);	-- Courage
i(180593, 2899);	-- Court Messenger
i(180602, 2903);	-- Crimson Dredwing Pup
i(183859, 2900);	-- Dal
i(183412, 3041);	-- Death Seeker
i(183409, 3039);	-- Decaying Mawrat
i(180869, 2940);	-- Devoured Wader
i(180629, 2922);	-- Devouring Animite
i(180645, 2905);	-- Dodger
i(183407, 3037);	-- Dread
i(182683, 2967);	-- Dredger Butler
i(180639, 2912);	-- Dusty Sporeflutterer
i(181266, 2956);	-- Feasting Larva
i(180641, 2910);	-- Floofa
i(181283, 2964);	-- Foulwing Buzzer
i(183192, 3032);	-- Frenzied Mawrat
i(182661, 3016);	-- Fun Guss
i(180638, 2913);	-- Fuzzy Shimmermoth
i(180866, 2938);	-- Gilded Wader
i(180034, 2888);	-- Glimr
i(180634, 2917);	-- Gloober, as G'huun
i(180812, 2925);	-- Golden Cloudfeather
i(180857, 2934);	-- Goldenpaw Kit
i(180630, 2921);	-- Gorm Harrier
i(180631, 2920);	-- Gorm Needler
i(180633, 2918);	-- Grubby
i(180839, 2928);	-- Helpful Glimmerfly
i(183116, 3027);	-- Hissing Deathroach
i(180635, 2916);	-- Hungry Burrower
i(180871, 2941);	-- Indigo
i(181270, 2960);	-- Invertebrate Oil
i(183515, 3045);	-- Iridescent Ooze
i(183601, 3043);	-- Jiggles
i(178533, 2622);	-- Jingles
i(184399, 3064);	-- Larion Cub
i(184401, 3063);	-- Larion Pouncer
i(183196, 3035);	-- Lavender Nibbler
i(182662, 3017);	-- Leafadore
i(184397, 3062);	-- Lost Featherling
i(182613, 3008);	-- Lost Quill
i(184507, 3066);	-- Lucy
i(181171, 2947);	-- Luminous Webspinner
i(183191, 3029);	-- Maw Crawler
i(183194, 3033);	-- Maw Stalker
i(181269, 2959);	-- Micromancer
i(0, 3053);			-- Moon-Touched Netherwhelp
i(181282, 2963);	-- Mu'dud
i(181164, 2944);	-- Oonar's Arm
i(180628, 2923);	-- Pearlwing Heron
i(181170, 2946);	-- Pernicious Bonetusk
i(180208, 2889);	-- PHA7-YNX
i(173891, 2798);	-- Plagueborn Slime
i(181264, 2954);	-- Plaguelouse Larva
i(180588, 2896);	-- Primordial Bogling
i(180859, 2935);	-- Purity
i(183621, 3046);	-- Putrid Geist
i(180591, 2898);	-- Raw Emotion
i(175114, 2878);	-- Renny
i(180644, 2907);	-- Rocky
i(184350, 3042);	-- Ruffle
i(182671, 3020);	-- Runelight Leaper
i(180814, 2933);	-- Sable
i(183117, 3028);	-- Severs
i(183410, 3040);	-- Sharpclaw
i(182673, 3022);	-- Shimmerbough Hoarder
i(181263, 2953);	-- Shy Melvin
i(180856, 2932);	-- Silvershell Snapper
i(181555, 2966);	-- Sinheart
i(182674, 3023);	-- Sir Reginald
i(181173, 2949);	-- Skittering Venomspitter
i(181271, 2961);	-- Sludge Feeler
i(0, 3047);			-- Spinebug
i(183623, 3044);	-- Spinemaw Gormling
i(180872, 2942);	-- Spirited Skyfoal
i(184509, 3067);	-- Spriggan Trickster
i(180637, 2914);	-- Starry Dreamfoal
i(182664, 3019);	-- Stemmins
i(184398, 3061);	-- Steward Featherling
i(180601, 3006);	-- Stoneskin Dredwing Pup
i(183855, 3012);	-- Stony
i(182612, 3009);	-- The Count
i(181272, 2962);	-- Toenail
i(183195, 3034);	-- Torghast Lurker
i(183115, 3026);	-- Tower Deathroach
i(180592, 2901);	-- Trapped Stonefiend
i(182663, 3018);	-- Trootie
i(183408, 3038);	-- Undying Deathroach
i(180603, 2904);	-- Violet Dredwing Pup
i(183395, 3036);	-- Will of Remornia
i(180636, 2915);	-- Willowbreeze
i(184512, 3079);	-- Winterleaf Spriggan
i(180585, 2897);	-- Wrathling
i(181267, 2957);	-- Writhing Spine
--- NPC ---
n(175023, 3051);	-- Animated Cruor
n(175022, 3050);	-- Bleak Skitterer
n(172130, 2950);	-- Clutch
n(171702, 2936);	-- Copperfur Kit
n(176024, 3083);	-- Crawbat
n(176020, 3081);	-- Decay Grub
n(173590, 3021);	-- Deepwood Leaper
n(171149, 2902);	-- Dusky Dredwing Pup
n(171567, 2926);	-- Fledgling Teroclaw
n(171664, 2927);	-- Fluttering Glimmerfly
n(171670, 2930);	-- Glimmerpool Hatchling
n(171229, 2919);	-- Gorm Rootstinger
n(171123, 2895);	-- Lost Soul
n(173555, 3014);	-- Mire Creeper
n(175024, 3052);	-- Necroray Spawnling
n(175021, 3049);	-- Pulsating Maggot
n(173506, 3007);	-- Rosetipped Spiderling
n(171703, 2937);	-- Rustfur Kit
n(176021, 3082);	-- Starmoth
n(171228, 2924);	-- Tranquil Wader
n(176019, 3080);	-- Verdant Kit
n(171668, 2929);	-- Vibrant Glimmerfly
n(171712, 2939);	-- Wader Chick
n(171666, 2943);	-- Wild Etherwyrm
n(173556, 3015);	-- Withering Creeper
--- TRAINER ---
i(0, 2989);			-- Ash
i(0, 2975);			-- Battery
i(0, 2980);			-- Bloog
i(0, 2981);			-- Bone Crusher
i(0, 2992);			-- Boneclaw
i(0, 3070);			-- Briarpaw
i(0, 3005);			-- Brite
i(0, 2982);			-- Chipper
i(0, 3071);			-- Chittermaw
i(0, 3068);			-- Crystalsnap
i(0, 3075);			-- Digallo
i(0, 3002);			-- Duster
i(0, 2990);			-- Fang
i(0, 2887);			-- Flipper
i(0, 3076);			-- Gelatinous
i(0, 2974);			-- Glitterwing
i(0, 3078);			-- Glurp
i(0, 2971);			-- Golden Grazer
i(0, 2978);			-- Gorgemouth
i(0, 2968);			-- Jawbone
i(0, 3077);			-- Kostos
i(0, 2983);			-- Leftovers
i(0, 2984);			-- Leftovers
i(0, 2985);			-- Leftovers
i(0, 3072);			-- Mistwing
i(0, 3004);			-- Needlenose
i(0, 2998);			-- Nightfang
i(0, 2970);			-- Plains Peachick
i(0, 2977);			-- Pounder
i(0, 2999);			-- Rascal
i(0, 2994);			-- Rocko
i(0, 3001);			-- Runehoof
i(0, 2979);			-- Scorch
i(0, 3073);			-- Sewer Creeper
i(0, 2972);			-- Shelby
i(0, 2976);			-- Slasher
i(0, 3000);			-- Slugger
i(0, 2886);			-- Snipper
i(0, 2993);			-- Spindler
i(0, 3003);			-- Star Tail
i(0, 2987);			-- Stinkdust
i(0, 2969);			-- Sunset Glimmerfly
i(0, 2991);			-- Swarm
i(0, 3074);			-- The Countess
i(0, 2973);			-- Tinyhoof
i(0, 2988);			-- Trailblazer
i(0, 2885);			-- Whipper
i(0, 2986);			-- Whirly
i(0, 2996);			-- Wretch
--- NYI ---
i(0, 184461);		-- Clutch

-----------------
-- PATCH 9.0.5 --
-----------------
i(0, 2780);			-- Daisy

-----------------
-- PATCH 9.1.0 --
-----------------
i(186449, 3117);	-- Amaranthine Stinger
i(186548, 3127);	-- Chompy
i(186546, 3103);	-- Copperback Etherwyrm
i(186543, 3138);	-- Domestic Aunian
i(186554, 3128);	-- Eye of Allseeing
i(186555, 3129);	-- Eye of Extermination
i(185919, 3097);	-- Flawless Amethyst Baubleworm
i(186557, 3114);	-- Fodder
i(186549, 3130);	-- Gilded Darknight
i(186534, 3110);	-- Gizmo
i(186538, 3140);	-- Gnashtooth
i(186564, 3125);	-- Golden Eye
i(186559, 3121);	-- Grappling Gauntlet
i(186191, 3099);	-- Infused Etherwyrm
i(186547, 3116);	-- Invasive Buzzer
i(186558, 3122);	-- Irongrasp
i(186542, 3136);	-- Korthian Specimen
i(186188, 3098);	-- Lil' Abom
i(186550, 3131);	-- Mawsworn Minion
i(186551, 3132);	-- Mord'al Eveningstar
i(186541, 3137);	-- Mosscoated Gromit
i(186540, 3113);	-- Rarity
i(186552, 3133);	-- Rook
i(186537, 3104);	-- Ruby Baubleworm
i(186544, 3010);	-- Sinfall Screecher
i(186539, 3101);	-- Sly
i(184867, 3092);	-- Squibbles
i(186556, 3100);	-- Timeless Mechanical Dragonling
i(186535, 3106);	-- Topaz Baubleworm
i(186536, 3105);	-- Turquoise Baubleworm
--- NPC ---
n(179131, 3102);	-- Animite Broodling
n(179248, 3134);	-- Anxious Nibbler
n(179179, 3115);	-- Clinging Remains
n(179164, 3108);	-- Curious Purrkin
n(179167, 3111);	-- Damp Skrat
n(179226, 3123);	-- Deathroach
n(179256, 3139);	-- Devourling
n(179229, 3126);	-- Eye of Affliction
n(179219, 3120);	-- Grip of Terror
n(179183, 3119);	-- Lost Limb
n(179168, 3112);	-- Scavenging Skrat
n(179182, 3118);	-- Scurrying Mawrat
n(179165, 3109);	-- Silver Purrkin
n(179227, 3124);	-- Vile Deathroach
n(179329, 3141);	-- Wild Corpsefly
n(179250, 3135);	-- Young Garnetgullet
--- TRAINER ---
i(0, 3091);			-- Churro
i(0, 3155);			-- Gurgl
i(0, 3156);			-- Hornswoggl
i(0, 3158);			-- Missing1
i(0, 3089);			-- RT-3 M15
i(0, 3090);			-- Squibbles
--- NYI ---
i(186545, 0);		-- REUSE

-----------------
-- PATCH 9.1.5 --
-----------------
i(188837, 3153);	-- Blinky
i(186553, 3107);	-- Gurgl
--- NYI ---
i(0, 3188);			-- Trub'ul

-----------------
-- PATCH 9.2.0 --
-----------------
i(189363, 3223);	-- Ambystan Darter
i(189369, 3179);	-- Archetype of Animation
i(189380, 3207);	-- Archetype of Cunning
i(187795, 3174);	-- Archetype of Discovery
i(187713, 3169);	-- Archetype of Focus
i(189383, 3211);	-- Archetype of Malice
i(187928, 3197);	-- Archetype of Metamorphosis
i(187803, 3178);	-- Archetype of Motion
i(189375, 3189);	-- Archetype of Multiplicity
i(189381, 3201);	-- Archetype of Predation
i(189371, 3229);	-- Archetype of Renewal
i(189367, 3220);	-- Archetype of Satisfaction
i(189382, 3181);	-- Archetype of Serenity
i(189364, 3204);	-- Archetype of Survival
i(189377, 3233);	-- Archetype of Vigilance
i(189585, 3237);	-- E'rnee
i(0, 3218);			-- Enraged Poultrid
i(189365, 3224);	-- Fierce Scarabid
i(187735, 3172);	-- Geordy
i(189374, 3232);	-- Leaping Leporid
i(188679, 3221);	-- Lightless Tormentor
i(189376, 3235);	-- Microlicid
i(189368, 3226);	-- Multichicken
i(187734, 3171);	-- Omnipotential Core
i(191039, 3247);	-- Pocopoc Traveler
i(189373, 3231);	-- Prototickles
i(187733, 3170);	-- Resonant Echo
i(189378, 3222);	-- Shelly
i(189370, 3227);	-- Stabilized Geomental
i(189372, 3230);	-- Terror Jelly
i(187798, 3176);	-- Tunneling Vombata
i(189366, 3225);	-- Violent Poultrid
i(189379, 3234);	-- Viperid Menace
--- NPC ---
n(183277, 3216);	-- Ambystan Snapper
n(183281, 3217);	-- Aurelid Floater
n(182876, 3212);	-- Bloodsucker Vespoid
n(181362, 3173);	-- Bufonid Croaker
n(182691, 3206);	-- Emerald Scarabid
n(182768, 3210);	-- Green Viperid
n(182760, 3209);	-- King Viperid
n(183231, 3215);	-- Mawtouched Geomental
n(182568, 3205);	-- Metallic Scarabid
n(183158, 3214);	-- Momma Vombata
n(183292, 3219);	-- Predatory Helicid
n(182260, 3196);	-- Proto Avian Fledgling
n(182758, 3208);	-- Red Viperid
n(182294, 3200);	-- Scarlet Proto Avian
n(182437, 3202);	-- Tarachnid Stalker
n(182473, 3203);	-- Tarachnid Ambusher
n(182234, 3191);	-- Timid Leporid
n(182019, 3180);	-- Venomous Bufonid
n(182216, 3190);	-- Vicious Leporid
n(183142, 3213);	-- Vombata Pup
--- NYI ---
n(185475, 3246);	-- Tezpet

-----------------
-- PATCH 9.2.5 --
-----------------
i(0, 3177);			-- Drakks
i(190586, 3249);	-- Lil' Ursoc
i(0, 3175);			-- Murkastrasza

------------------
-- PATCH 10.0.0 --
------------------
--- NYI ---
i(0, 3339);			-- Black Dragon Whelp
i(0, 3340);			-- Blue Dragon Whelp
i(0, 3343);			-- Bronze Dragon Whelp
i(0, 3341);			-- Red Dragon Whelp
i(0, 3364);			-- Striped Snakebiter
i(0, 3257);			-- Test Beetle
i(0, 3308);			-- Time-Lost Duckling
i(0, 3363);			-- Truesilver Crab
i(193614, 3314);	-- Groundshaker
i(193380, 3298);	-- Pink Salamanther
i(193587, 3312);	-- Time-Lost Duck
i(193620, 3267);	-- Time-Lost Slyvern
i(193068, 3277);	-- Time-Lost Treeflitter
i(191126, 0);		-- Obsidian Whelpling
i(192050, 0);		-- zzOld - [PH] Black Baby Fox Wyvern [REUSE]
i(193863, 0);		-- zzOld - [PH] Dark Baby Vorquin (REUSE)
i(193063, 0);		-- zzOld - [PH] Dark Shaggy Rabbit (REUSE)
i(193862, 0);		-- zzOld - [PH] Pale Baby Vorquin (REUSE)
i(191929, 0);		-- zzOld - [PH] White Flying Squirrel (REUSE)

------------------
-- PATCH 10.0.2 --
------------------
i(191886, 3274);	-- Alvin the Anvil
i(193852, 3269);	-- Azure Frillfish
i(193837, 3326);	-- Backswimmer Timbertooth
i(200290, 3325);	-- Bakar Companion
i(198726, 3380);	-- Black Skitterbug
i(193834, 3321);	-- Blackfeather Nester
i(201261, 3411);	-- Blaze Spirit
i(199688, 3279);	-- Bronze Racing Enthusiast
i(202085, 3360);	-- Bugbiter Tortoise
i(193066, 3275);	-- Chestnut
i(199326, 3376);	-- Chip
i(199758, 3379);	-- Crimson Proto-Whelp
i(191941, 3264);	-- Crystalline Mini-Monster
i(201463, 3415);	-- Cubbly
i(201260, 3410);	-- Dust Spirit
i(200183, 3355);	-- Echo of the Cave
i(200260, 3299);	-- Echo of the Depths
i(200263, 3310);	-- Echo of the Heights
i(200255, 3289);	-- Echo of the Inferno
i(201262, 3412);	-- Gale Spirit
i(200173, 3287);	-- Ghostflame
i(198725, 3381);	-- Gray Marmoni
i(193618, 3317);	-- Hoofhelper
i(190583, 3248);	-- Ichabod
i(192459, 3270);	-- Jean's Lucky Fish
i(193885, 3345);	-- Jeweled Amber Whelpling
i(193888, 3347);	-- Jeweled Emerald Whelpling
i(193889, 3256);	-- Jeweled Onyx Whelpling
i(193887, 3346);	-- Jeweled Ruby Whelpling
i(193886, 3344);	-- Jeweled Sapphire Whelpling
i(200874, 3406);	-- Lady Feathersworth
i(200872, 3405);	-- Living Mud Mask
i(194098, 3350);	-- Lord Basilton
i(199175, 3316);	-- Lubbins
i(199757, 3378);	-- Magic Nibbler
i(193571, 3303);	-- Mallard Duckling
i(200519, 3286);	-- Mister Toots
i(200930, 3414);	-- Obsidian Proto-Whelp
i(200276, 3311);	-- Ohuna Companion
i(200927, 3408);	-- Petal
i(193484, 3302);	-- Pilot
i(201703, 3417);	-- Pinkie
i(193071, 3278);	-- Pistachio
i(199109, 3348);	-- Primal Stormling
i(199916, 3365);	-- Roseate Hopper
i(193572, 3306);	-- Quack-E
i(201441, 3407);	-- Scout
i(191936, 3263);	-- Secretive Frogduck
i(198353, 3368);	-- Shiverweb Broodling
i(201838, 3359);	-- Snowclaw Cub
i(200479, 3390);	-- Sophic Amalgamation
i(198622, 3342);	-- Spyragos
i(200114, 3382);	-- Stormie
i(201265, 3409);	-- Tide Spirit
i(201707, 3416);	-- Troubled Tome
i(191932, 3262);	-- Violet Violence
i(199172, 3309);	-- Viridescent Duck
i(193225, 3284);	-- Whiskuk
i(193619, 3319);	-- Yipper
--- NPC ---
n(192265, 3357);	-- Azure Crystalspine
n(189160, 3266);	-- Black Slyvern Pup
n(197629, 3403);	-- Blue Dasher
i(0, 3356);			-- Chalkshell Turtle
n(192268, 3358);	-- Crimsonspine
n(189657, 3327);	-- Dusky Timbertooth
n(193024, 3367);	-- Emberling
n(189153, 3313);	-- Grassland Stomper
n(194720, 3351);	-- Grizzlefur Cub
n(189121, 3295);	-- Igneoid
n(189131, 3300);	-- Ironbeak Duck
n(193000, 3366);	-- Kindlet
n(189094, 3273);	-- Magma Slug
n(189122, 3296);	-- Palamanther
n(191316, 3335);	-- Pale Baby Vorquin
n(189144, 3307);	-- Plucky Duckling
n(197637, 3404);	-- Polliswog
n(189093, 3272);	-- Pricklefury Hare
n(192251, 3352);	-- Razortooth Bear Cub
n(189103, 3281);	-- Scruffy Ottuk
n(189102, 3280);	-- Shyfly
n(189107, 3283);	-- Snowlemental
n(188792, 3260);	-- Snowy Treeflitter
n(192254, 3353);	-- Stoneshell
n(192259, 3384);	-- Storm-Touched Bluefeather
n(192256, 3354);	-- Storm-Touched Ottuk
n(192029, 3385);	-- Storm-Touched Stomper
n(189660, 3329);	-- Storm-Touched Timbertooth
n(189104, 3282);	-- Swoglet
n(197063, 3389);	-- The Quackcestor
n(189155, 3318);	-- Thunderfoot Calf
n(189658, 3328);	-- Tiny Timbertooth
n(189097, 3276);	-- Treeflitter
n(189110, 3288);	-- Trunkalumpf
n(191323, 3336);	-- Vorquin Runt
i(0, 3320);			-- Whitewhisker
n(189136, 3301);	-- Wild Duckling
n(189157, 3322);	-- Woodbiter Piculet
--- TRAINER ---
i(0, 3393);			-- Anubisath Idol
i(0, 3401);			-- Arcantus
i(0, 3387);			-- Bloodbiter
i(0, 3398);			-- Cat
i(0, 3400);			-- Chicken
i(0, 3397);			-- Cockroach
i(0, 3396);			-- Enyobon
i(0, 3386);			-- Faceripper
i(0, 3377);			-- Gwosh
i(0, 3394);			-- Mechanical Pandaren Dragonling
i(0, 3391);			-- Phantus
i(0, 3392);			-- Skritches
i(0, 3395);			-- Spectral Tiger Cub
i(0, 3402);			-- Stormamu
i(0, 3268);			-- Swog
i(0, 3388);			-- Tina

------------------
-- PATCH 10.0.5 --
------------------
i(190603, 3250);	-- Egbob
i(190607, 3252);	-- Garrlok
i(193855, 3334);	-- Time-Lost Vorquin Foal
--- NYI ---
i(190173, 3242);	-- Lil' Maka'jin

------------------
-- PATCH 10.0.7 --
------------------
i(193374, 3293);	-- Ashenwing
i(193854, 3333);	-- Berylmane
i(193835, 3323);	-- Brightfeather
i(193850, 3330);	-- Buckie
i(193363, 3290);	-- Bunbo
i(202255, 3427);	-- Driftling
i(193853, 3331);	-- Emmah
i(202407, 3449);	-- Flow
i(204079, 3476);	-- Gilded Mechafrog
i(193908, 3338);	-- Kobaldt
i(193235, 3285);	-- Luvvy
i(193851, 3332);	-- Patos
i(193373, 3292);	-- Phoenix Wishwing
i(193364, 3291);	-- Scruffles
i(191915, 3259);	-- Shaggy
i(202411, 3447);	-- Tremblor
i(204183, 3475);	-- Volatile Self-Driving Toolbox
i(202413, 3446);	-- Vortex
i(191930, 3261);	-- Wakyn
i(202412, 3448);	-- Wildfire
--- TRAINER ---
i(0, 3453);			-- Adinakon
i(0, 3457);			-- Arctichnid
i(0, 3460);			-- Blu'jaeden
i(0, 3474);			-- Celastro
i(0, 3473);			-- Cozmos
i(0, 3456);			-- Drakeula
i(0, 3452);			-- Enchanted Tuskling
i(0, 3465);			-- Enok the Stinky
i(0, 3450);			-- Feral Frogduck
i(0, 3432);			-- Flow
i(0, 3436);			-- Flow
i(0, 3440);			-- Flow
i(0, 3458);			-- Kazzquack
i(0, 3472);			-- Lil' Algalon
i(0, 3451);			-- Lord Flappinsby
i(0, 3454);			-- Lyver
i(0, 3466);			-- Malfunctioning Matrix
i(0, 3459);			-- Mothoroth
i(0, 3441);			-- Storm-Touched Ohuna
i(0, 3442);			-- Storm-Touched Skitterer
i(0, 3443);			-- Storm-Touched Slyvern
i(0, 3444);			-- Storm-Touched Swoglet
i(0, 3430);			-- Tremblor
i(0, 3434);			-- Tremblor
i(0, 3438);			-- Tremblor
i(0, 3429);			-- Vortex
i(0, 3433);			-- Vortex
i(0, 3437);			-- Vortex
i(0, 3431);			-- Wildfire
i(0, 3435);			-- Wildfire
i(0, 3439);			-- Wildfire
i(0, 3455);			-- Yu'shor
--- NYI ---
i(0, 3424);			-- [DNT] Storm Pet Boss - Epic
i(0, 3422);			-- [DNT] Storm Pet Boss - Legendary
i(0, 3425);			-- [DNT] Storm Pet Boss - Rare
i(0, 3423);			-- [DNT] Storm Pet Fodder
i(0, 3471);			-- Gilded Mechafrog

------------------
-- PATCH 10.1.0 --
------------------
i(205003, 3512);	-- Ambre
i(205154, 3548);	-- Aquapo
i(206018, 3580);	-- Baa'lial
i(205002, 3511);	-- Blaise
i(205119, 3536);	-- Bashful
i(205114, 3533);	-- Brul
i(205123, 3540);	-- Brulee
i(190604, 3251);	-- Buzzworth
i(205026, 3524);	-- Devourer Lobstrok
i(205118, 3535);	-- Diamondshell
i(193377, 3294);	-- Gerald
i(205021, 3521);	-- Lord Stantley
i(205052, 3530);	-- Miloh
i(206040, 3581);	-- Mote of Nasz'uro
i(205937, 3578);	-- Newsy
i(205050, 3528);	-- Paulie
i(190175, 3243);	-- Pippin
i(205051, 3529);	-- Rango
i(205147, 3541);	-- Ridged Shalewing
i(205231, 3557);	-- Roggy
i(204894, 3493);	-- Roland
i(205151, 3545);	-- Salverun
i(205152, 3546);	-- Skaarn
i(205159, 3551);	-- Teardrop Moth
i(205120, 3537);	-- Thimblerig
i(205121, 3538);	-- Tricky
--- NPC ---
n(203311, 3483);	-- Boulderfang
n(203310, 3482);	-- Cobbleshell
n(203367, 3488);	-- Deepridger
n(203377, 3490);	-- Ebonwing Moth
n(203292, 3480);	-- Endmite
n(203313, 3485);	-- Hollow Moth
n(203358, 3486);	-- Lithengale
n(203287, 3477);	-- Puddlehopper
n(203288, 3478);	-- Rock Martin
n(203364, 3487);	-- Scarlapod
n(203312, 3484);	-- Slabwing
n(203308, 3481);	-- Stonewhisker
n(203372, 3489);	-- Sunglow Cobra
n(203289, 3479);	-- Yellabon
--- TRAINER ---
i(0, 3560);			-- Bassalt
i(0, 3566);			-- Beeks
i(0, 3571);			-- Brul'dan
i(0, 3559);			-- Clawz
i(0, 3568);			-- Dustie
i(0, 3565);			-- Fethres
i(0, 3572);			-- Lifft
i(0, 3558);			-- Murrey
i(0, 3570);			-- Swoggy
i(0, 3573);			-- Swole
i(0, 3567);			-- Talons
i(0, 3569);			-- Tempe
--- NYI ---
i(205004, 3513);	-- Azure Swoglet
i(205054, 3532);	-- Amador
i(205011, 3517);	-- Bronze Swoglet
i(205017, 3519);	-- Byrn
i(205008, 3514);	-- Emerald Swoglet
i(205018, 3520);	-- Jade Skitterbug
i(205116, 3534);	-- Jerrie
i(205166, 3556);	-- Kromos
i(205149, 3543);	-- Ravenous Shalewing
i(205122, 3539);	-- Roseshell
i(205053, 3531);	-- Rusty
i(205023, 3522);	-- Savage Lobstrok
i(205164, 3554);	-- Senega
i(205150, 3544);	-- Shalewing Devourer
i(205035, 3526);	-- Snapjaw Lurker
i(205037, 3527);	-- Void Lurker
i(205032, 0);		-- Bestial Lurker
i(205153, 0);		-- Mikah
i(205157, 0);		-- Undermoth

------------------
-- PATCH 10.1.5 --
------------------
i(205009, 3515);	-- Annuna
i(205165, 3555);	-- Axel
i(206758, 3590);	-- Belastrasza
i(208012, 4255);	-- Briarhorn Hatchling
i(190608, 3253);	-- Crushhoof
i(208008, 4259);	-- Doomrubble
i(208009, 4257);	-- Gill'dan
i(205232, 3588);	-- Iggy
i(208010, 4258);	-- Jeepers
i(206763, 3596);	-- Kabluey
i(208013, 4260);	-- Killbot 9000
i(205162, 3553);	-- Nelthara
i(208138, 4262);	-- N'Ruby
i(208011, 4261);	-- Obsidian Warwhelp
i(206973, 3600);	-- Pallibrius
i(206979, 3601);	-- Posidriss
i(207019, 3597);	-- Princess Vorquistrasza
i(206682, 3589);	-- Rusziona
i(208045, 4253);	-- Slyvy
i(206978, 3602);	-- Somnius
i(207962, 179);		-- Spirit of Competition
i(190601, 2890);	-- Sunny
i(208151, 4263);	-- Tobias
i(206974, 3599);	-- Zalethgos
i(206971, 3598);	-- Zhusadormu
--- TRAINER ---
i(0, 3587);			-- Lifelike Mechanical Duckling
i(0, 3608);			-- Lifelike Mechanical Turtle
i(0, 3609);			-- Sporeflower
i(0, 3975);			-- Midnight Terrorwing
i(0, 4237);			-- Treanthony

------------------
-- PATCH 10.1.7 --
------------------
i(211271, 3491);	-- Arfus
i(205024, 3523);	-- Cheddar
i(205010, 3516);	-- Crimson Swoglet
i(0, 3236);			-- Gnomelia Gearheart
i(208543, 4265);	-- Lil' Frostwing
i(208850, 4267);	-- Lil' Maggz
i(208751, 4266);	-- Squally
i(0, 3579);			-- Ysergle The Dreamurk

------------------
-- PATCH 10.2.0 --
------------------
i(210522, 4288);	-- Blueloo
i(190925, 3255);	-- Buttercup
i(190176, 3244);	-- Drazka'zet the Wrathful
i(210553, 4289);	-- Dreamborne Scarab
i(210555, 4290);	-- Dreamhoof
i(210777, 4309);	-- Drowsey
i(210651, 4299);	-- Dustite
i(210690, 4306);	-- Elmer
i(210556, 4291);	-- Ivy
i(210692, 4308);	-- Juniper
i(210633, 4297);	-- Kal'andu
i(210964, 4316);	-- Lil' Wrathion
i(210567, 4292);	-- Memorie
i(210870, 4311);	-- Mitzy
i(210570, 4295);	-- Napps
i(210505, 4287);	-- Reverie
i(205160, 3552);	-- Rithro
i(210648, 4298);	-- Seedle
i(210347, 4285);	-- Sergeant Quackers
i(210689, 4305);	-- Snoots
i(210571, 4296);	-- Snoozles
i(210785, 4310);	-- Snorr
i(210652, 4300);	-- Somnolet
i(210691, 4307);	-- Spruce
i(193429, 3297);	-- Time-Lost Salamanther
--- NPC ---
n(212557, 4304);	-- Dream Badger
n(211110, 4275);	-- Flooftalon
n(211177, 4276);	-- Fol'ya Pup
n(211288, 4278);	-- Leyhart
n(212437, 4302);	-- Pale Slumbertooth
n(211302, 4280);	-- Pewling
n(211182, 4277);	-- Sapnibbler
n(211295, 4279);	-- Slumbertooth
n(212459, 4303);	-- Snaggletoof

------------------
-- PATCH 10.2.5 --
------------------
i(212722, 4408);	-- Buggsy
i(213134, 4412);	-- Hap'he
i(205156, 3549);	-- Heartseeker Moth
i(213556, 4421);	-- Hoplet
i(212786, 4409);	-- Lovely Duckling
i(212700, 4407);	-- Nelle
i(213133, 4411);	-- Reese
i(212606, 4406);	-- Sarge
i(211432, 4402);	-- Teele
--- NYI ---
i(212791, 4410);	-- Beetriz
i(208446, 4264);	-- Fyrn

------------------
-- PATCH 10.2.6 --
------------------
i(210409, 4286);	-- Aura
i(206174, 3582);	-- Blub
-- #if BEFORE 11.0.7
i(0, 4426);			-- Bubbles
-- #endif
i(0, 4437);			-- Fathom
-- #if BEFORE 11.0.7
i(0, 4425);			-- Glamrok
i(0, 4435);			-- Happy
-- #endif
i(217043, 4436);	-- Pokee

------------------
-- PATCH 10.2.7 --
------------------
i(221818, 4580);	-- Astral Emperor's Serpentling
i(223145, 4548);	-- Marrlok
i(221817, 4579);	-- Muskpaw Calf
i(223339, 4565);	-- Trishi
i(223474, 4566);	-- Worgli the Apprehensive
--- NYI ---
i(223498, 4568);	-- Charismatic Courier
i(223499, 4569);	-- Lil' Manny

------------------
-- PATCH 11.0.0 --
------------------
i(218245, 4451);	-- Remembered Construct
i(218086, 4450);	-- Remembered Riverpaw
i(218246, 4452);	-- Remembered Spawn
--- NYI ---
i(0, 4478);			-- Caustic Oozeling
i(0, 4528);			-- Cobalt Mosswool
i(0, 4583);			-- Green Stagshell
i(0, 4502);			-- Kaheti Bull Worm
i(0, 4493);			-- Redthroat Skipling
i(0, 4509);			-- Sporbit [Blue]
i(0, 4505);			-- Sporbit [Orange]
i(0, 4504);			-- Sporbit [Red]
i(0, 4503);			-- Sporbit [Teal]
i(0, 4508);			-- Sporbit [Yellow]
i(0, 4584);			-- Tan Stagshell
i(222969, 4474);	-- Anub'Rekyute
i(221851, 4466);	-- Argos
i(221764, 4519);	-- Burntram
i(222979, 4545);	-- Clay Stonecharger
i(221762, 4484);	-- Frenzied Bloodtick
i(221195, 4458);	-- Illskitter
i(221492, 4459);	-- Moss Skipper
i(221759, 4512);	-- Sceaduthax
i(221495, 4497);	-- Waddles
i(222967, 4475);	-- Webbers
i(221493, 0);		-- Admiral
i(223803, 0);		-- Blue Stagshell
i(221022, 0);		-- Cowboy Bee[DNT]
i(223626, 0);		-- Embersting
i(228097, 0);		-- Pinkskin Burrower
i(228098, 0);		-- Troglofrog
i(222975, 0);		-- Umbral Amalgam [DNT]
i(228096, 0);		-- Vibrant Firefly

------------------
-- PATCH 11.0.2 --
------------------
--- ITEM ---
i(221850, 4464);	-- Bean
i(221548, 4536);	-- Blightbud
i(223155, 4469);	-- Bop
i(222971, 4489);	-- Bouncer
i(224101, 4586);	-- Brown Leafbug
i(221820, 4537);	-- Chester
i(223625, 4570);	-- Cinderwold Sizzlestinger
i(226104, 4602);	-- Claudius
i(224646, 4598);	-- Coppers
i(224549, 4594);	-- Dalaran Sewer Turtle
i(224766, 4596);	-- Faithful Dog
i(222964, 4520);	-- Fathom Incher
i(224259, 4590);	-- Flash
i(222973, 4492);	-- Fringe
i(224261, 4589);	-- Gale
i(223623, 4576);	-- Guacamole
i(228765, 4616);	-- Gummi
i(220771, 4467);	-- Hallowed Glowfly
i(222968, 4476);	-- Itchbite
i(222972, 4491);	-- Jump Jump
i(225934, 4500);	-- Lil' Bonechewer
i(224576, 4595);	-- Lil' Flameo
i(224450, 4527);	-- Lil' Moss Rosy
i(222965, 4530);	-- Loamy
i(225544, 4599);	-- Mind Slurp
i(221546, 4534);	-- Nightfarm Growthling
i(224439, 4470);	-- Oop'lajax
i(228758, 4615);	-- Parrlok
i(221760, 4513);	-- Pillarnest Bonedrinker
i(223802, 4581);	-- Purple Stagshell
i(225935, 4582);	-- Rak-Ush Battleshell
i(221486, 4455);	-- Rak-Ush Threadling
i(222978, 4546);	-- Sandstone Ramolith
i(224579, 3362);	-- Sapphire Crab
i(221819, 4472);	-- Shadowbog Hopper
i(222974, 4543);	-- Sir Shady Mrrgglton Junior
i(221494, 4495);	-- Skippy
i(222980, 4542);	-- Slim
i(223624, 4575);	-- Sneef
i(205148, 3542);	-- Soot-Stained Shalewing
i(222966, 4473);	-- Spinner
i(221811, 4524);	-- Starkstripe Hopper
i(220782, 4462);	-- Thunder
i(224260, 4591);	-- Thundo
i(221848, 4463);	-- Tiberius
i(221849, 4465);	-- Vanilla
i(221761, 4511);	-- Venomwing
i(225337, 4506);	-- Violet Sporbit
i(190609, 3254);	-- Watcher of the Huntress
i(221821, 4517);	-- Waxwick
i(224760, 4597);	-- Wobbles
i(221496, 4496);	-- Wriggle
i(223487, 4482);	-- Writhing Transmutagen
--- NPC ---
n(204271, 3525);	-- Abyssal Lurker
n(223092, 4540);	-- Alabaster Stonecharger
n(222066, 4456);	-- Arachnoid Hatchling
n(222195, 4460);	-- Arathi Chicken
n(222325, 4471);	-- Aubergine Scootlefish
n(222614, 4515);	-- Azure Flickerfly
n(223090, 4541);	-- Bedrock Stonecharger
n(222071, 4457);	-- Chitin Burrower
n(223698, 4577);	-- Cinderhoney Emberstinger
n(223094, 4538);	-- Cobalt Ramolith
n(222584, 4499);	-- Common Ploughworm
n(192363, 3361);	-- Diamond Crab
n(222582, 4498);	-- Ebon Ploughworm
n(222613, 4514);	-- Fallowspark Glowfly
n(222774, 4525);	-- Fragrant Stonelamb
n(222877, 4535);	-- Ghostcap Menace
n(223093, 4539);	-- Granite Ramolith
n(222194, 4461);	-- Greenlands Chicken
n(222535, 4488);	-- Haywire Servobot
n(222713, 4518);	-- Magmashell Crawler
n(222875, 4533);	-- Meek Bloodlasher
n(204354, 3547);	-- Mikah
n(222499, 4485);	-- Mossy Snail
n(223706, 4571);	-- Pinkskin Burrower
n(222775, 4526);	-- Sandstone Mosswool
n(222351, 4480);	-- Shadowy Oozeling
n(222778, 4529);	-- Shale Mosswool
n(223712, 4573);	-- Skittish Sniffler
n(223715, 4574);	-- Snuffling
n(222736, 4521);	-- Subterranean Dartswog
n(222739, 4522);	-- Troglofrog
n(223136, 4544);	-- Umbral Amalgam
n(204361, 3550);	-- Undermoth
n(222344, 4477);	-- Verdant Scootlefish
n(222615, 4516);	-- Vibrant Glowfly
n(222421, 4483);	-- Vile Bloodtick
n(222354, 4481);	-- Voidling Ooze
n(222608, 4510);	-- Winged Arachnoid
--- TRAINER ---
i(0, 4561);			-- Awakened Custodian
i(0, 4554);			-- Bubs
i(0, 4559);			-- Flicker
i(0, 4558);			-- Four-Legs
i(0, 4562);			-- Guttergunk
i(0, 4488);			-- Haywire Servobot
i(0, 4552);			-- Mini Airship
i(0, 4551);			-- Ridge
i(0, 4564);			-- Rufus
i(0, 4555);			-- Sir Pounce
i(0, 4550);			-- Stratus
i(0, 4557);			-- Swoopgrasp
i(0, 4553);			-- Takey-Take
i(0, 4556);			-- Tickler
i(0, 4549);			-- Tiny Cragling
i(0, 4560);			-- Zaedu

------------------
-- PATCH 11.0.5 --
------------------
--- ITEM ---
i(229993, 4669);	-- Bluedoo
i(229366, 4629);	-- Brrrgl
i(228793, 4618);	-- Chillbot 9000
i(224410, 4593);	-- Craggles
i(222970, 4490);	-- Fuzzy
i(229368, 4630);	-- Gill'el
i(228740, 4614);	-- Gizmo the Pure
i(231365, 4689);	-- Karazhan Syphoner
i(228781, 4678);	-- Lil'Doomy
i(230011, 4679);	-- Lil'Kaz
i(191946, 3265);	-- Mister Muskoxeles
i(224406, 4592);	-- Misty
i(231294, 4682);	-- Reven
i(231356, 4686);	-- Specter
i(228790, 4617);	-- Thrillbot 9000

------------------
-- PATCH 11.0.7 --
------------------
--- ITEM ---
i(233251, 4426);	-- Bubbles
i(234379, 4726);	-- Crackleroar
i(233248, 4425);	-- Glamrok
i(232531, 4691);	-- Grunch
i(233252, 4435);	-- Happy
i(233056, 4708);	-- Marmaduke
i(235989, 4695);	-- Parley
i(232653, 4694);	-- Portentous Present
i(166358, 2541);	-- Proper Parrot
i(232519, 4690);	-- Razeshi B.
i(234395, 4727);	-- Skitterbite
i(233247, 4692);	-- Sparklesnap
i(231310, 4684);	-- Timbered Sky Snakelet
i(233366, 4719);	-- Wind-Up Woofer
i(233361, 4718);	-- Wind-Up Wuffi
--- NPC ---
n(234734, 4724);	-- Battleboar Piglet
n(234101, 4703);	-- Cave Kroling
n(234710, 4723);	-- Cliffreach Cub
n(234367, 4710);	-- Pillaged Parrot
n(234097, 4702);	-- Rusty Kroling
n(236041, 4732);	-- Scavenging Snapdragon
n(234369, 4711);	-- Snapdragon Pup
n(236040, 4731);	-- Storminfused Snapdragon
n(230394, 4628);	-- Tidal Kroling
--- UNSORTED ---
i(234397, 4729);	-- Fullbelly Rollingpaw
i(232923, 4704);	-- Living Rose
i(234905, 4730);	-- Mech-Friend Maya
i(233057, 4709);	-- Rock Hound Mica
i(234396, 4728);	-- Teatuft Tamer
i(233190, 4717);	-- Wanderer Liu
--- NYI? ---
--i(???, 4725);	-- Titan Orb

------------------
-- PATCH 11.1.0 --
------------------
--- ITEM ---
i(232845, 4645);	-- Bilgewater Junkhauler
i(232850, 4649);	-- Blackwater Kegmover
i(236768, 4759);	-- Craboom
i(232842, 4638);	-- Crimson Mechasaur
i(232858, 4655);	-- Cruncher
i(232853, 4632);	-- Eepy
i(232855, 4631);	-- Foreman
i(232843, 4642);	-- Gorillion
i(232859, 4653);	-- Lab Rat
i(205013, 3518);	-- Lettuce
i(232840, 4661);	-- Mechagopher
i(232841, 4644);	-- Professor Punch
i(232851, 4641);	-- Rocketfist
i(232895, 4701);	-- Spotty
i(232846, 4648);	-- Steamwheedle Flunkie
i(232849, 4650);	-- Venture Companyman
i(232839, 4637);	-- Wavebreaker Mechasaur
--- NPC ---
n(231470, 4652);	-- Acid-Drenched Rat
n(231550, 4656);	-- Bombshell Crab
n(231570, 4658);	-- Cave Crab
n(222592, 4507);	-- Hemospore
n(231572, 4659);	-- Kaja Crab
n(231574, 4660);	-- Paleshell Crab
n(231616, 4666);	-- Tropical Frog
n(231686, 4668);	-- Ultrahopper EX
n(231481, 4654);	-- Underroach
n(231577, 4662);	-- Varmint MK II
n(231567, 4657);	-- Venture Bombshell
n(231477, 4651);	-- Wily Rat
--- UNSORTED ---
--i(???, 4739);	-- Fancier Rat
i(232844, 4640);	-- Fuz-Size Flarendo
i(235909, 4755);	-- Gleam
i(232857, 4635);	-- Goggles
i(232854, 4634);	-- Grinner
--i(???, 4740);	-- Handbag Hyena
i(232807, 4664);	-- Iron Chick
i(232848, 4647);	-- Mr. DELVER
i(232852, 4636);	-- Mutt
i(232847, 4646);	-- Personal-Use Sapper
i(232856, 4633);	-- Scruff
--i(???, 4738);	-- Status Symbol
i(232806, 4643);	-- Tiny Torq
i(232838, 4639);	-- Viridian Mechasaur
--- UNSORTED WILD ---
n(237713, 4741);	-- Cannoneer
n(222420, 4484);	-- Frenzied Bloodtick
n(231579, 4663);	-- Lime Roboclucker
n(237714, 4742);	-- Lookout
n(237720, 4744);	-- Muddy Croach
n(237701, 4737);	-- Precision Powerdrill
n(237721, 4745);	-- Rusty Croach
n(237719, 4746);	-- Sooty Croach
n(231684, 4667);	-- Spring-Loaded Ribbitron
n(237715, 4743);	-- Swabbie
