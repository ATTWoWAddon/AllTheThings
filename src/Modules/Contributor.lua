-- Contributor Module
-- Provides additional functionality which may be opted-into by the end user to help in crowd-sourcing
-- or further improvement to ATT data or logic
local _, app = ...;

-- Globals
local ipairs,pairs,tostring,setmetatable
	= ipairs,pairs,tostring,setmetatable
local GetQuestID,C_QuestLog_IsOnQuest
	= GetQuestID,C_QuestLog.IsOnQuest

-- Modules
local DelayedCallback = app.CallbackHandlers.DelayedCallback
local round = app.round

local api = {};
app.Modules.Contributor = api;
-- Events - a collection of Game Events which should trigger additional logic
api.Events = {}
local Reports = setmetatable({}, { __index = function(t,key)
	local reportType = setmetatable({}, { __index = function(t,key)
		local typeIDReport = {}
		t[key] = typeIDReport
		return typeIDReport
	end})
	reportType.__type = key
	t[key] = reportType
	return reportType
end})
app.AddEventHandler("OnReportReset", function() wipe(Reports) end)

-- Allows adding an Event handler function for in-game events when Contributor is enabled
local function AddEventFunc(event, func)
	api.Events[event] = func
end

local function GetReportPlayerLocation()
	local mapID, px, py, fake = app.GetPlayerPosition()
	local difficultyID = app.GetCurrentDifficultyID()
	local diffVal = (difficultyID and difficultyID ~= 0 and ("Diff: "..difficultyID) or "")
	if fake then
		return UNKNOWN..", "..UNKNOWN..", "..tostring(mapID or UNKNOWN).." \""..(app.GetMapName(mapID) or "??").."\" "..diffVal
	end
	-- floor coords to nearest tenth
	if px then px = round(px, 1) end
	if py then py = round(py, 1) end
	return tostring(px or UNKNOWN)..", "..tostring(py or UNKNOWN)..", "..tostring(mapID or UNKNOWN).." \""..(app.GetMapName(mapID) or "??").."\" "..diffVal
end

local function DoReport(reporttype, id)
	local dialogID = reporttype.."-"..id
	-- app.PrintDebug("Contributor.DoReport",reporttype,id)

	local reportData = Reports[reporttype][id]
	-- report-based fields
	local chatlink = reportData.CHATLINK
	reportData.CHATLINK = nil
	-- ordered report data
	local orderedReportData = {}
	-- id/type are ordered first always if existing
	if reportData.id then
		orderedReportData[#orderedReportData + 1] = "id: "..reportData.id
		reportData.id = nil
	end
	if reportData.type then
		orderedReportData[#orderedReportData + 1] = "type: "..reportData.type
		reportData.type = nil
	end
	for i=1,#reportData do
		orderedReportData[#orderedReportData + 1] = reportData[i]
	end
	app.wipearray(reportData)
	-- keyed report data
	local keyedData = {}
	local vtype
	for k,v in pairs(reportData) do
		vtype = type(v)
		if vtype == "number" then
			keyedData[#keyedData + 1] = tostring(k)..": "..tostring(v)
		else
			keyedData[#keyedData + 1] = tostring(k)..": \""..tostring(v).."\""
		end
	end
	-- common report data
	reportData[#reportData + 1] = "### "..reporttype..":"..id
	reportData[#reportData + 1] = "```vbnet"	-- discord fancy box start (testing: https://highlightjs.org/demo)
	-- add ordered data
	for i=1,#orderedReportData do
		reportData[#reportData + 1] = orderedReportData[i]
	end
	-- add keyed data
	for i=1,#keyedData do
		reportData[#reportData + 1] = keyedData[i]
	end
	-- common report data
	reportData[#reportData + 1] = "---- User Info ----"
	reportData[#reportData + 1] = "PlayerLocation: "..GetReportPlayerLocation()
	reportData[#reportData + 1] = "Character: L:"..app.Level.." R:"..app.RaceID.." ("..app.Race..") C:"..app.ClassIndex.." ("..app.Class..")"
	reportData[#reportData + 1] = "ATT: "..app.Version
	reportData[#reportData + 1] = "GameBuild: "..app.GameBuildVersion
	reportData[#reportData + 1] = "UTC: "..date("!%Y-%m-%dT%H:%M:%SZ", time())
	reportData[#reportData + 1] = "```";	-- discord fancy box end

	if app:SetupReportDialog(dialogID, "Contributor Report: " .. dialogID, reportData) then
		app.print(app:Linkify(chatlink or "Contributor Report: "..dialogID, app.Colors.ChatLinkError, "dialog:" .. dialogID));
		app.Audio:PlayReportSound();
	end

	-- due to complications with multiple reports in one session of one object, we will only support
	-- the first report of a given ID for now
	reportData.REPORTED = true
end

local function AddReportData(reporttype, id, data, chatlink)
	-- app.PrintDebug("Contributor.AddReportData",reporttype,id)
	-- app.PrintTable(data)
	local reportData = Reports[reporttype][id]
	if reportData.REPORTED then app.PrintDebug("Duplicate Report Ignored",reporttype,id) return end

	if type(data) == "table" then
		-- add any ordered data first
		for i=1,#data do
			reportData[#reportData + 1] = data[i]
		end
		app.wipearray(data)
		-- add/replace keyed data
		for k,v in pairs(data) do
			reportData[k] = v
		end
	else
		reportData[#reportData + 1] = tostring(data)
	end

	reportData.CHATLINK = chatlink
	-- after adding data for a report, we will trigger that report shortly afterwards in case more data is added elsewhere within
	-- that timeframe
	DelayedCallback(DoReport, 0.25, reporttype, id)
end

api.DoReport = function(id, text)
	AddReportData("test", id, text)
end
api.AddReportData = AddReportData

local function BuildGenericReportData(objRef, id)
	return {
		id = id,
		name = (objRef and objRef.name or UNKNOWN),
		type = (objRef and objRef.__type or UNKNOWN),
		[objRef and objRef.key or "RefID"] = (objRef and objRef[objRef.key]) or UNKNOWN,
	}
end

-- Used to override the precision of coord accuracy based on irregularly sized maps
-- typically we don't want the report to trigger even when interacting from max range
-- so can adjust here
-- To determine the proper value to put into this table:
-- 1) Go to the map in question with the ability to interact with an object/quest in the zone
-- 2) Stutter-step to the maximum distance which allows valid interaction
-- 3) Interact with the object/quest (this should trigger a contrib report link, if not use /att report-reset and try again)
-- 4) Check the 'coord distance' reported, and round it up to the next whole number
-- 5) That number goes into this table for the mapID
local MapPrecisionOverrides = {
	  [24] = 2,	-- Light's Hope Chapel
	  [46] = 3,	-- Karazhan Catacombs
	 [626] = 4,	-- The Hall of Shadows
	 [629] = 3,	-- Aegwynn's Gallery
	 [640] = 4,	-- Vault of Eyir, Stormheim
	 [642] = 2,	-- Darkpens, Val'sharah
	 [643] = 2,	-- Sleeper's Barrow, Val'sharah
	 [647] = 3,	-- Acherus The Ebon Hold, The Heart of Acherus
	 [648] = 3,	-- Acherus The Ebon Hold, Hall of Command
	 [652] = 3,	-- Hall of Chieftains, Thunder Totem
	 [657] = 2,	-- Path of Huln
	 [687] = 2,	-- Kel'balor
	 [689] = 3,	-- Ley Station Moonfall
	 [690] = 3,	-- Ley Station Aethenar
	 [695] = 3,	-- Skyhold
	 [702] = 2,	-- Netherlight Temple
	 [718] = 2,	-- Dreadscar Rift (Scenario Map)
	 [720] = 3,	-- Mardum The Shattered Abyss, Upper Command Center
	 [721] = 3,	-- Mardum The Shattered Abyss, Lower Command Center
	 [734] = 2,	-- Hall of The Guardian
	 [735] = 2,	-- Hall of The Guardian 2nd Floor
	 [738] = 7,	-- The Heart of Azeroth, Firelands
	 [747] = 5,	-- The Dreamgrove
	 [831] = 7,	-- The Vindicaar, Krokuun Upper
	 [832] = 7,	-- The Vindicaar, Krokuun Lower
	 [883] = 7,	-- The Vindicaar, Eredath Upper
	 [884] = 7,	-- The Vindicaar, Eredath Lower
	 [886] = 7,	-- The Vindicaar, Antoran Wastes Upper
	 [887] = 7,	-- The Vindicaar, Antoran Wastes Lower
	 [940] = 7,	-- The Vindicaar
	[1021] = 1,	-- Chamber of Heart
	[1164] = 3,	-- Dazar'alor
	[1176] = 3,	-- Breath Of Pa'ku
	[1177] = 3,	-- Breath Of Pa'ku
	[1473] = 1,	-- Chamber of Heart
	[1644] = 3,	-- Ember Court
	[1649] = 3,	-- Etheric Vault
	[1662] = 2,	-- Queen's Conservatory
	[1699] = 3,	-- Sinfall
	[1700] = 3,	-- Sinfall
	[1701] = 2,	-- The Trunk
	[1702] = 2,	-- The Roots
	[1703] = 5,	-- Heart of the Forest
	[1912] = 10,	-- The Runecarver's Oubliette
	[2328] = 3,	-- The Proscenium
	[2477] = 4,	-- Voidscar Cavern, K'aresh
}

local function Check_coords(objRef, maxCoordDistance)
	-- check coord distance
	local mapID, px, py, fake = app.GetPlayerPosition()
	-- fake player coords (instances, etc.) cannot be checked
	if fake then return true end

	if not objRef then return end

	local id = objRef.keyval
	local coords = app.GetRelativeValue(objRef, "coords")
	if not coords then return end

	local relCoords = not objRef.coords
	local dist, sameMap
	local closest = 9999
	maxCoordDistance = MapPrecisionOverrides[mapID] or maxCoordDistance or 1
	for _,coord in ipairs(coords) do
		if mapID == coord[3] then
			sameMap = mapID
			dist = app.distance(px, py, coord[1], coord[2])
			-- app.PrintDebug("coords @",dist)
			if dist < closest then closest = dist end
		end
	end
	if sameMap then
		-- quest has an accurate coord on accurate map
		if closest > maxCoordDistance then
			local reportData = BuildGenericReportData(objRef, id)
			-- round to the tenth
			closest = round(closest, 1)
			reportData.VerifyOrAddCoords = ("Closest %s Coordinates are off by: %d on mapID: %d"):format(relCoords and "relative" or "existing", closest, mapID)
			AddReportData(objRef.__type,id,reportData)
			return 1
		end
	else
		local reportData = BuildGenericReportData(objRef, id)
		reportData.MissingMap = "No Coordinates on current Map!"
		AddReportData(objRef.__type,id,reportData)
		return 1
	end
	return true
end

-- Temporary implementation until better, global DB(s) provides similar data references
-- These should be NPCs which are mobile in that they can have completely variable coordinates in game
-- either by following the player or having player-based decisions that cause them to have any coordinates
local MobileDB = {}
MobileDB.Creature = {
	   [715] = true,	-- Hemet Nesingwary Jr.
	   [718] = true,	-- Sir S. J. Erlgadin
	   [951] = true,	-- Brother Paxton
	  [2079] = true,	-- Ilthalaine
	  [2545] = true,	-- "Pretty Boy" Duncan
	  [2608] = true,	-- Commander Amaren
	 [14305] = true,	-- Human Orhpan
	 [14444] = true,	-- Orcish Orhpan
	 [14626] = true,	-- Taskmaster Scrange
	 [18416] = true,	-- Huntress Kima
	 [18927] = true,	-- Human Commoner
	 [19148] = true,	-- Dwarf Commoner
	 [19169] = true,	-- Blood Elf Commoner
	 [19171] = true,	-- Draenei Commoner
	 [19172] = true,	-- Gnome Commoner
	 [19173] = true,	-- Night Elf Commoner
	 [19175] = true,	-- Orc Commoner
	 [19176] = true,	-- Tauren Commoner
	 [19177] = true,	-- Troll Commoner
	 [19178] = true,	-- Forsaken Commoner
	 [20102] = true,	-- Goblin Commoner
	 [19644] = true,	-- Image of Archmage Vargoth
	 [19935] = true,	-- Soridormi
	 [19936] = true,	-- Arazmodu
	 [22024] = true,	-- Parshah
	 [22059] = true,	-- Wildhammer Gryphon Rider
	 [21998] = true,	-- Kor'kron Wind Rider
	 [22817] = true,	-- Blood Elf Orphan
	 [22818] = true,	-- Draenei Orphan
	 [23870] = true,	-- Ember Clutch Ancient
	 [25962] = true,	-- Flame Eater [A]
	 [25994] = true,	-- Flame Eater [H]
	 [26206] = true,	-- Keristrasza
	 [28357] = true,	-- Instructor Razuvious
	 [28510] = true,	-- Scourge Commander Thalanor
	 [28647] = true,	-- Orithos the Sky Darkener
	 [28653] = true,	-- Salanar the Horseman
	 [29047] = true,	-- Olrun the Battlecaller
	 [29053] = true,	-- Knight Commander Plaguefist
	 [29795] = true,	-- Kolitra Deathweaver (Orgrim's Hammer)
	 [30137] = true,	-- Shift Vickers
	 [30216] = true,	-- Vile
	 [32971] = true,	-- Ranger Glynda Nal'Shea
	 [33276] = true,	-- Moon Priestess Maestra
	 [33533] = true,	-- Oracle Orphan
	 [33777] = true,	-- Gaivan Shadewalker
	 [34320] = true,	-- Venomhide Hatchling
	 [34653] = true,	-- Bountiful Table Hostess
	 [37087] = true,	-- Jona Ironstock
	 [37172] = true,	-- Detective Snap Snagglebolt
	 [38255] = true,	-- Maximillian of Northshire
	 [38274] = true,	-- Garl Stormclaw
	 [38275] = true,	-- Gremix <Treasure Hunter>
	 [38276] = true,	-- Tara
	 [38277] = true,	-- Doreen
	 [38066] = true,	-- Inspector Snip Snagglebolt
	 [39381] = true,	-- Stonedark Drogbar
	 [39578] = true,	-- Highmountain Spiritwalker (Spiritwalker Ebonhorn)
	 [41058] = true,	-- Spirit of Tony Two-Tusk
	 [41638] = true,	-- Houndmaster Jonathan
	 [42736] = true,	-- Lashtail Hatchling
	 [43300] = true,	-- Messner
	 [43302] = true,	-- Danforth
	 [43303] = true,	-- Krakauer
	 [43305] = true,	-- Jorgensen
	 [43556] = true,	-- "Dead-Eye" Drederick McGumm
	 [43885] = true,	-- Emerine Junis
	 [43929] = true,	-- Blingtron 4000
	 [44043] = true,	-- Kinnel
	 [44100] = true,	-- Goris
	 [45277] = true,	-- Feralas Sentinel
	 [45278] = true,	-- Freewind Brave
	 [45451] = true,	-- Argus Highbeacon
	 [45574] = true,	-- Vex'tul
	 [45736] = true,	-- Deacon Andaal
	 [45879] = true,	-- Lord Walden
	 [45880] = true,	-- Baron Ashbury
	 [46664] = true,	-- Dr. Hieronymus Blam
	 [47280] = true,	-- Lunk
	 [47332] = true,	-- Lunk
	 [48020] = true,	-- Master Apothecary Lydon
	 [48346] = true,	-- John J. Keeshan
	 [48503] = true,	-- Kingslayer Orkus <Red Like My Rage>
	 [49035] = true,	-- Lilith
	 [52234] = true,	-- Bwemba
	 [52980] = true,	-- Kil'karil
	 [55497] = true,	-- Zin'Jun
	 [64337] = true,	-- Nomi
	 [65558] = true,	-- Huojin Monk
	 [67153] = true,	-- Zin'Jun
	 [67976] = true,	-- Tinkmaster Overspark
	 [72940] = true,	-- Frostwolf Champion
	 [75968] = true,	-- Iron Shredder Prototype
	 [77367] = true,	-- Archmage Kem
	 [77789] = true,	-- Blingtron 5000
	 [79815] = true,	-- Grun'lek
	 [79836] = true,	-- Gez'la
	 [79862] = true,	-- Yorn Longhoof <Banker>
	 [79867] = true,	-- Orgek Ironhand <Blacksmith>
	 [83858] = true,	-- Khadgar's Servant
	 [84247] = true,	-- Lumber Lord Oktron <Work Orders>
	 [84857] = true,	-- Kyra Goldhands <Banker>
	 [85414] = true,	-- Alexi Barov
	 [86629] = true,	-- Raza'kul
	 [86677] = true,	-- Kuros
	 [86682] = true,	-- Retired Gorian Centurion (Tormmok)
	 [86806] = true,	-- Ancient Trading Mechanism
	 [86927] = true,	-- Stormshield Death Knight (Delvar Ironfist)
	 [86933] = true,	-- Warspear Magus (Vivianne)
	 [86934] = true,	-- Sha'tari Defender (Defender Illona)
	 [86945] = true,	-- Sunsworn Warlock (Aeda Brightdawn)
	 [86946] = true,	-- Outcast Talonpriest (Talonpriest Ishaal)
	 [86964] = true,	-- Bloodmane Earthbinder (Leorajh)
	 [86979] = true,	-- Tormak the Scarred <Stable Master>
	 [87206] = true,	-- Ancient Trading Mechanism
	 [87242] = true,	-- Sage Paluna
	 [87305] = true,	-- Akanja
	 [87991] = true,	-- Cro Threadstrong
	 [87992] = true,	-- Olaf
	 [87994] = true,	-- Moroes <Tower Steward>
	 [87995] = true,	-- Fleet Master Seahorn
	 [87996] = true,	-- Lillian Voss
	 [87997] = true,	-- Leonid Barthalomew the Revered
	 [87998] = true,	-- Sunwalker Dezco
	 [87999] = true,	-- Skylord Omnuron
	 [88000] = true,	-- Pip Quickwit
	 [88001] = true,	-- Maximillian of Northshire
	 [88002] = true,	-- Highlord Darion Mograine
	 [88003] = true,	-- Cowled Ranger
	 [88004] = true,	-- Zen'kiki
	 [88005] = true,	-- Lorewalker Cho
	 [88006] = true,	-- Lonika Stillblade
	 [88007] = true,	-- Gamon
	 [88009] = true,	-- Millhouse Manastorm
	 [88013] = true,	-- Lunk
	 [88017] = true,	-- Budd
	 [88022] = true,	-- Johnny Awesome
	 [88023] = true,	-- Taoshi
	 [88024] = true,	-- Oralius
	 [88025] = true,	-- Mylune
	 [88026] = true,	-- John J. Keeshan
	 [88027] = true,	-- Impsy
	 [90259] = true,	-- Lord Maxwell Tyrosus
	 [90474] = true,	-- Kor'vas Bloodthorn
	 [91065] = true,	-- Cellarman Voodani
	 [91165] = true,	-- Daglop
	 [91167] = true,	-- Daglop
	 [91558] = true,	-- Commander Lorna Crowley <Gilneas Brigade>
	 [92909] = true,	-- Lord Maxwell Tyrosus
	 [93538] = true,	-- Dariness the Learned
	 [93775] = true,	-- Eitrigg
	 [93826] = true,	-- Mayla Highmountain
	 [96038] = true,	-- Rivermane Shaman
	 [97419] = true,	-- Ashildir <Queen of the Valkyra>
	 [97558] = true,	-- Ashildir <Queen of the Valkyra>
	 [98008] = true,	-- Brightwing
	 [98519] = true,	-- Initiate Da-Nel
	 [98648] = true,	-- Allari the Souleater
	 [99343] = true,	-- Kor'vas Bloodthorn
	[100786] = true,	-- Snowfeather
	[101061] = true,	-- Archdruid Hamuul Runetotem
	[101344] = true,	-- Hooded Priestess (Horde)
	[101527] = true,	-- Blingtron 6000
	[102018] = true,	-- Ravenholdt Courier
	[102333] = true,	-- Hooded Priestess (Alliance)
	[102381] = true,	-- Jandvik Warrior (Brandolf)
	[102478] = true,	-- Emmarel Shadewarden
	[102700] = true,	-- Meryl Felstorm
	[102996] = true,	-- Aegira
	[103437] = true,	-- Angus Stormbrew
	[103506] = true,	-- Ritssyn Flamescowl
	[105152] = true,	-- Hiro
	[105637] = true,	-- Scowling Rosa <Texts and Specialty Goods>
	[106001] = true,	-- Muln Earthfury
	[106517] = true,	-- Rehgar Earthfury
	[106656] = true,	-- Seeker of Wisdom <Magisters>
	[107026] = true,	-- Mylune
	[107212] = true,	-- Emerald Dryad
	[107213] = true,	-- Guardian of the Dream
	[107214] = true,	-- Guardian of the Dream
	[107215] = true,	-- Guardian of the Dream
	[107423] = true,	-- Archmage Kalec
	[107840] = true,	-- Stormforged Grapple Launcher
	[108085] = true,	-- Image of Kalec
	[108961] = true,	-- Sergeant Dalton
	[109049] = true,	-- The Monkey King
	[109221] = true,	-- Thassarian
	[109222] = true,	-- Meryl Felstorm
	[109434] = true,	-- Silver Hand Knight
	[110538] = true,	-- Valewalker Farodin
	[110768] = true,	-- Image of Kalec
	[110969] = true,	-- Sunwalker Brave / Aponi Brightmane
	[111191] = true,	-- Mariella the Heretic
	[112663] = true,	-- Danica the Reclaimer
	[112666] = true,	-- Asha Ravensong
	[112679] = true,	-- Valeera Sanguinar
	[112688] = true,	-- Meryl Felstorm
	[112689] = true,	-- Archdruid Hamuul Runetotem
	[112693] = true,	-- Black Harvest Acolyte
	[112696] = true,	-- Initiate Da-Nel
	[112701] = true,	-- Justicar Julia Celeste
	[113327] = true,	-- Snowfeather
	[113686] = true,	-- Archmage Khadgar
	[113857] = true,	-- Light's Heart
	[114274] = true,	-- Mackay Firebeard
	[114282] = true,	-- Dread Commander Thalanor
	[115785] = true,	-- Direbeak Hatchling
	[116737] = true,	-- Minerva Ravensorrow
	[117292] = true,	-- Navarrogg
	[117331] = true,	-- Aethas Sunreaver
	[117475] = true,	-- Lord Darius Crowley
	[118954] = true,	-- Commander Jarod Shadowsong
	[119001] = true,	-- Aethas Sunreaver
	[119982] = true,	-- Druid of the Talon
	[120041] = true,	-- Druid of the Talon
	[120084] = true,	-- Druid of the Talon
	[126576] = true,	-- Razgaji (You can accept quests as he's walking back to his start position)
	[129514] = true,	-- Warguard Rakera
	[129655] = true,	-- Boss Tak
	[129940] = true,	-- Roko <Wandering Merchant>
	[130474] = true,	-- Reckless Vulpera (Nisha)
	[133302] = true,	-- Wardruid Loti
	[137220] = true,	-- Awakened Tidesage (Brother Pike)
	[137871] = true,	-- Taelia
	[141032] = true,	-- Flynn Fairwind
	[141602] = true,	-- Thomas Zelling
	[145005] = true,	-- Lor'themar Theron
	[145394] = true,	-- Liam
	[145463] = true,	-- Casteless Zandalari
	[145707] = true,	-- Advisor Belgrum
	[145981] = true,	-- Restless Spirit
	[146462] = true,	-- Rexxar
	[146536] = true,	-- Lost Wisp
	[146937] = true,	-- Dark Ranger Lyana
	[149805] = true,	-- Farseer Ori
	[150202] = true,	-- Hunter Akana
	[151300] = true,	-- Neri Sharpfin
	[151309] = true,	-- Vim Brineheart
	[151310] = true,	-- Poen Gillbrack
	[153897] = true,	-- Blingtron 7000
	[154297] = true,	-- Bladesman Inowari
	[155482] = true,	-- Sentinel (Shandris Feathermoon)
	[156179] = true,	-- Gila Crosswires <Tinkmaster's Assistant>
	[158544] = true,	-- Lord Herne
	[158635] = true,	-- Xolartios <Eternal Traveler>
	[161261] = true,	-- Kael'thas Sunstrider
	[161427] = true,	-- Kael'thas Sunstrider
	[161431] = true,	-- Kael'thas Sunstrider
	[161436] = true,	-- Kael'thas Sunstrider
	[161439] = true,	-- Kael'thas Sunstrider
	[162476] = true,	-- Ta'eran
	[163097] = true,	-- Lindie Springstock
	[164965] = true,	-- Prince Renathal (Ember Court)
	[168432] = true,	-- Ve'rayn <Assets and Liabilities>
	[172854] = true,	-- Dredger Butler
	[181085] = true,	-- Stratholme Supply Crate
	[185549] = true,	-- Agrikus <Herbalism Trainer>
	[185749] = true,	-- Gnoll Mon-Ark
	[191494] = true,	-- Khanam Matra Sarest
	[193985] = true,	-- Initiate Zorig
	[197478] = true,	-- Herald Flaps
	[197915] = true,	-- Lindormi
	[199261] = true,	-- Holiday Enthusiast
	-- #if BEFORE 10.2.7
	[205127] = true,	-- Newsy
	-- #endif
	[208474] = true,	-- Clarelle
	[209681] = true,	-- Squally
	[211444] = true,	-- Flynn Fairwind
	[213560] = true,	-- Inspector Snip Snagglebolt
	[214707] = true,	-- Detective Snap Snagglebolt
	[214890] = true,	-- Magni Bronzebeard
	[214892] = true,	-- Dagran Thaurissan II
	[215597] = true,	-- Alleria Winderunner
	[220307] = true,	-- Holiday Enthusiast
	[220859] = true,	-- Amy Lychenstone
	[220870] = true,	-- Holiday Enthusiast
	[221492] = true,	-- Baron Sybaestan Braunpyke
	[221539] = true,	-- Alleria Winderunner
	[221867] = true,	-- Mereldar Child
	[221980] = true,	-- Faerin Lothar
	[222239] = true,	-- Scrit
	[224618] = true,	-- Danagh's Cogwalker
	[226934] = true,	-- Jojo Gobdre
	[229535] = true,	-- Mr. Crane
	[230417] = true,	-- Aysa Cloudsinger
	[232642] = true,	-- Alleria Winderunner
	[232660] = true,	-- Alleria Winderunner
	[234483] = true,	-- Alleria Winderunner
	[235490] = true,	-- Overcharged Titan Console
	[235849] = true,	-- Fleet Master Seahorn
	[237222] = true,	-- Arator
	[241593] = true,	-- Skibbles
	[241603] = true,	-- Threadis
	[241604] = true,	-- Destien
	[241605] = true,	-- Kitzy
	[248854] = true,	-- The Last Architect
	[253596] = true,	-- The Last Architect
}
-- These should be GameObjects which are mobile in that they can have completely variable coordinates in game
-- either by following the player or having player-based decisions that cause them to have any coordinates
-- but also quests objects that are not sourced elsewhere..
-- Legend: q - Quest, dq - Daily Quest, wq - World Quest, [A] - Alliance, [H] - Horde
MobileDB.GameObject = {
		[57] = true,	-- Bloodscalp Lore Tablet (q:26744)
	   [119] = true,	-- Abercrombie's Crate (q:26680)
	   [276] = true,	-- Shimmerweed Basket (q:315)
	   [324] = true,	-- Small Thorium Vein
	   [765] = true,	-- Silverleaf
	   [759] = true,	-- The Holy Spring (q:26817)
	  [1617] = true,	-- Silverleaf
	  [1618] = true,	-- Peacebloom
	  [1619] = true,	-- Earthroot
	  [1620] = true,	-- Mageroyal
	  [1621] = true,	-- Briarthorn
	  [1622] = true,	-- Bruiseweed
	  [1673] = true,	-- Fel Cone (q:489)
	  [1723] = true,	-- Mudsnout Blossom (q:28354)
	  [1731] = true,	-- Copper Vein
	  [1732] = true,	-- Tin Vein
	  [1733] = true,	-- Silver Vein
	  [2040] = true,	-- Mithril Deposit
	  [2045] = true,	-- Stranglekelp
	  [2068] = true,	-- Pupellyverbos Port (q:26486)
	  [2086] = true,	-- Bloodsail Charts (q:26612)
	  [2087] = true,	-- Bloodsail Orders (q:26612)
	  [2689] = true,	-- Stone of West Binding (q:26041)
	  [2690] = true,	-- Stone of Outer Binding (q:26041)
	  [2691] = true,	-- Stone of East Binding (q:26041)
	  [2712] = true,	-- Calcified Elven Gem (q:26051)
	  [2716] = true,	-- Trelane's Chest (q:26038)
	  [2717] = true,	-- Trelane's Footlocker (q:26038)
	  [2718] = true,	-- Trelane's Lockbox (q:26038)
	  [2845] = true,	-- Tattered Chest
	  [2849] = true,	-- Battered Chest
	  [2866] = true,	-- Firebloom
	  [3659] = true,	-- Barrel of Melon Juice
	  [3662] = true,	-- Food Crate
	  [3689] = true,	-- Weapon Crate
	  [3695] = true,	-- Food Crate
	  [3719] = true,	-- Food Crate
	  [4608] = true,	-- Timberling Sprout (q:919)
	 [17155] = true,	-- Large Battered Chest (Deadmines)
	 [17282] = true,	-- Bathran's Hair (q:26473)
	 [17783] = true,	-- Ancient Statuette (q:26465)
	 [19015] = true,	-- Soot-Covered Elune's Tear (q:26475)
	 [19018] = true,	-- Giant Clam (BFD)
	 [19019] = true,	-- Box of Assorted Parts
	 [19020] = true,	-- Box of Assorted Parts
	 [22550] = true,	-- Draenethyst Crystals (q:27840)
	 [24776] = true,	-- Yuriv's Tombstone (q:264)
	 [30854] = true,	-- Atal'ai Artifact (q:27694)
	 [30855] = true,	-- Atal'ai Artifact (q:27694)
	 [30856] = true,	-- Atal'ai Artifact (q:27694)
	 [74448] = true,	-- Large Solid Chest
	 [75293] = true,	-- Large Battered Chest
	 [75298] = true,	-- Large Solid Chest
	 [75300] = true,	-- Large Solid Chest
	[106319] = true,	-- Battered Chest
	[111095] = true,	-- Tattered Chest
	[113768] = true,	-- Brightly Colored Egg
	[113769] = true,	-- Brightly Colored Egg
	[113770] = true,	-- Brightly Colored Egg
	[113771] = true,	-- Brightly Colored Egg
	[142142] = true,	-- Sungrass
	[143981] = true,	-- Brightly Colored Egg
	[152620] = true,	-- Azsharite Formation (q:14370)
	[152621] = true,	-- Azsharite Formation (q:14370)
	[152622] = true,	-- Azsharite Formation (q:14370)
	[152631] = true,	-- Azsharite Formation (q:14370)
	[153464] = true,	-- Large Solid Chest
	[154357] = true,	-- Glinting Mud (q:26508)
	[164658] = true,	-- Blue Power Crystal
	[164659] = true,	-- Green Power Crystal
	[164660] = true,	-- Red Power Crystal
	[164661] = true,	-- Yellow Power Crystal
	[164778] = true,	-- Blue Power Crystal
	[164779] = true,	-- Green Power Crystal
	[164780] = true,	-- Red Power Crystal
	[164958] = true,	-- Bloodpetal Sprout
	[165739] = true,	-- Grim Guzzler Boar
	[169243] = true,	-- Chest of The Seven (BRD)
	[175404] = true,	-- Rich Thorium Vein
	[176208] = true,	-- Horgus' Skull (q:27387)
	[176209] = true,	-- Shattered Sword of Marduk (q:27387)
	[176224] = true,	-- Supply Crate (Stratholme)
	[176248] = true,	-- Premium Grimm Tobacco (q:27192)
	[176582] = true,	-- Shellfish Trap (q:5421)
	[176588] = true,	-- Icecap
	[176751] = true,	-- Kodo Bones (q:5501)
	[176752] = true,	-- Kodo Bones (q:5501)
	[176793] = true,	-- Bundle of Wood (q:5545)
	[177243] = true,	-- Demon Portal (q:5581)
	[177789] = true,	-- Augustus' Receipt Book (q:27534)
	[177928] = true,	-- Onyxia's Gate
	[178144] = true,	-- Troll Chest (q:13874 [A], q:6462 [H])
	[179528] = true,	-- Warpwood Pod
	[179828] = true,	-- Dark Iron Pillow (q:28057)
	[179832] = true,	-- Pillamaster's Ornate Pillow (starts q:28058)
	[179910] = true,	-- Lard's Picnic Basket (q:26212)
	[179922] = true,	-- Vessel of Tainted Blood (starts q:26524)
	[180436] = true,	-- Twilight Tablet Fragment (q:8284)
	[180456] = true,	-- Lesser Wind Stone
	[180461] = true,	-- Wind Stone
	[180466] = true,	-- Greater Wind Stone
	[180501] = true,	-- Twilight Tablet Fragment (q:8284)
	[180600] = true,	-- Unstable Mana Crystal Crate (q:8463)
	[180917] = true,	-- Captain Kelisendra's Cargo (q:8886)
	[180921] = true,	-- Tainted Soil Sample (q:8487)
	[181107] = true,	-- Weapon Container (q:8480)
	[181148] = true,	-- Mummified Troll Remains (q:9193)
	[181151] = true,	-- Glistening Mud (q:9157)
	[181166] = true,	-- Bloodthistle
	[181665] = true,	-- Burial Chest
	[181687] = true,	-- Warsong Lumber Pile (q:13869)
	[181690] = true,	-- Fertile Dirt Mound (q:26446)
	[181916] = true,	-- Satyrnaar Fel Wood (q:26454)
	[182053] = true,	-- Glowcap
	[184125] = true,	-- Main Chambers Access Panel
	[184126] = true,	-- Main Chambers Access Panel
	[184383] = true,	-- Ethereum Transponder Zeta
	[184320] = true,	-- The Arcatraz
	[184912] = true,	-- The Shattered Halls
	[184568] = true,	-- Lady Vashj Bridge Console
	[184793] = true,	-- Primitive Chest
	[186430] = true,	-- Zungam's Ball and Chain (Zul'Aman)
	[186591] = true,	-- Spotted Hippogryph Down (q:11269, 11271)
	[186633] = true,	-- Gold Coins (Zul'Aman)
	[186634] = true,	-- Gold Coins (Zul'Aman)
	[186648] = true,	-- Hazlek's Trunk (Zul'Aman)
	[186672] = true,	-- Kasha's Bag (Zul'Aman)
	[186734] = true,	-- Amani Charm Box (Zul'Aman)
	[186736] = true,	-- Money Bag (Zul'Aman)
	[186739] = true,	-- Amani Charm Box (Zul'Aman)
	[186740] = true,	-- Amani Charm Box (Zul'Aman)
	[186741] = true,	-- Amani Charm Box (Zul'Aman)
	[186744] = true,	-- Amani Treasure Box (Zul'Aman)
	[186903] = true,	-- Pirate Booty (q:25054)
	[187021] = true,	-- Bakkalzu's Satchel (Zul'Aman)
	[187333] = true,	-- Bloodberry Bush (q:11546)
	[189292] = true,	-- Scrying Orb
	[190584] = true,	-- Battle-worn Sword (q:12619)
	[192818] = true,	-- Infused Mushroom (q:13100, 13112)
	[192828] = true,	-- Crystalsong Carrot (q:13114)
	[194088] = true,	-- Highborne Relic (q:13505)
	[194089] = true,	-- Highborne Relic (q:13505)
	[194090] = true,	-- Highborne Relic (q:13505)
	[194100] = true,	-- Bear's Paw (q:13526)
	[194107] = true,	-- Encrusted Clam (q:13520)
	[194150] = true,	-- Jadefire Brazier (q:13572)
	[194200] = true,	-- Rare Cache of Winter [Hodir]
	[194204] = true,	-- Twilight Plans (q:13596)
	[194208] = true,	-- Fuming Toadstool (q:13598)
	[194209] = true,	-- Fuming Toadstool (q:13598)
	[194255] = true,	-- Ancient Gate of the Keepers
	[194264] = true,	-- Lever
	[194307] = true,	-- Cache of Winter [Hodir]
	[194328] = true,	-- Freya's Gift [Freya]
	[194312] = true,	-- Cache of Storms [Thorim]
	[194482] = true,	-- Horde Explosives (q:13698)
	[194519] = true,	-- Harpoon Gun
	[194541] = true,	-- Harpoon Gun
	[194542] = true,	-- Harpoon Gun
	[194543] = true,	-- Harpoon Gun
	[194822] = true,	-- Gift of the Observer [Algalon The Observer]
	[194956] = true,	-- Cache of Innovation [Mimiron]
	[195002] = true,	-- Lava Fissure (q:13880)
	[195007] = true,	-- Slain Wildkin Feather (q:13578)
	[195012] = true,	-- Sunken Scrap Metal (q:13883)
	[195021] = true,	-- Glittering Shell (q:13882)
	[195037] = true,	-- Silithid Egg (q:13904)
	[195042] = true,	-- Greymist Debris (q:13909)
	[195046] = true,	-- Cache of Living Stone [Kologarn]
	[195054] = true,	-- Mud-Crusted Ancient Disc (q:13912)
	[195055] = true,	-- Buried Debris (q:13918)
	[195074] = true,	-- Melithar's Stolen Bags (q:28715)
	[195077] = true,	-- Moon-kissed Clay (q:13942)
	[195080] = true,	-- Floating Greymist Debris (q:13909)
	[195135] = true,	-- Locking Bolt (q:13983)
	[195136] = true,	-- Bronze Cog (q:13983)
	[195138] = true,	-- Copper Plating (q:13983)
	[195188] = true,	-- Goblin Escape Pod (q:14001)
	[195201] = true,	-- Crate of Tools (q:14014)
	[195440] = true,	-- Melonfruit (q:14193)
	[195447] = true,	-- Iron Stockpile (q:14197)
	[195448] = true,	-- Iron Ingot (q:14197)
	[195492] = true,	-- Kaja'mite Chunk (q:14124)
	[195519] = true,	-- Weapon Rack (q:14357)
	[195535] = true,	-- Bleached Skullpile (q:14364)
	[195582] = true,	-- Stolen Manual
	[195583] = true,	-- Stolen Manual
	[195587] = true,	-- Living Ire Thyme (q:14263)
	[195601] = true,	-- Element 116 (q:14254)
	[195602] = true,	-- Animate Besalt Chunk (q:14250)
	[195633] = true,	-- Champion's Cache [] 25 Normal
	[195635] = true,	-- Champion's Cache [] 25 Heroic
	[195656] = true,	-- Ancient Tablet Fragment (q:14268)
	[195657] = true,	-- Ancient Tablet Fragment (q:14268)
	[195658] = true,	-- Ancient Tablet Fragment (q:14268)
	[195659] = true,	-- Ancient Tablet Fragment (q:14268)
	[195674] = true,	-- Aloe Thistle (q:14305)
	[195686] = true,	-- Kawphi Plant (q:14131)
	[195692] = true,	-- Cenarion Supply Crate (q:14316)
	[196395] = true,	-- Defiled Relic (q:14333)
	[197172] = true,	-- Smoke Bombs (q:42504)
	[199329] = true,	-- Highborne Tablet (q:14486)
	[199330] = true,	-- Highborne Tablet (q:14486)
	[199331] = true,	-- Highborne Tablet (q:14486)
	[199332] = true,	-- Highborne Tablet (q:14486)
	[201608] = true,	-- Forgotten Dwarven Artifact (q:24477)
	[201615] = true,	-- Ooze Release Valve (Rotface)
	[201616] = true,	-- Gas Release Valve (Festergut)
	[201733] = true,	-- Leaky Stove (q:14125)
	[201734] = true,	-- Flammable Bed (q:14125)
	[201735] = true,	-- Defective Generator (q:14125)
	[201737] = true,	-- Budding Flower (q:25028)
	[201738] = true,	-- Budding Flower (q:25028)
	[201792] = true,	-- Northwatch Siege Engine (q:24569)
	[201874] = true,	-- Gunship Armory [Gunship Battle] 25 Normal
	[201875] = true,	-- Gunship Armory [Gunship Battle] 25 Heroic
	[201904] = true,	-- Mutilated Remains (q:24619)
	[201924] = true,	-- Boar Skull (q:24653)
	[201974] = true,	-- Raptor Egg (q:24741)
	[201975] = true,	-- Tarblossom (q:24700)
	[201979] = true,	-- Un'Goro Coconut (q:24715)
	[202136] = true,	-- Stonetalon Supplies (q:24863)
	[202158] = true,	-- Discarded Supplies (q:24701)
	[202159] = true,	-- Discarded Supplies (q:24701)
	[202160] = true,	-- Discarded Supplies (q:24701)
	[202198] = true,	-- Steamwheedle Crate (q:25048)
	[202240] = true,	-- Deathbringer's Cache [Deathbringer Saurfang] 25 Normal
	[202241] = true,	-- Deathbringer's Cache [Deathbringer Saurfang] 25 Heroic
	[202339] = true,	-- Cache of the Dreamwalker [Valithria Dreamwalker] 25 Normal
	[202340] = true,	-- Cache of the Dreamwalker [Valithria Dreamwalker] 25 Heroic
	[202351] = true,	-- Rockin' Powder (q:24946)
	[202405] = true,	-- Northwatch Supply Crate (q:25002)
	[202420] = true,	-- Ancient Hieroglyphs (q:25565)
	[202467] = true,	-- Taurajo Intelligence (q:25059)
	[202470] = true,	-- Bilgewater Footlocker (q:25062)
	[202477] = true,	-- Siege Engine Scrap (q:25075)
	[202478] = true,	-- Siege Engine Scrap (q:25075)
	[202533] = true,	-- Bael Modan Artifact (q:25106)
	[202552] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202553] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202554] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202596] = true,	-- Frazzlecraz Explosives (q:25183)
	[202606] = true,	-- Stonetear (q:25396)
	[202609] = true,	-- Valve #1 (q:25204)
	[202610] = true,	-- Valve #2 (q:25204)
	[202611] = true,	-- Valve #3 (q:25204)
	[202612] = true,	-- Valve #4 (q:25204)
	[202655] = true,	-- Troll Archaeology Find
	[202736] = true,	-- Obsidium Deposit
	[202793] = true,	-- Loose Soil (q:25422)
	[202956] = true,	-- Rocket Car Parts (q:25515)
	[202957] = true,	-- Rocket Car Parts (q:25515)
	[202958] = true,	-- Rocket Car Parts (q:25515)
	[202959] = true,	-- Rocket Car Parts (q:25515)
	[202960] = true,	-- Rocket Car Parts (q:25515)
	[202961] = true,	-- Rocket Car Parts (q:25515)
	[203071] = true,	-- Night Elf Archaeology Find
	[203078] = true,	-- Nerubian Archaeology Find
	[203090] = true,	-- Sunken Treasure Chest (q:25609)
	[203129] = true,	-- Pilfered Supplies (q:25668)
	[203130] = true,	-- Pilfered Supplies (q:25668)
	[203148] = true,	-- Horde Cage (q:25662)
	[203179] = true,	-- Sediment Deposit (q:25722)
	[203182] = true,	-- Fenberries (q:25725)
	[203183] = true,	-- Ore Heap (q:25677)
	[203214] = true,	-- Eldre'thar Relic (q:25767)
	[203228] = true,	-- Needles Iron Pyrite (q:25774)
	[203247] = true,	-- Fitzsimmon's Mead (q:25815)
	[203253] = true,	-- Kalimdor Eagle Nest (q:25837)
	[203264] = true,	-- Wobbling Raptor Egg (q:25854)
	[203279] = true,	-- Alliance Weapon Crate (q:25822)
	[203280] = true,	-- Alliance Weapon Crate (q:25822)
	[203283] = true,	-- Swiftgear Gizmo (q:25853)
	[203285] = true,	-- Swiftgear Gizmo (q:25855)
	[203286] = true,	-- Swiftgear Gizmo (q:25855)
	[203287] = true,	-- Swiftgear Gizmo (q:25855)
	[203288] = true,	-- Swiftgear Gizmo (q:25855)
	[203384] = true,	-- Seldarria's Egg (q:25931)
	[203385] = true,	-- Frozen Artifact (q:25937)
	[203443] = true,	-- Spare Part (q:26045)
	[203762] = true,	-- Juicy Apple (q:26183)
	[203964] = true,	-- Spare Part (q:26222)
	[203965] = true,	-- Spare Part (q:26222)
	[203966] = true,	-- Spare Part (q:26222)
	[203967] = true,	-- Spare Part (q:26222)
	[203968] = true,	-- Spare Part (q:26222)
	[203972] = true,	-- Fresh Dirt (q:26230)
	[203982] = true,	-- Okra (q:26241)
	[203989] = true,	-- Ooze-coated Supply Crate (q:26492)
	[204019] = true,	-- Makeshift Cage (q:26284)
	[204087] = true,	-- Mosh'Ogg Bounty (q:26782)
	[204102] = true,	-- Shadraspawn Egg (q:26641)
	[204120] = true,	-- Cache of Shadra (q:26529)
	[204133] = true,	-- Cache of Shadra (q:26528)
	[204282] = true,	-- Dwarf Archaeology Find
	[204336] = true,	-- Naga Icon (q:26820)
	[204352] = true,	-- Redridge Supply Crate (q:26513)
	[204424] = true,	-- Pile of Leaves (q:26636)
	[204425] = true,	-- Fox Poop (q:26636)
	[204432] = true,	-- Lime Crate (q:26634)
	[204433] = true,	-- Bloodsail Cannonball (q:26635)
	[204817] = true,	-- Lightforged Rod (ends q:26725, starts q:26753)
	[204824] = true,	-- Lightforged Arch (ends q:26753, starts q:26722)
	[204826] = true,	-- Kurzen Compound Prison Records (q:26735)
	[204827] = true,	-- Kurzen Compound Officers' Dossier (q:26735)
	[205060] = true,	-- Plague Tangle (q:26934)
	[205089] = true,	-- Stabthistle Seed (q:27025)
	[205092] = true,	-- Nascent Elementium (q:27077)
	[205099] = true,	-- Ferocious Doomweed (q:26992)
	[205216] = true,	-- Neptulon's Cache (Throne of the Tides)
	[205367] = true,	-- Wolfsbane (q:27342)
	[205368] = true,	-- Grimtotem Weapon Rack (q:27310)
	[205423] = true,	-- Banshee's Bells (q:27369)
	[205537] = true,	-- Open Prayer Book (q:27488)
	[205545] = true,	-- Stray Land Mine (q:27536)
	[205558] = true,	-- Flesh Giant Foot (q:27531)
	[205559] = true,	-- Rotberry Bush (q:27531)
	[205560] = true,	-- Disembodied Arm (q:27531)
	[205826] = true,	-- Thousand-Thread-Count Fuse (q:27600)
	[205827] = true,	-- Extra-Pure Blasting Powder (q:27600)
	[205828] = true,	-- Stack of Questionable Publications (q:27600)
	[205890] = true,	-- Highvale Report (q:27626)
	[205891] = true,	-- Highvale Records (q:27626)
	[205892] = true,	-- Highvale Notes (q:27626)
	[206320] = true,	-- Wild Black Dragon Egg (q:27766)
	[206388] = true,	-- Angor's Coffer (q:27824)
	[206391] = true,	-- Stonard Supplies (q:27851)
	[206498] = true,	-- Dustbelcher Meat (q:27825)
	[206499] = true,	-- Dustbelcher Chest (q:27825)
	[206503] = true,	-- Prayerbloom (q:27875)
	[206573] = true,	-- Dark Ember (q:27964)
	[206597] = true,	-- Twilight's Hammer Crate (q:27985)
	[206659] = true,	-- Dark Iron Bullets (q:28030)
	[206836] = true,	-- Fossil Archaeology Find
	[206853] = true,	-- Obsidian-Flecked Mud (q:28179)
	[206881] = true,	-- Slumber Sand (q:28181)
	[206882] = true,	-- Fel Slider Cider (q:28181)
	[206947] = true,	-- Tailor's Table (q:28202)
	[206971] = true,	-- War Reaver Parts (q:28226)
	[206972] = true,	-- War Reaver Parts (q:28226)
	[206973] = true,	-- War Reaver Parts (q:28226)
	[206974] = true,	-- War Reaver Parts (q:28226)
	[206977] = true,	-- Blackrock Boots (q:28245)
	[207125] = true,	-- Crate of Left Over Supplies (q:28322)
	[207187] = true,	-- Orc Archaeology Find
	[207188] = true,	-- Draenei Archaeology Find
	[207189] = true,	-- Vrykul Archaeology Find
	[207190] = true,	-- Tol'vir Archaeology Find
	[207320] = true,	-- Hero's Call Board
	[207346] = true,	-- Moonpetal Lily (q:28724)
	[207472] = true,	-- Silverbound Treasure Chest
	[207473] = true,	-- Silverbound Treasure Chest
	[207474] = true,	-- Silverbound Treasure Chest
	[207475] = true,	-- Silverbound Treasure Chest
	[207476] = true,	-- Silverbound Treasure Chest
	[207484] = true,	-- Sturdy Treasure Chest
	[207485] = true,	-- Sturdy Treasure Chest
	[207486] = true,	-- Sturdy Treasure Chest
	[207487] = true,	-- Sturdy Treasure Chest
	[207488] = true,	-- Sturdy Treasure Chest
	[207489] = true,	-- Sturdy Treasure Chest
	[207496] = true,	-- Dark Iron Treasure Chest
	[207498] = true,	-- Dark Iron Treasure Chest
	[207512] = true,	-- Silken Treasure Chest
	[207513] = true,	-- Silken Treasure Chest
	[207522] = true,	-- Maplewood Treasure Chest
	[207523] = true,	-- Maplewood Treasure Chest
	[207524] = true,	-- Maplewood Treasure Chest
	[207528] = true,	-- Maplewood Treasure Chest
	[207534] = true,	-- Runestone Treasure Chest
	[208186] = true,	-- Bonfire (Hallow's End)
	[208545] = true,	-- Ash Pile (q:29139)
	[209273] = true,	-- Tonk Scrap (q:29518)
	[209274] = true,	-- Tonk Scrap (q:29518)
	[209275] = true,	-- Tonk Scrap (q:29518)
	[209276] = true,	-- Staked Skin (q:29519)
	[209283] = true,	-- Discarded Weapon (q:29510)
	[209284] = true,	-- Darkblossom (q:29514)
	[209287] = true,	-- Bit of Glass, (q:29516)
	[209318] = true,	-- Fragment of Jaina's Staff (End Time)
	[209326] = true,	-- Loose Dogwood Root (q:29418)
	[209327] = true,	-- Loose Dogwood Root (q:29418)
	[209366] = true,	-- Portal Energy Focus (Well of Eternity)
	[209447] = true,	-- Portal Energy Focus (Well of Eternity)
	[209448] = true,	-- Portal Energy Focus (Well of Eternity)
	[209506] = true,	-- Stolen Treats, (q:7043 [A], q:6983 [H])
	[209507] = true,	-- Hard Tearwood Reed (q:29662)
	[209547] = true,	-- Murozond's Temporal Cache
	[209665] = true,	-- Abandoned Stone Blocks
	[209671] = true,	-- Kun-Pai Ritual Charm (q:29789)
	[209774] = true,	-- Kun-Pai Ritual Charm (q:29789)
	[210894] = true,	-- Gold Coins
	[211163] = true,	-- Pandaren Archaeology Find
	[211174] = true,	-- Mogu Archaeology Find
	[211277] = true,	-- Coffer of Forgotten Souls
	[211394] = true,	-- Broken Bamboo Stalk (q:29795)
	[211397] = true,	-- Broken Bamboo Stalk (q:29795)
	[211398] = true,	-- Broken Bamboo Stalk (q:29795)
	[211399] = true,	-- Broken Bamboo Stalk (q:29795)
	[211400] = true,	-- Broken Bamboo Stalk (q:29795)
	[211401] = true,	-- Broken Bamboo Stalk (q:29795)
	[211627] = true,	-- Broken Control Console
	[211664] = true,	-- Ancient Guo-Lai Door
	[213076] = true,	-- Box of Fancy Stuff [] 25N
	[214385] = true,	-- Cache of Pure Energy [Elegon] ?
	[214386] = true,	-- Cache of Pure Energy [Elegon] 25H
	[214519] = true,	-- Snowdrift's Possessions (Shado-Pan Monastery)
	[214520] = true,	-- Legacy of the Clan Leaders (Mogu'shan Palace)
	[214795] = true,	-- Ancient Mogu Treasure (Mogu'shan Palace)
	[215135] = true,	-- Sprinkler
	[215137] = true,	-- Sprinkler
	[216150] = true,	-- Horde Supply Crate (q:32144)
	[215162] = true,	-- Pest Repeller
	[215163] = true,	-- Pest Repeller
	[215356] = true,	-- Cache of Tsulong [Tsulong] ?
	[215357] = true,	-- Cache of Tsulong [Tsulong] 25Heroic
	[216229] = true,	-- Hastily Abandoned Lumber (q:32149)
	[218757] = true,	-- Mogu Treasure Chest
	[218772] = true,	-- Golden Treasure Chest
	[218950] = true,	-- Mantid Archaeology Find
	[220908] = true,	-- Mist-Covered Treasure Chest
	[221689] = true,	-- Ripe Crispfruit
	[221690] = true,	-- Sand-Covered Egg
	[221747] = true,	-- Huge Yak Roast
	[221763] = true,	-- Fire Poppy
	[222684] = true,	-- Glinting Sand
	[222685] = true,	-- Crane Nest
	[225681] = true,	-- Barrel of Frostwolf Oil (q:33546)
	[226468] = true,	-- Frostwolf Shamanstone
	[226521] = true,	-- Draenor Clans Archaeology Find
	[230527] = true,	-- Tree Marking (q:34375)
	[230544] = true,	-- Frostwolf Shamanstone
	[231012] = true,	-- Garrison Blueprint: Barracks
	[231241] = true,	-- Benefactions of the Auchenai (Auchindoun)
	[232093] = true,	-- Tears of the Vale [Immerseus] Normal
	[232163] = true,	-- Vault of Forbidden Treasures [] Normal
	[232165] = true,	-- Unlocked Stockpile of Pandaren Spoils [Spoils of Pandaria] Heroic
	[232166] = true,	-- Unlocked Stockpile of Pandaren Spoils [Spoils of Pandaria] LFR
	[233028] = true,	-- Tears of the Vale
	[233029] = true,	-- Vault of Forbidden Treasures [] ?
	[233030] = true,	-- Unlocked Stockpile of Pandaren Spoils [Spoils of Pandaria] ?
	[234105] = true,	-- Arakkoa Archaeology Find
	[234106] = true,	-- Ogre Archaeology Find
	[234165] = true,	-- Cache of Arakkoan Treasures [Rukhran]
	[236262] = true,	-- Finalize Garrison Plot
	[236263] = true,	-- Finalize Garrison Plot
	[237017] = true,	-- Soul Gem (q:37660)
	[237039] = true,	-- Crate of Surplus Materials (q:37087, 37060)
	[238979] = true,	-- Tidestone Vault Door
	[239452] = true,	-- Demon Ward (q:37658)
	[239692] = true,	-- Arcane-infused Egg (q:37727)
	[239775] = true,	-- Coral Trident Rack
	[239984] = true,	-- Demon Ward (q:37658)
	[239985] = true,	-- Demon Ward (q:37658)
	[240012] = true,	-- Soul Gem (q:37660)
	[240222] = true,	-- Cache of Infernals
	[240235] = true,	-- Skyfire Propeller
	[240323] = true,	-- Libram of Fel Knowledge (q:36811)
	[240346] = true,	-- Olive Sprig (q:38232)
	[240535] = true,	-- Legion Cage
	[240586] = true,	-- Cursed Bones (q:38324)
	[240650] = true,	-- Ritual Circle (q:38413)
	[240666] = true,	-- Ley Portal
	[240677] = true,	-- Climbing Treads
	[241031] = true,	-- Dread-Captain's Saber (q:38360)
	[241127] = true,	-- Unguarded Thistleleaf Treasure
	[241528] = true,	-- Horn of the Helmouth
	[241536] = true,	-- Legion Cage
	[241568] = true,	-- Offering Shrine
	[241682] = true,	-- Dry Harpy Nest
	[241683] = true,	-- Kvaldir Cage
	[241686] = true,	-- Kvaldir Cage
	[241688] = true,	-- Kvaldir Cage
	[241693] = true,	-- Kvaldir Cage
	[241726] = true,	-- Leystone Deposit
	[241729] = true,	-- Kvaldir Cage
	[241743] = true,	-- Felslate Deposit
	[241771] = true,	-- Kvaldir Cage
	[241774] = true,	-- Kvaldir Cage
	[241778] = true,	-- Colborn's Cage (q:39837)
	[241779] = true,	-- Kvaldir Cage
	[241782] = true,	-- Kvaldir Cage
	[241783] = true,	-- Kvaldir Cage
	[241832] = true,	-- Kvaldir Cage
	[241833] = true,	-- Kvaldir Cage
	[241849] = true,	-- Ritual Stone (q:38823)
	[241864] = true,	-- Offering Bowl
	[241866] = true,	-- Soulthorn (q:38810)
	[241868] = true,	-- Offering Bowl
	[241869] = true,	-- Offering Bowl
	[241908] = true,	-- Prince's Plunder (q:37565)
	[242275] = true,	-- Nightmare Totem
	[242669] = true,	-- Small Treasure Chest
	[242994] = true,	-- Eyir's Helm (q:39092, 39155)
	[242995] = true,	-- Eyir's Pauldron (q:39092, 39155)
	[242996] = true,	-- Eyir's Shield (q:39092, 39155)
	[242998] = true,	-- Eyir's Spear (q:39092, 39155)
	[243007] = true,	-- Heathrow Cellar
	[243089] = true,	-- Kur'talos Ravencrest's Sigil
	[243099] = true,	-- Vibrating Arcane Trap
	[243244] = true,	-- Place Volatile Flare (q:39801)
	[243290] = true,	-- Spoils of the Assault [Hellfire Assault] ?
	[243308] = true,	-- Spoils of the Assault [Hellfire Assault] Mythic
	[243309] = true,	-- Spoils of the Assault [Hellfire Assault] ?
	[243321] = true,	-- Feral Stone
	[243323] = true,	-- Balance Stone
	[243455] = true,	-- Plant Explosives (q:39385)
	[243539] = true,	-- Felshard (q:39424)
	[243566] = true,	-- Sargerei Warspoils [Socrethar] Mythic
	[243567] = true,	-- Sargerei Warspoils [Socrethar] ?
	[243574] = true,	-- Shieldmaiden Idol
	[243639] = true,	-- Siphoning Crystal (q:39488)
	[243801] = true,	-- Powered Console (q:39591)
	[243802] = true,	-- Powered Console (q:39591)
	[243808] = true,	-- Unpowered Console (q:39591)
	[243814] = true,	-- Unpowered Console (q:39591)
	[243817] = true,	-- Powered Console (q:39591)
	[243840] = true,	-- Mightstone Banner (q:39595)
	[243841] = true,	-- Bloodtotem Standard (q:39595)
	[243842] = true,	-- Tideskorn Banner (q:39595)
	[243952] = true,	-- Twisted Root (q:38655)
	[243953] = true,	-- Twisted Root (q:38655)
	[243954] = true,	-- Twisted Root (q:38655)
	[244335] = true,	-- Ritual Circle (q:38413)
	[244336] = true,	-- Ritual Circle (q:38413)
	[244337] = true,	-- Ritual Circle (q:38413)
	[244419] = true,	-- Eagle Egg (q:39305)
	[244449] = true,	-- Reflective Mirror
	[244450] = true,	-- Rune of Reformation
	[244457] = true,	-- Spitefeather's Rock (q:39787)
	[244564] = true,	-- Altar (q:39455)
	[244565] = true,	-- Kvaldir Spoils
	[244625] = true,	-- Cup (q:39873)
	[244667] = true,	-- Abandoned Fishing Pole
	[244704] = true,	-- Tideskorn Banner
	[244703] = true,	-- Nether Circle
	[244729] = true,	-- Nether Circle
	[244731] = true,	-- Nether Circle
	[244733] = true,	-- Nether Circle
	[244774] = true,	-- Aethril
	[244775] = true,	-- Dreamleaf
	[244778] = true,	-- Starlight Rose
	[244867] = true,	-- Fish Barrel
	[244935] = true,	-- Dry Timber
	[244994] = true,	-- Weapon Rack
	[245212] = true,	-- Magic Harpoon
	[245234] = true,	-- Barrier Control (q:40729)
	[245321] = true,	-- Katarine's Cage
	[245324] = true,	-- Rich Leystone Deposit
	[245325] = true,	-- Rich Felslate Deposit
	[245327] = true,	-- Kel'danath's Notes (q:40326)
	[245340] = true,	-- Throne of Ordering Around
	[245350] = true,	-- Shipwrecked Supplies (q:40050)
	[245361] = true,	-- Valarjar Spoils (Halls of Valor)
	[245483] = true,	-- Tidestone Shard (q:37469)
	[245484] = true,	-- Tidestone Shard (q:37469)
	[245485] = true,	-- Tidestone Shard (q:37469)
	[245486] = true,	-- Tidestone Shard (q:37469)
	[245524] = true,	-- Treasure Chest
	[245621] = true,	-- Bottle of Airspark
	[245667] = true,	-- Whelp Cage
	[245669] = true,	-- Whelp Cage
	[245670] = true,	-- Whelp Cage
	[245672] = true,	-- Whelp Cage
	[245676] = true,	-- Satyr Cage (q:40573)
	[245847] = true,	-- Spoils of the Worthy
	[245849] = true,	-- The Svalnguard (q:40613)
	[245925] = true,	-- Garden (q:40747)
	[245926] = true,	-- Library (q:40747)
	[245927] = true,	-- Warp Lab (q:40747)
	[245928] = true,	-- Workshop (q:40747)
	[245935] = true,	-- Adamantium Casing Scrap (q:40672)
	[245936] = true,	-- Adamantium Casing Scrap (q:40672)
	[245937] = true,	-- Adamantium Casing Scrap (q:40672)
	[245938] = true,	-- Adamantium Casing Scrap (q:40672)
	[245947] = true,	-- Telemetry Lab (q:40747)
	[245950] = true,	-- Fountain (q:40747)
	[245954] = true,	-- Fountain (q:40747)
	[245994] = true,	-- Ulthalesh, the Deadwind Harvester (q:40623)
	[246020] = true,	-- Guardian's Arcanum
	[246036] = true,	-- Waterlogged Cache of Ancient Relics [Helya]
	[246148] = true,	-- Heart of the Overlord (q:40731)
	[246237] = true,	-- Test Chamber
	[246297] = true,	-- Arcane Coil
	[246328] = true,	-- Arcane Coil
	[246351] = true,	-- Legion Prison
	[246430] = true,	-- Millificent's Discarded Lockbox [Assault on Violet Hold]
	[246436] = true,	-- Scythe of Elune
	[246473] = true,	-- ?? (q:40849)
	[246685] = true,	-- Grain Sack (q:40978)
	[246698] = true,	-- Apocalypse
	[246699] = true,	-- Apocalypse (q:40986)
	[246757] = true,	-- High Potency Coil
	[246758] = true,	-- Low Potency Coil
	[246759] = true,	-- High Switch
	[246761] = true,	-- High Switch
	[246762] = true,	-- Low Switch
	[246804] = true,	-- Highmountain Tauren Archaeology Find
	[246811] = true,	-- Highborne Archaeology Find
	[246812] = true,	-- Demonic Archaeology Find
	[246816] = true,	-- Hippogryph Vial
	[246833] = true,	-- Low Switch
	[246886] = true,	-- Moon Seal
	[246913] = true,	-- Star Seal
	[246914] = true,	-- Beast Seal
	[246916] = true,	-- Elven Seal
	[246923] = true,	-- Toryl's Cage
	[246953] = true,	-- Odyn's Cauldron (q:41059)
	[246975] = true,	-- Razik's Weapon Rack (q:41076, 41077, 41078)
	[246984] = true,	-- Odyn's Cauldron
	[247037] = true,	-- Amaranthine Hops
	[247052] = true,	-- Pillow
	[247072] = true,	-- Wax Ingot (q:41127)
	[247073] = true,	-- Wax Ingot (q:41127)
	[247074] = true,	-- Wax Ingot (q:41127)
	[247105] = true,	-- Drogbar Netting
	[247415] = true,	-- Condensed Energy
	[247491] = true,	-- Forsaken Catapult (q:39698)
	[247875] = true,	-- Boom Bait (q:41278)
	[247291] = true,	-- Opened Cage (q:41140)
	[247292] = true,	-- Locked Cage (q:41140)
	[247389] = true,	-- Human Skull
	[247390] = true,	-- Brambley's Dagger
	[247392] = true,	-- Right Arm
	[247393] = true,	-- Left Arm
	[247394] = true,	-- Tibia
	[247395] = true,	-- Femur
	[248005] = true,	-- Felwort
	[248401] = true,	-- Shipwrecked Supplies (q:41692)
	[248422] = true,	-- Stack of Bandages
	[248476] = true,	-- Communication Device Switch (q:41627, 42007)
	[248513] = true,	-- Felbound Chest (The Nighthold)
	[248572] = true,	-- Light's Wrath (q:41631)
	[249002] = true,	-- Ghostship (q:42004)
	[249045] = true,	-- Gravestone (q:42005)
	[249044] = true,	-- Gravestone (q:42005)
	[249341] = true,	-- Haunted Vines
	[249356] = true,	-- Altar of Malorne
	[249416] = true,	-- Jailer's Cage
	[249423] = true,	-- Knocker
	[249459] = true,	-- Jailer's Cage (q:41767)
	[249461] = true,	-- Jailer's Cage (q:41767)
	[249464] = true,	-- Stolen Nar'thalas Relic (q:42019)
	[249466] = true,	-- Stolen Nar'thalas Relic (q:42019)
	[249467] = true,	-- Stolen Nar'thalas Relic (q:42019)
	[249693] = true,	-- Legion Cage
	[249734] = true,	-- Storm Dragon Egg (wq:42242)
	[249749] = true,	-- DO NOT PUSH THIS BUTTON!
	[249765] = true,	-- Control Panel
	[249766] = true,	-- Stabilization Matrix Node
	[249767] = true,	-- Stabilization Matrix Node
	[249768] = true,	-- Stabilization Matrix Node
	[249769] = true,	-- Stabilization Matrix Node
	[249771] = true,	-- Heavy Stone (wq:42172)
	[249773] = true,	-- Control Panel
	[249814] = true,	-- Aluneth (q:42011)
	[250086] = true,	-- Cask of Arcwine (q:40730, 42725)
	[250238] = true,	-- Gondola (q:40730)
	[250239] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[250240] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[250264] = true,	-- Academy Door
	[250265] = true,	-- Legion Cage
	[250266] = true,	-- Legion Cage
	[250361] = true,	-- Sabotaged Portal Stabilizer (q:42369)
	[250378] = true,	-- Seal of the Tides (q:42225)
	[250379] = true,	-- High Potency Coil
	[250380] = true,	-- Low Potency Coil
	[250381] = true,	-- High Switch
	[250382] = true,	-- Low Switch
	[250424] = true,	-- Loose Rock (q:42431)
	[250429] = true,	-- Hunk of Foul Smelling Meat
	[250433] = true,	-- Felforge
	[250552] = true,	-- Locked Cage
	[250603] = true,	-- Curiously Charged Ring
	[250867] = true,	-- Keg of Spicy Grog
	[250903] = true,	-- Large Ceremonial Drum (q:42622, 44823)
	[250904] = true,	-- Medium Ceremonial Drum (q:42622, 44823)
	[250905] = true,	-- Small Ceremonial Drum (q:42622, 44823)
	[250916] = true,	-- Highmountain Brazier (q:40219)
	[250978] = true,	-- Highmountain Brazier (q:40219)
	[250979] = true,	-- Highmountain Brazier (q:40219)
	[250994] = true,	-- Highmountain Brazier (q:40219)
	[251016] = true,	-- Smoke Bombs
	[251021] = true,	-- Medical Supply Crate (q:42782)
	[251022] = true,	-- Medical Supply Crate (q:42782)
	[251023] = true,	-- Medical Supply Crate (q:42782)
	[251031] = true,	-- Highmountain Brazier (q:39577)
	[251047] = true,	-- Fal'adora Beacon
	[251125] = true,	-- Highmountain Brazier
	[251168] = true,	-- Ephemeral Crystal
	[251176] = true,	-- Legion Portal
	[251179] = true,	-- Legion Portal
	[251195] = true,	-- Keg of Armor Polish (q:42782)
	[251216] = true,	-- Prison Cage
	[251234] = true,	-- Light-Infused Crystals (q:42782)
	[251250] = true,	-- Baked Fish (q:44281, q:42782)
	[251251] = true,	-- Baked Fowl (q:44281, q:42782)
	[251252] = true,	-- Dumplings (q:44281, q:42782)
	[251253] = true,	-- Fried Rice (q:44281, q:42782)
	[251254] = true,	-- Grilled Fish (q:44281, q:42782)
	[251257] = true,	-- Tideskorn Harpoon Launcher (q:38410, 38615)
	[251271] = true,	-- Shriektalon Totem
	[251272] = true,	-- Fearfeather Totem
	[251273] = true,	-- Reaverbeak Totem
	[251287] = true,	-- Massive Azsunian Pearl (q:42755)
	[251288] = true,	-- Gravestone (q:42005)
	[251324] = true,	-- Conspicuous Sand Pile (q:42728)
	[251329] = true,	-- Conspicuous Sand Pile (q:42728)
	[251334] = true,	-- Conspicuous Sand Pile (q:42728)
	[251412] = true,	-- Ritual Stone (q:38823)
	[251413] = true,	-- Ritual Stone (q:38823)
	[251434] = true,	-- Snarled Bramble
	[251482] = true,	-- Remains of the Fallen (Neltharion's Lair)
	[251490] = true,	-- Campfire (q:42868)
	[251492] = true,	-- Purified Water (q:42835)
	[251493] = true,	-- Shadefruit
	[251494] = true,	-- Purified Water (q:42835)
	[251496] = true,	-- Naga Weaponry
	[251556] = true,	-- Energy Vessel
	[251565] = true,	-- Unfortified Arcwine (q:42834)
	[251573] = true,	-- Legion Orb
	[251574] = true,	-- Legion Orb
	[251575] = true,	-- Legion Orb
	[251605] = true,	-- Fu Zan, the Wanderer's Companion (q:42765)
	[251626] = true,	-- Thousand-Year Arcwine (q:42841)
	[251763] = true,	-- Legion Portal
	[251954] = true,	-- Small Treasure Chest
	[251959] = true,	-- Ancient Elven Chest (q:43251)
	[251960] = true,	-- The Raven's Eye Tablet (q:43253)
	[252010] = true,	-- Crystallized Bough (q:43361)
	[252074] = true,	-- Basket of Root Vegetables (q:38331)
	[252076] = true,	-- Barrel of Krabs
	[252080] = true,	-- Hearty Vrykul Grains
	[252111] = true,	-- Noggenfogger Boom Bombs #1 (q:43485)
	[252113] = true,	-- Noggenfogger Boom Bombs #2 (q:43485)
	[252114] = true,	-- Noggenfogger Boom Bombs #3 (q:43485)
	[252115] = true,	-- Noggenfogger Boom Bombs #4 (q:43485)
	[252239] = true,	-- Shipwreck Debris (q:40046)
	[252243] = true,	-- Cage
	[252244] = true,	-- Cage
	[252276] = true,	-- Legion Intelligence
	[252286] = true,	-- Star Map
	[252329] = true,	-- Cage
	[252408] = true,	-- Ancient Mana Shard
	[252410] = true,	-- Scrolls, Sigils, and the Nightborne Way (q:43524)
	[252443] = true,	-- Containment Crystal (q:43525)
	[252541] = true,	-- Powder Keg
	[252571] = true,	-- Cage
	[252572] = true,	-- Cage
	[252665] = true,	-- Challenger's Cache (Eye of Aszhara)
	[252674] = true,	-- Challenger's Cache (Vault of the Wardens)
	[252680] = true,	-- Challenger's Cache (Maw of Souls)
	[252683] = true,	-- Challenger's Cache (The Arcway)
	[252690] = true,	-- Raven Nest (q:43786)
	[252691] = true,	-- Sewer Exit (q:37666)
	[252772] = true,	-- Ancient Mana Chunk
	[252774] = true,	-- Ancient Mana Crystal
	[252776] = true,	-- Arcway Outler
	[252779] = true,	-- Arcway Outlet (q:43564)
	[252783] = true,	-- Arcway Outlet (q:43564)
	[252826] = true,	-- Plague Cistern
	[253071] = true,	-- Leyline Feed Primer (q:43588)
	[253085] = true,	-- Northern Surveying Pylon (q:44002)
	[253086] = true,	-- Eastern Surveying Pylon (q:44002)
	[253087] = true,	-- Western Surveying Pylon (q:44002)
	[253088] = true,	-- Southern Surveying Pylon (q:44002)
	[253095] = true,	-- Ancient Monument
	[253259] = true,	-- Crystal Oscillator (q:38558)
	[253280] = true,	-- Leystone Seam
	[253974] = true,	-- Ravencrest's Cache (Black Rook Hold)
	[253981] = true,	-- Extravagant Chest (Court of Stars)
	[253982] = true,	-- Spoils of Nightmare (Darkheart Thicket)
	[253992] = true,	-- Box of Trinkets (Eye of Azshara)
	[253993] = true,	-- Crusty Kvaldir Chest (Maw of Souls)
	[253999] = true,	-- Stolen Skyhorn Goods (Neltharion's Lair)
	[254001] = true,	-- Misplaced Chest (The Arcway)
	[254003] = true,	-- Legion Cache (Vault of the Wardens)
	[254024] = true,	-- Small Treasure Chest
	[254168] = true,	-- Spoils of the Nightmare (Cenarius)
	[254446] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[254491] = true,	-- Nightborne Arms Cache (q:44769)
	[254504] = true,	-- The Magistrix Will Fall! (wq:44811)
	[254643] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[254645] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[254648] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[254650] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[254654] = true,	-- Bottle of Arcwine (q:40730, 42725)
	[255344] = true,	-- Felslate Seam
	[255930] = true,	-- Sun Sphere
	[255963] = true,	-- Vrykul Ancestral Chest
	[256789] = true,	-- Elven Treasure Chest
	[256790] = true,	-- Elven Treasure Chest
	[257289] = true,	-- Elven Treasure Chest
	[257290] = true,	-- Highmountain Clan Chest
	[257291] = true,	-- Nightborne Treasure Chest
	[258305] = true,	-- Fried Rice
	[258307] = true,	-- Fried Rice
	[258308] = true,	-- Fried Rice
	[258309] = true,	-- Baked Fish
	[258310] = true,	-- Fried Rice
	[258312] = true,	-- Baked Fowl
	[258968] = true,	-- Hymdall's Cache (Halls of Valor)
	[258970] = true,	-- Tideskorn Harpoon Launcher
	[258976] = true,	-- Telemancy Beacon
	[259764] = true,	-- Love Potion No. 13
	[260249] = true,	-- Ancient Mana Shard
	[260492] = true,	-- Glowing Tome
	[260493] = true,	-- Mana-Infused Gem
	[260494] = true,	-- Twice-Fortified Arcwine
	[260498] = true,	-- Leypetal Blossom
	[260526] = true,	-- Spoils (Trial of Valor)
	[265509] = true,	-- Broken Telemancy Beacon
	[265521] = true,	-- Felsoul Cage (q:44727)
	[265572] = true,	-- Prison Cage (q:44751)
	[266009] = true,	-- Telemancy Beacon (q:44740)
	[266029] = true,	-- Felsoul Cage (q:44727)
	[266032] = true,	-- Nightborne Arms Cache (q:44769)
	[266056] = true,	-- Nightborne Teleporter
	[266081] = true,	-- Thorim's Beacon (q:44787)
	[266092] = true,	-- Nightborne Scroll (q:44770)
	[266126] = true,	-- "Your Ancestors"
	[266127] = true,	-- "Just wanted you to feel at home, mon."
	[266128] = true,	-- "We found your mounts..."
	[266130] = true,	-- "Didn't want you to get the shakes."
	[266131] = true,	-- Replacement Sunwell
	[266150] = true,	-- Ley Line Tap (q:44874)
	[266166] = true,	-- Offering to Aviana
	[266184] = true,	-- Ley Line Tap (q:44874)
	[266285] = true,	-- The Magistrix Will Fall! (wq:44811)
	[266298] = true,	-- Magically Purified Water
	[266301] = true,	-- Shal'dorei Foodstuff
	[266307] = true,	-- Depleted Fel Crystal (q:45028)
	[266405] = true,	-- Discarded Orb
	[266406] = true,	-- Telemancy Notes
	[266407] = true,	-- Energy Disruptor (q:44964)
	[266483] = true,	-- Gift of the Nightborne (Gul'Dan)
	[266592] = true,	-- Medivh's Footlocker (Mana Devourer)
	[266655] = true,	-- Large Ceremonial Drum (q:42622, 44823)
	[266663] = true,	-- Duskwatch Scrying Orb
	[266670] = true,	-- Disabled Sentry Pylon (q:45203)
	[266689] = true,	-- Medium Ceremonial Drum (q:42622, 44823)
	[266703] = true,	-- Energy Disruptor (q:44964)
	[266704] = true,	-- Energy Disruptor (q:44964)
	[266736] = true,	-- Levia's Research Journal (q:47057)
	[266847] = true,	-- Control Room
	[266849] = true,	-- Forge Room
	[266867] = true,	-- Control Console
	[266951] = true,	-- Barrel of Storm Brew (q:45404)
	[267041] = true,	-- Fel-Infused Gunpowder Cache (q:46308, 45628, 45629)
	[267177] = true,	-- Felsworn Cage
	[267221] = true,	-- Control Console
	[267279] = true,	-- Sweetgrass
	[267575] = true,	-- Sunken Cache (q:45473)
	[267580] = true,	-- Cache of Holy Water (q:45770)
	[267600] = true,	-- Saltwater Crane Egg (wq:45934)
	[267729] = true,	-- Argunite Crystal (q:46213)
	[267768] = true,	-- Unearthed Antiquities (q:46075)
	[267769] = true,	-- Unearthed Antiquities (q:46075)
	[267770] = true,	-- Unearthed Antiquities (q:46075)
	[267778] = true,	-- Harpy Nest (q:46126)
	[267920] = true,	-- Legion Cage
	[267952] = true,	-- Stolen Crate (q:44850)
	[268380] = true,	-- Legion Cage (q:46262)
	[268436] = true,	-- Unearthed Relic (Broken Shore)
	[268440] = true,	-- Highborne Archaeology Find
	[268442] = true,	-- Xorothian Calling Stone (q:46243)
	[268450] = true,	-- Highmountain Tauren Archaeology Find
	[268451] = true,	-- Demonic Archaeology Find
	[268453] = true,	-- Highborne Archaeology Find
	[268454] = true,	-- Brew Still (q:45442)
	[268457] = true,	-- Lost Highborne Journal
	[268466] = true,	-- Demonic Archaeology Find
	[268617] = true,	-- Control Console
	[268643] = true,	-- Codex Draconomicus Rubicus (q:46812)
	[268745] = true,	-- Ancient Pylon (q:46818)
	[268734] = true,	-- Crystalized Fel
	[268760] = true,	-- Argunite Matrix
	[268765] = true,	-- Disturbed Mud (q:46825)
	[268800] = true,	-- Legion Cage
	[268805] = true,	-- Pawprint
	[268806] = true,	-- Pawprint
	[268807] = true,	-- Pawprint
	[268808] = true,	-- Pawprint
	[269026] = true,	-- Ancient Gong
	[269075] = true,	-- Small Treasure Chest (Stormheim)
	[269080] = true,	-- Small Treasure Chest (Stormheim)
	[269843] = true,	-- Challenger's Cache (Cathedral of Eternal Night)
	[269852] = true,	-- Challenger's Cache (Return to Karazhan: Upper)
	[269871] = true,	-- Challenger's Cache (Return to Karazhan: Upper)
	[269940] = true,	-- Legion Cache (Return to Karazhan: Upper)
	[270040] = true,	-- Nearly-hatching Pterrordax Egg
	[270902] = true,	-- Weathered Shrine
	[270918] = true,	-- Soothing Lilybud (q:47259)
	[271014] = true,	-- Tarkaj's Warblade (q:47317)
	[271097] = true,	-- Abandoned Altar
	[271098] = true,	-- Discarded Naaru Figurine
	[271099] = true,	-- Spoils of the Legion's Fall (Tomb of Sargeras)
	[271100] = true,	-- Frantic Wall Scrawling
	[271114] = true,	-- Eredar Bones (wq:47624)
	[271227] = true,	-- Hidden Wyrmtongue Cache
	[271554] = true,	-- Veiled Wyrmtongue Chest
	[271558] = true,	-- Nesingwary's Favorite Rifle (q:47586)
	[271559] = true,	-- Nesingwary's Campfire (q:47586)
	[271561] = true,	-- Dwarf Trap
	[271648] = true,	-- Stolen Idol of Krag'wa
	[271667] = true,	-- Naga Cage
	[271809] = true,	-- Gate (q:47310)
	[271839] = true,	-- Sethrak Cage (q:47317)
	[271840] = true,	-- Sethrak Cage (q:47317)
	[271938] = true,	-- Cell Block Lever (q:47098)
	[272009] = true,	-- Preserved Crystal Collection (wq:47828)
	[272010] = true,	-- Crystalized Memory (wq:47828)
	[272313] = true,	-- Leaking Fel Spreader (q:47707)
	[272409] = true,	-- Message Rocket (q:47245)
	[272619] = true,	-- Spire Stabilizer
	[272622] = true,	-- Cursed Treasure
	[272692] = true,	-- Sigil of Awakening
	[272768] = true,	-- Empyrium Deposit
	[272778] = true,	-- Rich Empyrium Deposit
	[272780] = true,	-- Empyrium Seam
	[272782] = true,	-- Astral Glory
	[272918] = true,	-- Gilded Triumvirate Chest (Seat of the Triumvirate)
	[273052] = true,	-- Fel-Encrusted Herb
	[273245] = true,	-- Vindicaar Matrix Core
	[273270] = true,	-- Harbor Seaweed (q:48352)
	[273274] = true,	-- Congealed Void Crystal (wq:48094)
	[273292] = true,	-- Vindicaar Matrix Core (q:47287)
	[273443] = true,	-- Void-Seeped Cache
	[273537] = true,	-- Gravebloom (q:51787)
	[273658] = true,	-- Light's Judgment (q:47526)
	[273660] = true,	-- Mysterious Trashpile
	[273679] = true,	-- Sethrak Cage
	[273716] = true,	-- Crest of Knowledge
	[273775] = true,	-- Well-Preserved Tome (q:47685)
	[273787] = true,	-- Teleportation Crystal (q:47652)
	[273836] = true,	-- Backpack (q:48585)
	[273837] = true,	-- Supply Pouch (q:48585)
	[273914] = true,	-- Ancient Warding Crystal
	[273915] = true,	-- Ancient Mending Crystal
	[273991] = true,	-- Spire Stabilizer (wq:48614)
	[275099] = true,	-- Saurolisk Egg
	[276199] = true,	-- Vindicaar Beacon (q:48668)
	[276233] = true,	-- Door
	[276234] = true,	-- Riverbud
	[276236] = true,	-- Star Moss
	[276237] = true,	-- Akunda's Bite
	[276238] = true,	-- Winter's Kiss
	[276239] = true,	-- Siren's Sting
	[276240] = true,	-- Sea Stalks
	[276262] = true,	-- Trogg Cage (q:48196)
	[276270] = true,	-- Soup Stone (q:48778)
	[276496] = true,	-- Durable Seashell (q:48899)
	[276503] = true,	-- Boon of Life (Antorus, Mythic)
	[276616] = true,	-- Monelite Deposit
	[276617] = true,	-- Storm Silver Deposit
	[276618] = true,	-- Platinum Deposit
	[276619] = true,	-- Monelite Seam
	[276620] = true,	-- Storm Silver Seam
	[276621] = true,	-- Rich Monelite Deposit
	[276622] = true,	-- Rich Stormsilver Deposit
	[276623] = true,	-- Rich Platinum Deposit
	[277336] = true,	-- Treasure Chest
	[277355] = true,	-- The Pantheon's Bounty (Antorus, Mythic)
	[277427] = true,	-- Packaged Relics (q:49232)
	[277526] = true,	-- Freshly Dug Sand (q:49138)
	[277859] = true,	-- Jailer Cage (q:49286)
	[277876] = true,	-- Sethrak Cage (q:49334)
	[277899] = true,	-- Sethrak War Banner (q:49327)
	[277910] = true,	-- Sethrak Cage (q:50656)
	[278150] = true,	-- Pile of Wood (Warfronts)
	[278189] = true,	-- Nazeshi Cage
	[278217] = true,	-- Alor'idal Crystal (q:49077)
	[278336] = true,	-- Tortollan Traveling Pack (q:49284)
	[278349] = true,	-- Tortollan Scroll Case (q:49284)
	[278456] = true,	-- Treasure Chest (Zuldazar)
	[278459] = true,	-- Treasure Chest (Zuldazar)
	[278462] = true,	-- Treasure Chest (Zuldazar)
	[278477] = true,	-- Drust Archaeology Find
	[278476] = true,	-- Zandalari Archaeology Find
	[278685] = true,	-- Sethrak Skull (q:49676)
	[278694] = true,	-- Treasure Chest (Zuldazar)
	[278716] = true,	-- Treasure Chest (Zuldazar)
	[278795] = true,	-- Treasure Chest (Zuldazar)
	[279044] = true,	-- Zandalari Rushes
	[279293] = true,	-- Sweetleaf Bush
	[279346] = true,	-- Urn of Voices
	[279649] = true,	-- Cache of the Leviathan
	[279654] = true,	-- Freya's Heroic Gift [Freya]
	[279655] = true,	-- Cache of Heroic Innovation [Mimiron]
	[279656] = true,	-- Cache of Heroic Storms [Thorim]
	[280335] = true,	-- Essence Collector
	[280571] = true,	-- Essence Collector
	[280572] = true,	-- Essence Collector
	[280603] = true,	-- Ritual Effigy (q:51657)
	[280611] = true,	-- Ancient Gong (q:50076)
	[281024] = true,	-- Idol of Rezan (q:47738)
	[281079] = true,	-- Star Moss
	[281173] = true,	-- Mysterious Trashpile
	[281217] = true,	-- Nazeshi Cage (q:49287)
	[281218] = true,	-- Nazeshi Cage (q:49287)
	[281219] = true,	-- Nazeshi Cage (q:49287)
	[281256] = true,	-- Mysterious Trashpile
	[281303] = true,	-- Pterrodax Nest
	[281363] = true,	-- Mysterious Trashpile
	[281365] = true,	-- Jani's Stash
	[281380] = true,	-- Mysterious Trashpile
	[281385] = true,	-- Mysterious Trashpile
	[281389] = true,	-- Mysterious Trashpile
	[281422] = true,	-- Telemancy Beacon (q:48400)
	[281469] = true,	-- Raptor's Eggs (q:50497)
	[281608] = true,	-- Relic of the Keepers (q:48871)
	[281867] = true,	-- Star Moss
	[281868] = true,	-- Star Moss
	[281869] = true,	-- Siren's Sting
	[281870] = true,	-- Riverbud
	[281872] = true,	-- Sea Stalks
	[281903] = true,	-- Treasure Chest (Zuldazar)
	[281905] = true,	-- Treasure Chest (Zuldazar)
	[282481] = true,	-- Ransacked Supplies (wq:50962 [A], wq:50813 [H])
	[282626] = true,	-- Fish Pile
	[282740] = true,	-- Mysterious Trashpile
	[287006] = true,	-- Faithless Weapon Rack (q:49665)
	[287066] = true,	-- Morgrum's Device (q:49282)
	[287068] = true,	-- Morgrum's Device
	[287238] = true,	-- Ancient Altar
	[287314] = true,	-- Disturbed Sand
	[287490] = true,	-- Cursed Treasure
	[287493] = true,	-- Cursed Treasure
	[287495] = true,	-- Pirate Hat
	[288189] = true,	-- Bonebeak Scavenger Meat (q:51228)
	[288190] = true,	-- Bonebeak Scavenger Meat (q:51228)
	[288191] = true,	-- Brineclaw Meat (q:51228)
	[288192] = true,	-- Brineclaw Meat (q:51228)
	[288601] = true,	-- Inconspicuous Seaforium Bomb
	[288604] = true,	-- Treasure Chest (Zuldazar)
	[288636] = true,	-- Council's Tribute [Council of Captains]
	[288637] = true,	-- The Council's Cache [The Council of Tribes]
	[288638] = true,	-- Boon of the First King [Dazar, The First King]
	[288639] = true,	-- Treasure Rich Flotsam [Viq'Goth]
	[288640] = true,	-- Sethraliss Treasure [Avatar of Sethraliss]
	[290527] = true,	-- Urn of Vol'Jin (q:51516)
	[290678] = true,	-- Altar of Gonk
	[290708] = true,	-- Anchor Chains (q:51592)
	[290709] = true,	-- Crate of Canvas (q:51592)
	[290710] = true,	-- Canvas Bolt (q:51592)
	[290711] = true,	-- Anchor Chain (q:51592)
	[290712] = true,	-- Sandworn Blade (q:51602)
	[290718] = true,	-- Place Trap (q:51619 & q:51767)
	[290747] = true,	-- Jambani Stockpile
	[290748] = true,	-- Jambani Stockpile
	[290749] = true,	-- Jambani Stockpile
	[290750] = true,	-- Jambani Stockpile
	[290773] = true,	-- Altar of Akunda
	[290776] = true,	-- Gunpowder Crate (q:51596)
	[290803] = true,	-- Gunpowder Crate (q:51599)
	[290822] = true,	-- Dark Fissure
	[290827] = true,	-- Equipment Locker (q:47098)
	[290842] = true,	-- Odoriferous Stew (q:51677)
	[290903] = true,	-- Horde Banner (q:51438)
	[290975] = true,	-- Silver Nugget (q:51707 & q:51743)
	[290996] = true,	-- Temple of Rezan Map (q:51679)
	[291079] = true,	-- MOTHER's Cache [MOTHER] LFR/Normal
	[291234] = true,	-- Steaming Fresh Carrion (q:47272)
	[291235] = true,	-- Steaming Fresh Carrion (q:47272)
	[291236] = true,	-- Steaming Fresh Carrion (q:47272)
	[291261] = true,	-- Woven Idol
	[292390] = true,	-- Horde Banner (q:52127)
	[292535] = true,	-- Altar of Kimbul (q:47578)
	[292764] = true,	-- Metal Scraps (q:52142 & q:52160)
	[292765] = true,	-- Discarded Toolbox (q:52142 & q:52160)
	[292835] = true,	-- Titan Console (Uldir)
	[292868] = true,	-- Horde Banner (q:52222)
	[292917] = true,	-- Sparkling Tidescale (q:52258)
	[293121] = true,	-- Horde Banner (q:52276)
	[293134] = true,	-- Large Azerite Grenade (q:52252)
	[293211] = true,	-- Stolen Idol of Krag'wa
	[293297] = true,	-- Horde Banner (q:52314)
	[293314] = true,	-- Horde Banner (q:52320)
	[293351] = true,	-- Truffle
	[293445] = true,	-- Truffle
	[293446] = true,	-- Truffle
	[293449] = true,	-- Truffle
	[293550] = true,	-- Horde Banner (q:52479)
	[293734] = true,	-- Horde Banner (q:52777)
	[293883] = true,	-- Battlechest of the Horde (q:52490)
	[294017] = true,	-- Treated Shipwood (q:52879)
	[294018] = true,	-- Treated Shipwood (q:52879)
	[294019] = true,	-- Treated Shipwood (q:52879)
	[294022] = true,	-- Treated Shipwood (q:52879)
	[294170] = true,	-- Sealed Tideblood (q:52968)
	[296252] = true,	-- Box of Large Azerite Grenades (q:52252)
	[296855] = true,	-- Truffle
	[297832] = true,	-- Obsidian Cache [Sartharion] 10 Normal
	[297836] = true,	-- Obsidian Cache [Sartharion] 25 Normal
	[297850] = true,	-- Iron Cache []
	[297852] = true,	-- Iron Cache []
	[297860] = true,	-- General's Cache [General Vezax]
	[297873] = true,	-- Titan's Cache [Yogg'Saron]
	[297899] = true,	-- Cache of Toys [XT-002 Deconstuctor]
	[305839] = true,	-- Shortfuse Special
	[305840] = true,	-- Bag of Bombs
	[307028] = true,	-- Azerite Grenades (q:53950)
	[308100] = true,	-- Engine Gearing (q:53885)
	[308103] = true,	-- Azerite Cannon Balls (q:53885)
	[308381] = true,	-- Alliance Cage (q:53883)
	[309886] = true,	-- Engine Gearing (q:53712)
	[311174] = true,	-- Volatile Azerite Weapons (q:54177)
	[311182] = true,	-- Crawler Mine Parts (q:54189)
	[311183] = true,	-- Remote Mine Controls (q:54189)
	[311206] = true,	-- Spider Ichor (q:54104)
	[311564] = true,	-- Abandoned Tidepriest Cache [Stormwall Blockade] Normal
	[312293] = true,	-- Mana Crystal
	[315945] = true,	-- Prisoner Cage (q:54008)
	[315946] = true,	-- Prisoner Cage (q:54008)
	[315947] = true,	-- Prisoner Cage (q:54008)
	[316270] = true,	-- Ball & Chain (q:54559)
	[316399] = true,	-- Azerite Chest (q:54644)
	[316434] = true,	-- Azerite Chest
	[322020] = true,	-- Pile of Coins (Armored Vaultbot)
	[322065] = true,	-- Reinforced Cage (q:54959)
	[322358] = true,	-- Waterlogged Alliance Crate (q:57331)
	[322413] = true,	-- Glimmering Chest
	[322787] = true,	-- Shrine of Torcali (q:55252)
	[322791] = true,	-- Kelpberry (q:56146 & q:55638)
	[322803] = true,	-- Kelpberry (q:56146 & q:55638)
	[322805] = true,	-- Calling Conch
	[325425] = true,	-- Wanderer's Wayshrine
	[325426] = true,	-- Wanderer's Wayshrine
	[325427] = true,	-- Wanderer's Wayshrine
	[325476] = true,	-- Direbloom (q:55504)
	[325478] = true,	-- Direbloom (q:55504)
	[325632] = true,	-- Burial Mound
	[325799] = true,	-- Pile of Plotsam
	[325874] = true,	-- Osmenite Seam
	[325875] = true,	-- Osmenite Deposit
	[325881] = true,	-- Sand Pile (q:55681)
	[325883] = true,	-- Highborne Relic (q: 55659)
	[326066] = true,	-- Shiny Seashell (q:55766)
	[326070] = true,	-- Shiny Seashell (q:55766)
	[326071] = true,	-- Shiny Seashell (q:55766)
	[326139] = true,	-- Alcohol-Free Brewfest Sampler
	[326214] = true,	-- Fetid Limb
	[326239] = true,	-- Fathom Egg (q:55883)
	[326594] = true,	-- Arcane Tome
	[326598] = true,	-- Zin'anthid
	[326651] = true,	-- Catapult (q:55989)
	[326727] = true,	-- Shipwrecked Keg (q: 56001 & q: 56265)
	[327146] = true,	-- Harpy Totem (q: 55881)
	[327158] = true,	-- Neptulian Clam (q: 56153 & 56035)
	[327230] = true,	-- Jelly Deposit
	[327576] = true,	-- Glimmering Chest
	[327577] = true,	-- Glimmering Chest
	[327578] = true,	-- Glimmering Chest
	[327682] = true,	-- Azshara Chest [Aszhara] LFR/Normal
	[328315] = true,	-- Mysterious Trashpile
	[329639] = true,	-- Sharas'dal, Scepter of Tides (q:56429)
	[329896] = true,	-- Shipwrecked Keg (q:56001, 56265)
	[330194] = true,	-- Prismatic Crystal
	[334115] = true,	-- Explosive Crate (q:57148)
	[334122] = true,	-- Bomb Location (Vision of Stormwind)
	[334732] = true,	-- Glimmering Chest
	[334733] = true,	-- Glimmering Chest
	[334734] = true,	-- Glimmering Chest
	[334735] = true,	-- Glimmering Chest
	[334736] = true,	-- Glimmering Chest
	[334751] = true,	-- Zanj'ir Weapon Rack (q:57333)
	[334839] = true,	-- Suspicious Crate (q:57090)
	[338224] = true,	-- Cache of the Fire Lord
	[340023] = true,	-- Diagnostic Console: Uldir (q:58506)
	[340025] = true,	-- Diagnostic Console: Uldaman (q:58506)
	[340026] = true,	-- Diagnostic Console: Ulduar (q:58506)
	[340027] = true,	-- Diagnostic Console: Uldum (q:58506)
	[340625] = true,	-- Alver's Annals of Strategy (q:58622)
	[340634] = true,	-- How Not To Lose (q:58622)
	[340648] = true,	-- How Not To Lose (q:58622)
	[340649] = true,	-- Krexus's Guide To War (q:58622)
	[340839] = true,	-- Skewering Needle (q:58680)
	[340843] = true,	-- Razorthread Spool (q:58680)
	[345458] = true,	-- Prize Bag
	[348639] = true,	-- Anima Stores (q:59581)
	[349136] = true,	-- Forgotten Memorandum (q:59717)
	[349274] = true,	-- Forgotten Memorandum (q:59717)
	[349393] = true,	-- Battered Chest (q:59740)
	[349543] = true,	-- Animacone
	[349885] = true,	-- Guide To Marching (q:58622)
	[350978] = true,	-- Queen's Conservatory Cache
	[351473] = true,	-- Droplets of Anima (q:60176)
	[352047] = true,	-- Ardenmoth Cocoon (q:60337)
	[352719] = true,	-- Harvest Key
	[352095] = true,	-- Soulbreaker Trap
	[352433] = true,	-- Cache of Eyes
	[352593] = true,	-- Place Shard (q:59751)
	[352594] = true,	-- Place Shard (q:59751)
	[352595] = true,	-- Place Shard (q:59751)
	[352985] = true,	-- Mawsworn Armaments
	[353017] = true,	-- Servant's Basic Kit (q:60602)
	[353170] = true,	-- Place Blade (q:60644)
	[353195] = true,	-- Locked Door @ 61.2 60.3 REVENDRETH (q:58391)
	[353947] = true,	-- Discarded Vial
	[354077] = true,	-- Pretend To Win (q:58622)
	[354132] = true,	-- Stage Light (Ember Court)
	[354134] = true,	-- Stage Prop (Ember Court)
	[354649] = true,	-- Relic Hoard
	[355915] = true,	-- Razorthread Spool (q:58680)
	[355971] = true,	-- Stoneborn Glaive (q:61402)
	[356560] = true,	-- Explosive Animastore (q:60532)
	[356561] = true,	-- Everburn Lantern (q:60532)
	[356562] = true,	-- Emberlight Lantern (q:60532)
	[356563] = true,	-- Sanguine Rose (q:60532)
	[356596] = true,	-- Feather Cap (q:61406)
	[356597] = true,	-- Lacy Bell Morel (q:61406)
	[356696] = true,	-- Alexandros Mograine's Substantial Tribute (Ember Court)
	[356763] = true,	-- Rune of the Chosen
	[356764] = true,	-- Rune of the Chosen
	[356765] = true,	-- Rune of the Chosen
	[356885] = true,	-- Stolen Memento (Ember Court)
	[358297] = true,	-- Purified Nectar (q:62276)
	[363824] = true,	-- Cage (q:62720)
	[364345] = true,	-- A Faintly Glowing Seed
	[364975] = true,	-- Prime Scroll (q:63054)
	[364976] = true,	-- Prime Scroll (q:63055)
	[364983] = true,	-- Scroll of Dark Empowerment (q:63064)
	[364950] = true,	-- Scroll of Dark Empowerment (q:63056, 63063)
	[364996] = true,	-- Teleportation Pad (Tomb of Sargeras)
	[364997] = true,	-- Teleportation Pad (Tomb of Sargeras)
	[367940] = true,	-- Theotar's Egg (Ember Court)
	[367942] = true,	-- Temel's Egg (Ember Court)
	[367943] = true,	-- Prince Renathal's Egg (Ember Court)
	[367944] = true,	-- Lord Garridan's Egg (Ember Court)
	[368290] = true,	-- Vengeful Soul Prison
	[368304] = true,	-- Damaged Binding
	[368604] = true,	-- Mawsworn Cage
	[368605] = true,	-- Cage (SoD)
	[368606] = true,	-- Cage (SoD)
	[368617] = true,	-- Memorial to Archivist Roh-Gema
	[368638] = true,	-- Shipping Documents (q:63979)
	[368677] = true,	-- Memorial to Archivist Roh-Kiel
	[369306] = true,	-- Bundle of Writings (q:64224)
	[369308] = true,	-- Undelivered Mail (q:64224)
	[369309] = true,	-- Unattended Books (q:64224)
	[369375] = true,	-- Triggered Trap (q:64226)
	[369435] = true,	-- Uncorrupted Razorwing Egg
	[373525] = true,	-- Place Shard (q:64813)
	[373526] = true,	-- Place Shard (q:64813)
	[373527] = true,	-- Place Shard (q:64813)
	[375234] = true,	-- Hardened Draconium Deposit
	[375235] = true,	-- Molten Draconium Deposit
	[375241] = true,	-- Bubble Poppy
	[375290] = true,	-- Cypher Bound Chest
	[375530] = true,	-- Forgotten Treasure Vault
	[376036] = true,	-- Nomad Cache
	[376386] = true,	-- Disturbed Dirt
	[376426] = true,	-- Magic-Bound Chest
	[376519] = true,	-- Vine Wrapped Chest
	[376583] = true,	-- Decay Covered Chest
	[376584] = true,	-- Dracthyr Supply Chest
	[376585] = true,	-- Icemaw Storage Cache
	[376587] = true,	-- Expedition Scout's Pack
	[376817] = true,	-- Storm Shorn Stump
	[376818] = true,	-- Lightning Blasted Pine
	[376827] = true,	-- Storm Totem
	[376828] = true,	-- Wind Felled Tree
	[378802] = true,	-- Corrupted Dragon Egg
	[378819] = true,	-- Rock Wall
	[379159] = true,	-- Shovel
	[379195] = true,	-- Anvil
	[379248] = true,	-- Draconium Deposit
	[379252] = true,	-- Draconium Deposit
	[379263] = true,	-- Rich Draconium Deposit
	[379267] = true,	-- Rich Draconium Deposit
	[380834] = true,	-- Decay Tainted Chest
	[381042] = true,	-- Shimmering Chest
	[381102] = true,	-- Serevite Deposit
	[381104] = true,	-- Rich Serevite Deposit
	[381105] = true,	-- Rich Serevite Deposit
	[381106] = true,	-- Serevite Seam
	[381154] = true,	-- Writhebark
	[381199] = true,	-- Windswept Writhebark
	[381207] = true,	-- Saxifrage
	[381213] = true,	-- Windswept Hochenblume
	[381214] = true,	-- Frigid Hochenblume
	[381365] = true,	-- Dragonscale Expedition Flag
	[381367] = true,	-- Dragonscale Expedition Flag
	[381369] = true,	-- Dragonscale Expedition Flag
	[381370] = true,	-- Dragonscale Expedition Flag
	[381373] = true,	-- Dragonscale Expedition Flag
	[381375] = true,	-- Dragonscale Expedition Flag
	[381377] = true,	-- Dragonscale Expedition Flag
	[381515] = true,	-- Hardened Serevite Deposit
	[381516] = true,	-- Molten Serevite Deposit
	[381517] = true,	-- Titan-Touched Serevite Deposit
	[381519] = true,	-- Infurious Serevite Deposit
	[381673] = true,	-- Gorloc Crystals
	[381957] = true,	-- Lush Bubble Poppy
	[381958] = true,	-- Lush Writhebark
	[381959] = true,	-- Lush Saxifrage
	[381960] = true,	-- Lush Hochenblume
	[381969] = true,	-- Challenger's Cache (Halls of Valor)
	[382029] = true,	-- Disturbed Dirt
	[382031] = true,	-- Oily Dropcap
	[382032] = true,	-- Flowering Inferno Pod
	[382033] = true,	-- Djaradin Supply Jar
	[382071] = true,	-- Full Fishing Net
	[382079] = true,	-- Dragonscale Expedition Flag
	[382086] = true,	-- Dragonscale Expedition Flag
	[382092] = true,	-- Dragonscale Expedition Flag
	[382094] = true,	-- Dragonscale Expedition Flag
	[382101] = true,	-- Dragonscale Expedition Flag
	[382103] = true,	-- Dragonscale Expedition Flag
	[382105] = true,	-- Dragonscale Expedition Flag
	[382107] = true,	-- Dragonscale Expedition Flag
	[382110] = true,	-- Dragonscale Expedition Flag
	[382112] = true,	-- Dragonscale Expedition Flag
	[382116] = true,	-- Dragonscale Expedition Flag
	[382118] = true,	-- Dragonscale Expedition Flag
	[382120] = true,	-- Dragonscale Expedition Flag
	[382283] = true,	-- Oozing Claw Thistle [Dragon Isle Resources]
	[382284] = true,	-- Mature Gift of the Grove [Dragon Isle Resources]
	[382286] = true,	-- Singing River Bell [Dragon Isle Resources]
	[382287] = true,	-- Blooming Fangtooth [Dragon Isle Resources]
	[382288] = true,	-- Ripe Winter Berries [Dragon Isle Resources]
	[382291] = true,	-- Mature Highland Milkweed [Dragon Isle Resources]
	[382292] = true,	-- Ripe Cuppressa [Dragon Isle Resources]
	[382294] = true,	-- Blooming Titian Orchid [Dragon Isle Resources]
	[382295] = true,	-- Blooming Magenta Titian Orchid [Dragon Isle Resources]
	[382299] = true,	-- Sundered Flame Supply Crate [Dragon Isle Resources]
	[382300] = true,	-- Maruukai Supplies
	[383732] = true,	-- Tuskarr Tacklebox
	[383733] = true,	-- Disturbed Dirt
	[383734] = true,	-- Disturbed Dirt
	[383735] = true,	-- Disturbed Dirt
	[383820] = true,	-- Brackenhide Supply Crate
	[384279] = true,	-- Abandoned Tuskarr Supplies
	[384842] = true,	-- Best-root Bush (q:72552)
	[385968] = true,	-- Honeyfreeze Honeycomb (q:73550)
	[385989] = true,	-- Honeyfreeze Honeycomb (q:73550)
	[385999] = true,	-- Stolen Booty (q:73178)
	[386106] = true,	-- Dragonscale Expedition Flag
	[386108] = true,	-- Dragonscale Expedition Flag
	[386165] = true,	-- Obsidian Coffer
	[386166] = true,	-- Bone Pile
	[386179] = true,	-- Spellsworn Reserves
	[386383] = true,	-- Discarded Toy
	[386521] = true,	-- Toxin Antidote
	[386524] = true,	-- Toxin Antidote
	[387516] = true,	-- Infused Spear
	[387725] = true,	-- Glowing Crystal (q:74518)
	[387727] = true,	-- Sulfuric Crystal (q:74518)
	[387729] = true,	-- Magma Crystal (q:74518)
	[390073] = true,	-- Infuser Shard (q:75024)
	[390139] = true,	-- Lambent Hochenblume
	[390140] = true,	-- Lambent Saxifrage
	[390142] = true,	-- Lambent Bubble Poppy
	[396020] = true,	-- Stolen Stash
	[398017] = true,	-- Underlight Moth Cocoon
	[398818] = true,	-- Challenger's Cache (Neltharion's Lair)
	[398751] = true,	-- Lush Bubble Poppy
	[398753] = true,	-- Lush Hochenblume
	[398754] = true,	-- Lush Saxifrage
	[398755] = true,	-- Bubble Poppy
	[398756] = true,	-- Writhebark
	[398758] = true,	-- Saxifrage
	[398761] = true,	-- Titan-Touched Hochenblume
	[401844] = true,	-- Smelly Trash Pile
	[402602] = true,	-- Inconspicuous Crystal
	[403458] = true,	-- Dauntless Draught
	[403740] = true,	-- Cleanbrass Bolts
	[404923] = true,	-- Lost Chest (Hallowfall)
	[405303] = true,	-- Dreamseed Cache
	[405320] = true,	-- Dreamseed Cache
	[405321] = true,	-- Dreamseed Cache
	[405487] = true,	-- Dreamseed Cache
	[405488] = true,	-- Dreamseed Cache
	[405929] = true,	-- Dreamseed Cache
	[405930] = true,	-- Dreamseed Cache
	[405931] = true,	-- Dreamseed Cache
	[405932] = true,	-- Dreamseed Cache
	[406106] = true,	-- Dreamseed Cache
	[406107] = true,	-- Dreamseed Cache
	[406116] = true,	-- Dreamseed Cache
	[406117] = true,	-- Dreamseed Cache
	[406118] = true,	-- Dreamseed Cache
	[406119] = true,	-- Dreamseed Cache
	[406120] = true,	-- Dreamseed Cache
	[406121] = true,	-- Dreamseed Cache
	[406123] = true,	-- Dreamseed Cache
	[406124] = true,	-- Dreamseed Cache
	[406128] = true,	-- Dreamseed Cache
	[406129] = true,	-- Dreamseed Cache
	[406130] = true,	-- Dreamseed Cache
	[406134] = true,	-- Dreamseed Cache
	[406135] = true,	-- Dreamseed Cache
	[406138] = true,	-- Dreamseed Cache
	[406139] = true,	-- Dreamseed Cache
	[406142] = true,	-- Dreamseed Cache
	[406143] = true,	-- Dreamseed Cache
	[406147] = true,	-- Dreamseed Cache
	[406148] = true,	-- Dreamseed Cache
	[406354] = true,	-- Dreamseed Cache
	[406355] = true,	-- Dreamseed Cache
	[406356] = true,	-- Dreamseed Cache
	[406954] = true,	-- Dreamseed Cache
	[406955] = true,	-- Dreamseed Cache
	[406956] = true,	-- Dreamseed Cache
	[406977] = true,	-- Dreamseed Cache
	[406998] = true,	-- Dreamseed Cache
	[407001] = true,	-- Dreamseed Cache
	[407006] = true,	-- Dreamseed Cache
	[407487] = true,	-- Challenger's Cache (Darkheart Thicket)
	[407488] = true,	-- Challenger's Cache (Black Rook Hold)
	[407678] = true,	-- Rich Serevite Deposit
	[407702] = true,	-- Writhebark
	[407703] = true,	-- Hochenblume
	[407725] = true,	-- Missing Fruit
	[408054] = true,	-- Shiversnap Blossom
	[408134] = true,	-- Enchanted Thicket
	[408327] = true,	-- Wild Greens
	[408328] = true,	-- Rubyscale Melon
	[408329] = true,	-- Orangeroot
	[408720] = true,	-- Laden Somnut
	[409220] = true,	-- Dreamseed Cache
	[409221] = true,	-- Dreamseed Cache
	[409223] = true,	-- Dreamseed Cache
	[409224] = true,	-- Dreamseed Cache
	[409225] = true,	-- Dreamseed Cache
	[409226] = true,	-- Dreamseed Cache
	[409227] = true,	-- Dreamseed Cache
	[409228] = true,	-- Dreamseed Cache
	[409844] = true,	-- Dreamseed Cache
	[409847] = true,	-- Dreamseed Cache
	[409848] = true,	-- Dreamseed Cache
	[410045] = true,	-- Ageless Blossom (q:78171)
	[410046] = true,	-- Ageless Blossom (q:78171)
	[410048] = true,	-- Ageless Blossom (q:78171)
	[410353] = true,	-- Prickly Plum
	[410994] = true,	-- Map of Shadowfang Keep Security (q:78332 [A], q:78982 [H])
	[410998] = true,	-- Formula: Intoxicating Toxic Perfume (q:78332 [A], q:78982 [H])
	[410999] = true,	-- Memo from Apothecary Hummel (q:78332 [A], q:78982 [H])
	[411560] = true,	-- Lavenbloom (q:78565 & q:78986)
	[411561] = true,	-- Sugar Orchid (q:78565 & q:78986)
	[411562] = true,	-- Orange Illicium (q:78565 & q:78986)
	[411656] = true,	-- Hallowfall Scythe
	[411755] = true,	-- Flickerflame Candles (q:78635, q:82519)
	[411878] = true,	-- Intriguing Scrap (q:79205)
	[411930] = true,	-- Blackpowder Barre
	[412967] = true,	-- Helm of Memories
	[413046] = true,	-- Bismuth
	[413126] = true,	-- Box of Artisanal Goods (q:78369 [A], q:78984 [H])
	[413246] = true,	-- Elemental Silt Mound
	[413563] = true,	-- Heavy Trunk (archival assault)
	[413590] = true,	-- Bountiful Coffer
	[414080] = true,	-- Molten Treatise Vol. 2
	[414315] = true,	-- Mycobloom
	[414699] = true,	-- Darkroot Persimmon
	[414701] = true,	-- Cold Coffee
	[414869] = true,	-- Weapons Crate
	[414927] = true,	-- Rittsyn's Soulstone (q:78531)
	[414957] = true,	-- Hastily-Prepared Antidote
	[415296] = true,	-- Repair Kit
	[416392] = true,	-- Weapons Crate
	[416400] = true,	-- Weapons Crate
	[416411] = true,	-- Weapons Crate
	[416418] = true,	-- Harvest Seed Supply
	[416448] = true,	-- Lush Lavenbloom (q:78565 & q:78986)
	[416449] = true,	-- Lush Sugar Orchid (q:78565 & q:78986)
	[416450] = true,	-- Lush Orange Illicium (q:78565 & q:78986)
	[416950] = true,	-- Ore Fragment (q:78463)
	[417136] = true,	-- Intriguing Scrap (q:79205)
	[417137] = true,	-- Intriguing Scrap (q:79205)
	[417138] = true,	-- Intriguing Scrap (q:79205)
	[417280] = true,	-- Tomothy's Lamp (q:79109)
	[417311] = true,	-- Climbing Rope (q:82699)
	[419657] = true,	-- Abandoned Tools
	[419696] = true,	-- Waxy Lump
	[420090] = true,	-- Massive Remnant
	[421070] = true,	-- Remnent Satchel
	[421903] = true,	-- Earthen Console (q:78761)
	[422537] = true,	-- Rope Ladder (q:78630)
	[434001] = true,	-- Pilfered Supplies (q:80513)
	[422154] = true,	-- Brann's Cozy Campfire
	[423714] = true,	-- Duskstem Stalk
	[425875] = true,	-- Nerubian Explosive Cache (q:78555)
	[426994] = true,	-- Whispering Explosives (delve objective)
	[452948] = true,	-- Hallowfall Farm Supplies
	[453968] = true,	-- Torch (q:82583)
	[428699] = true,	-- Sizzling Barrel (q:79205)
	[433369] = true,	-- War Supply Chest
	[433370] = true,	-- War Supply Chest
	[434861] = true,	-- Ever-Blossoming Fungi
	[437195] = true,	-- Titan Artifact @ 79.3, 29, 2248 (q:81465)
	[437758] = true,	-- Alliance Weapon Rack (q:82153)
	[437761] = true,	-- Supplies (q:82153)
	[438038] = true,	-- Venomancy Flask (q:81505)
	[439314] = true,	-- Camp Supplies
	[439342] = true,	-- Arathi Crate (q:81620)
	[441181] = true,	-- Research Cache (q:81908)
	[441225] = true,	-- Deepwalker Crate (q:81908)
	[441966] = true,	-- Moldy Chest
	[443754] = true,	-- Earthen Coffer
	[444105] = true,	-- Escape Rope (q:81691)
	[444798] = true,	-- Arathi Treasure Hoard
	[444799] = true,	-- Potent Concentrated Shadow
	[444800] = true,	-- Sureki Strongbox
	[444801] = true,	-- Brimming Arathi Treasure Hoard
	[444802] = true,	-- Kobyss Ritual Cache
	[444804] = true,	-- Concentrated Shadow
	[444866] = true,	-- Overflowing Kobyss Ritual Cache
	[445609] = true,	-- Portal to the Surface
	[446146] = true,	-- Recovered Nightfall Relics [Rasha'nan]
	[446357] = true,	-- Chest of Dynamite (q:82615)
	[446366] = true,	-- The Great Vault
	[446495] = true,	-- Pile of Refuse
	[446496] = true,	-- Enormous Pile of Refuse
	[449528] = true,	-- Opal-Mining Tools
	[451579] = true,	-- Used Fuel Drum (Ringing Deeps)
	[451830] = true,	-- Heavy Trunk
	[452690] = true,	-- Alhainr's Skull (q:83162)
	[452696] = true,	-- Machine Speaker's Reliquary
	[452697] = true,	-- Etched Machine Speaker's Reliquary
	[452706] = true,	-- Deep-Lost Satchel
	[452710] = true,	-- Brimming Deep-Lost Satchel
	[452893] = true,	-- Kaja'mite Stockpile
	[452923] = true,	-- Chillburst Canister (q:83148)
	[452972] = true,	-- Fallow Corn
	[454311] = true,	-- Redberry
	[454312] = true,	-- Redberry
	[455759] = true,	-- Hulking Raptorial Claw
	[456665] = true,	-- Ore Sample
	[456781] = true,	-- Darkfuse Safe
	[457143] = true,	-- Kaja'Cola Can
	[457144] = true,	-- Abandoned Pickaxe
	[457154] = true,	-- Kaja'Cola Can
	[457181] = true,	-- Interesting Notes @ 39, 51.3, 2369 / 67.3, 61.1, 2369 (q:83932)
	[457287] = true,	-- Essence of Death (q:83641)
	[457291] = true,	-- Skull (q:83641)
	[457292] = true,	-- Essence of Death (q:83641)
	[461478] = true,	-- For Rent Sign
	[461482] = true,	-- Hidden Trove
	[461540] = true,	-- Leftover Costume
	[462533] = true,	-- Spare Excavation Rocket
	[464146] = true,	-- Blue Floristar (q:84465)
	[464729] = true,	-- Bountiful Heavy Trunk
	[464761] = true,	-- Bountiful Heavy Trunk
	[465064] = true,	-- Old Scroll
	[465067] = true,	-- Faded Pages
	[465208] = true,	-- Crystal Chunk (q:84430)
	[466576] = true,	-- Super Carrots (q:84454)
	[466704] = true,	-- Crate of Produce (q:84454)
	[466810] = true,	-- Void Cleft (q:84834)
	[467435] = true,	-- Zaranit Bud (q:84883)
	[467447] = true,	-- G.E.T.A. Needs You! (q: 84885)
	[469475] = true,	-- Stolen Barrier Projector (q:84959)
	[469857] = true,	-- Overflowing Dumpster
	[469858] = true,	-- Shiny Trash Can
	[469860] = true,	-- Blue Floristars (q:84465)
	[469867] = true,	-- Blue Floristars (q:84465)
	[469901] = true,	-- Void Glass Node (q:84972)
	[473920] = true,	-- Void-infused Shard (q:84974)
	[473943] = true,	-- Salvageable Scrap (q:85051)
	[474030] = true,	-- Salvageable Scrap (q:85051)
	[474033] = true,	-- Salvageable Scrap (q:85051)
	[474043] = true,	-- Gorgoa Reed (q:84944)
	[474084] = true,	-- Salvageable Scrap (q:85051)
	[474086] = true,	-- Salvageable Scrap (q:85051)
	[474813] = true,	-- Camp Ledger (q:85151)
	[474815] = true,	-- Weapon Rack (q:85151)
	[474817] = true,	-- Storage Battery (q:85151)
	[474147] = true,	-- Portal to K'aresh (q:85082)
	[474242] = true,	-- Portal to Stormsong Valley
	[474359] = true,	-- Sauced Crab (q:84467)
	[474822] = true,	-- Runed Storm Cache (Treasure)
	[475190] = true,	-- Supply Crate (q:84704)
	[475252] = true,	-- Survey Device (q:84252)
	[475290] = true,	-- Survey Device (q:84252)
	[475292] = true,	-- Survey Device (q:84252)
	[475314] = true,	-- Pricklebloom (q:85256, 87291, 89221)
	[475317] = true,	-- K'aresh Bellflower (q:85256, 87291, 89221)
	[475321] = true,	-- Crystalbloom (q:85256, 87291, 89221)
	[475324] = true,	-- Firebud (q:85256, 87291, 89221)
	[475990] = true,	-- Junk Pile
	[477249] = true,	-- Stolen Supplies (q:84761)
	[478435] = true,	-- Waiting Garbage Can (q:85514)
	[478436] = true,	-- Waiting Garbage Can (q:85514)
	[478437] = true,	-- Waiting Garbage Can (q:85514)
	[478438] = true,	-- Waiting Garbage Can (q:85514)
	[478443] = true,	-- Mislaid Curiosity (delve object)
	[478744] = true,	-- Mislaid Curiosity (delve object)
	[478679] = true,	-- Salvage Part
	[479594] = true,	-- Depleted Hotrod Battery
	[483713] = true,	-- Watering Jug  (wq:85460)
	[487825] = true,	-- Ruffled Pages (q:85589)
	[494499] = true,	-- Seafarer's Cache
	[495091] = true,	-- Improvised Explosive
	[495148] = true,	-- Glyph of Jab
	[495583] = true,	-- Missing Shipment (wq:85812)
	[495603] = true,	-- Loose Sand (wq:85822)
	[495605] = true,	-- Sealed Coffer (wq:85822)
	[499054] = true,	-- Alleria's Void Portal (q:85151)
	[499099] = true,	-- Entropic Egg (wq:84962)
	[499258] = true,	-- Ancestral K'areshi Relic (q:85184)
	[499259] = true,	-- Ancestral K'areshi Relic (q:85184)
	[499260] = true,	-- Ancestral K'areshi Relic (q:85184)
	[499261] = true,	-- Ancestral K'areshi Relic (q:85184)
	[499620] = true,	-- Runed Storm Cache @ 68.4, 73.8, 2369 (q:84726)
	[499863] = true,	-- Runed Storm Cache @ 39.4, 20.1, 2369 (q:84726)
	[499928] = true,	-- Darkfuse Research Notes
	[499949] = true,	-- Stolen Research Crate (q:85730)
	[500095] = true,	-- Powdered De-Pollutant
	[500096] = true,	-- Unseemly Growth
	[500203] = true,	-- Resold Goods
	[500407] = true,	-- Runed Storm Cache (Treasure)
	[500581] = true,	-- Container of Highly Profitable Sludge
	[500582] = true,	-- Crate of Somewhat Profitable Sludge
	[500583] = true,	-- Box of Lightly Profitable Sludge
	[500591] = true,	-- Firebud (q:86196)
	[500640] = true,	-- Metal Scrap (q:86274)
	[500682] = true,	-- Seafarer's Cache
	[500683] = true,	-- Seafarer's Cache
	[500684] = true,	-- Seafarer's Cache
	[500685] = true,	-- Seafarer's Cache
	[500686] = true,	-- Seafarer's Cache
	[500705] = true,	-- Portal to Mmarl (q:86186)
	[500744] = true,	-- Rak-ush Mushroom (q:86188)
	[500844] = true,	-- Portal to K'aresh (q:86191)
	[502532] = true,	-- Charged Battery
	[503044] = true,	-- Ultra-Pasteurized Flesh Substitute
	[503050] = true,	-- Complainer Container 9000
	[503056] = true,	-- Customer Retrival Harpoons
	[503220] = true,	-- Weapon Rack (wq:86395)
	[503329] = true,	-- Corroded Plaque
	[503440] = true,	-- Discarded Goods
	[503450] = true,	-- Chunk of Charged Glass
	[503465] = true,	-- Barrels of Tar
	[503868] = true,	-- Nemesis Strongbox
	[503869] = true,	-- Nemesis Strongbox
	[503870] = true,	-- Nemesis Strongbox
	[503871] = true,	-- Nemesis Strongbox
	[504093] = true,	-- Web Bomb
	[504181] = true,	-- Fallen Log (q:86356)
	[504195] = true,	-- Web Bomb
	[504225] = true,	-- Portal to K'aresh (q:86359)
	[505258] = true,	-- Pestilential Necroray (q:86589)
	[504311] = true,	-- Lifeblood Crystal
	[505191] = true,	-- Portal to Maldraxxus (q:86587)
	[506498] = true,	-- Gilded Stash
	[506525] = true,	-- Plundered Artifacts
	[506640] = true,	-- Faded Journal Page @ 39.3, 54.2, 2369 (q:85571)
	[506696] = true,	-- Buried Treasure
	[507026] = true,	-- Portal to K'aresh (q:86593)
	[507470] = true,	-- Tool Rack (wq:86800)
	[507768] = true,	-- Jettisoned Pile of Goblin-Bucks
	[507867] = true,	-- Soggy Journal Page @ 51.4, 75.8, 2369 (q:85571)
	[507868] = true,	-- Stained Journal Page @ 55.8, 14.7, 2369 (q:85571)
	[507869] = true,	-- Torn Journal Page @ 46.1, 47.1, 2369 (q:85571)
	[507870] = true,	-- Weathered Journal Page @ 71, 59.2, 2369 (q:85571)
	[508366] = true,	-- Pile of Unsorted Trash (q:85888)
	[508727] = true,	-- Partially-Drained Battery
	[509461] = true,	-- Sealed Chest (q:84762)
	[509463] = true,	-- Stolen Coffer (q:84762)
	[509464] = true,	-- Sealed Chest (q:84762)
	[510772] = true,	-- Weighty Variable Rod (q:87010)
	[516163] = true,	-- Half-Empty Bag
	[516296] = true,	-- Sureki Cage (Nightfall)
	[516302] = true,	-- Pricklebloom
	[516304] = true,	-- Lustrous Conker (q:87291, 89221)
	[516444] = true,	-- Ethereal Pocket-Storage
	[516465] = true,	-- Weighty Variable Rod (q:87010)
	[516571] = true,	-- Broker Exchequer
	[516626] = true,	-- Phase-Lost Pocket-Storage
	[516700] = true,	-- Oasis Animal Leavings (q:87337)
	[516757] = true,	-- Voidbane Stash
	[516836] = true,	-- Voidbane Gem
	[516994] = true,	-- Tazavesh Trash (q:87376)
	[516995] = true,	-- Tazavesh Trash (q:87376)
	[517000] = true,	-- Tazavesh Trash (q:87376)
	[517389] = true,	-- Zo'kita Fruit (q:87420)
	[517405] = true,	-- Tazavesh Trash (q:87426)
	[517407] = true,	-- Tazavesh Trash (q:87426)
	[517410] = true,	-- Tazavesh Trash (q:87426)
	[517672] = true,	-- Emergency Exit (qs: 75874, 83121, 83123, 84121)
	[517225] = true,	-- Timewarped Starlight Rose
	[518640] = true,	-- Lightspire Spear
	[519856] = true,	-- Stolen Veilshard (q:87548)
	[522157] = true,	-- Bomb Pile (Nightfall)
	[523378] = true,	-- Portal to Nagrand
	[523409] = true,	-- Shiny Trash Can
	[523414] = true,	-- Snake Nest (q:88658)
	[523415] = true,	-- Fragrant Dreaming Glory (q:88658)
	[523491] = true,	-- Desolate Deposit
	[523494] = true,	-- Marsh Moss (q:88657)
	[523499] = true,	-- Marsh Moss (q:88657)
	[523512] = true,	-- Rich Desolate Deposit
	[523516] = true,	-- Portal to the Atrium
	[523535] = true,	-- Torch (Nightfall)
	[523615] = true,	-- Fragrant Dreaming Glory (q:88658)
	[523689] = true,	-- Mossy Snake Bed (q:88666)
	[523752] = true,	-- Medical Supplies
	[523828] = true,	-- Extra Cushiony Moss (q:88669, 88981)
	[523829] = true,	-- Cozy Heat Lamp (q:88669, 88981)
	[524223] = true,	-- K'arroc Egg (q:88671)
	[524348] = true,	-- Snake Egg (q:88672)
	[525100] = true,	-- Fragrant Dreaming Glory q(88669, 88981)
	[525110] = true,	-- Stove
	[525189] = true,	-- Portal to the Oasis
	[526951] = true,	-- Challenger's Cache (Operation: Floodgate)
	[526959] = true,	-- Challenger's Cache (Priory of the Sacred Flame)
	[526962] = true,	-- Challenger's Cache (The Dawnbreaker)
	[526963] = true,	-- Challenger's Cache (Ara'kara, City of Echoes)
	[526972] = true,	-- Challenger's Cache (Tazavesh, the Veiled Market - Streets)
	[526977] = true,	-- Challenger's Cache (Tazavesh, the Veiled Market - Gambit)
	[526979] = true,	-- Challenger's Cache (Halls of Atonement)
	[526980] = true,	-- Challenger's Cache (Eco-Dome Al'dani)
	[527488] = true,	-- Phantom Bloom
	[527489] = true,	-- Lush Phantom Bloom
	[528074] = true,	-- Missing Voidband (q:89505)
	[528080] = true,	-- Missing Token Box (q:89505)
	[528082] = true,	-- Missing Luggage (q:89505)
	[528283] = true,	-- Vesto's Stolen Goods (q:89505)
	[528084] = true,	-- Missing Scrolls (q:89505)
	[528358] = true,	-- Uncharged Crystal
	[529289] = true,	-- Spore Sample (q:88711)
	[531961] = true,	-- Untethered Xy'bucha
	[532495] = true,	-- Healing Salve
	[536065] = true,	-- Nuts and Bolts
	[536867] = true,	-- Swoopwing Eggs (q:90773)
	[537690] = true,	-- Prosperity Pebble (q:90770)
	[540500] = true,	-- Brewfest Resources
	[543115] = true,	-- Funny Candle
	[543116] = true,	-- Funny Candle
	[547532] = true,	-- Ky'veza's Etheric Cache
	[549326] = true,	-- Phase-Lost Exchequer
	[549348] = true,	-- Stove
	[549986] = true,	-- Energy Barrel
	[549999] = true,	-- Energy Urn
	[550001] = true,	-- Energy Pyramid
	[555609] = true,	-- Cartel Ba Dead Drop
	[562348] = true,	-- Spoils of the Nexus-King
	[566768] = true,	-- Cache of the Deathless
	[567732] = true,	-- Kaja'6-Pack
	[574460] = true,	-- Replica Twin Blades of Azzinoth
	[578955] = true,	-- Flickering Spoils
	[578956] = true,	-- Shadowed Flickering Spoils
	[612274] = true,	-- Portal to K'aresh (q:85002)
}

local ReturnEmptyFunctionMeta = { __index = function() return app.ReturnFalse end}
local EmptyFunctionTable = setmetatable({}, ReturnEmptyFunctionMeta)
local ReturnEmptyTableMeta = { __index = function() return EmptyFunctionTable end}
local IgnoredChecksByType = setmetatable({
	Item = setmetatable({
		coord = app.ReturnTrue,
		provider = app.ReturnTrue,
	}, ReturnEmptyFunctionMeta),
	Player = setmetatable({
		coord = app.ReturnTrue,
		provider = app.ReturnTrue
	}, ReturnEmptyFunctionMeta),
	Creature = setmetatable({
		coord = function(id) return MobileDB.Creature[id] end,
	}, ReturnEmptyFunctionMeta),
	GameObject = setmetatable({
		coord = function(id) return MobileDB.GameObject[id] end,
	}, ReturnEmptyFunctionMeta),
	Vehicle = setmetatable({
		coord = app.ReturnTrue,
	}, ReturnEmptyFunctionMeta),
}, ReturnEmptyTableMeta)

local GuidTypeProviders = {
	Item = "i",
	GameObject = "o",
	Creature = "n",
}

local ProviderTypeChecks = {
	n = function(objID, objRef, providers, providerID, reportData)
		-- app.PrintDebug("Check.n",objID,providerID,app:SearchLink(objRef))
		-- app.PrintTable(providers)
		-- app.PrintTable(objRef.qgs)
		local found
		-- n providers are turned into qgs on quest objects
		local qgs = objRef.qgs
		if qgs then
			for _,qg in ipairs(qgs) do
				if qg == providerID then found = 1 break end
			end
		end
		if not found and providers then
			for _,provider in ipairs(providers) do
				if provider[1] == "n" and provider[2] == providerID then found = 1 break end
			end
		end
		if not found then
			local questParent = objRef.parent
			-- this quest is listed directly under an NPC then compare that NPCID
			-- e.g. Garrison NPCs Bronzebeard/Saurfang
			if questParent and questParent.__type == "NPC" and questParent.npcID == providerID then
				found = 1
			end
		end
		if not found then
			reportData.MissingProvider = "Missing Quest Giver!"
			AddReportData(objRef.__type,objID,reportData)
		end
	end,
	o = function(objID, objRef, providers, providerID, reportData)
		if not providers then
			reportData.MissingProvider = "Missing Object Provider!"
			AddReportData(objRef.__type,objID,reportData)
			return
		end
		local found
		for _,provider in ipairs(providers) do
			if provider[1] == "o" and provider[2] == providerID then found = 1 break end
		end
		if not found then
			reportData.MissingProvider = "Missing Object Provider!"
			AddReportData(objRef.__type,objID,reportData)
		end
	end,
	-- TODO: Items are weird, maybe handle eventually
	-- i = function(objID, objRef, providers, providerID)
	-- end,
}

local function Check_providers(objID, objRef, providerType, id, reportData)
	local providerTypeCheck = ProviderTypeChecks[providerType]
	if providerTypeCheck then
		providerTypeCheck(objID, objRef, objRef.providers, id, reportData)
	end
end

-- Add a check when interacting with a Quest Giver NPC to verify coordinates of the related Quest
local function OnQUEST_DETAIL(...)
	-- local questStartItemID = ...;
	local questID = GetQuestID();
	-- app.PrintDebug("Contributor.OnQUEST_DETAIL",questID,...)
	if questID == 0 then return end

	-- only check logic when the player is not actually on this quest
	if C_QuestLog_IsOnQuest(questID) then return end

	-- also skip the check if somehow this quest was just turned in but also fired a relevant event afterwards
	if app.MostRecentQuestTurnIns and app.MostRecentQuestTurnIns[1] == questID then
		app.PrintDebug(app.Modules.Color.Colorize("Contrib Check attempted on Turned In Quest!",app.Colors.LockedWarning),questID)
		return
	end

	-- don't check the same quest back to back (had cases where QUEST_DETAIL fires twice within 1ms for some reason?)
	if api.LastQUEST_DETAIL == questID then
		app.PrintDebug(app.Modules.Color.Colorize("Contrib Check attempted twice on Quest!",app.Colors.LockedWarning),questID)
		return
	end
	api.LastQUEST_DETAIL = questID

	local objRef = app.SearchForObject("questID", questID, "field") or app.CreateQuest(questID)
	-- app.PrintDebug("Contributor.OnQUEST_DETAIL.ref",objRef and objRef.hash)
	app.CheckInaccurateQuestInfo(objRef, "viewed")

	local guid = UnitGUID("questnpc") or UnitGUID("npc")
	local providerid, guidtype, _
	if not guid then
		app.print("No Quest check performed for Quest #", questID,"[GUID]")
		return
	end
	-- TODO: would need to be fixed for Item type
	guidtype, _, _, _, _, providerid = ("-"):split(guid)
	providerid = tonumber(providerid)
	if not providerid or not guidtype then
		-- app.print("Unknown Quest Provider",guidtype,providerid,"during Contribute check!")
		if not IgnoredChecksByType[guidtype].provider() then
			app.print("No Quest check performed for Quest #", questID,"[ProviderID]")
		end
		return
	end
	local providerType = GuidTypeProviders[guidtype]
	app.PrintDebug(guidtype,providerid,app.GetNameFromProvider(providerType, providerid)," => Quest #", questID)

	local questData = BuildGenericReportData(objRef, questID)
	questData.provider = providerid..", -- "..(app.GetNameFromProvider(providerType, providerid)
		or (GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText()) or UNKNOWN)
	questData.providerType = providerType

	-- check coords
	if not IgnoredChecksByType[guidtype].coord(providerid) then
		local checkCoords = Check_coords(objRef)
		if not checkCoords then
			-- is this quest listed directly under an NPC which has coords instead? check that NPC for coords
			-- e.g. Garrison NPCs Bronzebeard/Saurfang
			local questParent = objRef.parent
			if questParent and questParent.__type == "NPC" then
				checkCoords = Check_coords(questParent)
				if not checkCoords then
					questData.MissingCoordsUnderNPC = "No Coordinates for this quest under NPC!"
					AddReportData(objRef.__type,questID,questData)
				elseif checkCoords == 1 then
					-- Check_coords did a report, so add more info for the quest parent
					AddReportData(questParent,questData)
				end
			else
				questData.MissingCoords = "No Coordinates for this quest!"
				AddReportData(objRef.__type,questID,questData)
			end
		elseif checkCoords == 1 then
			-- Check_coords did a report, so add more info
			AddReportData(objRef.__type,questID,questData)
		end
	end

	-- check provider
	if not IgnoredChecksByType[guidtype].provider(providerid) then
		Check_providers(questID, objRef, GuidTypeProviders[guidtype], providerid, questData)
	end
	-- app.PrintDebug("Contributor.OnQUEST_DETAIL.Done")
end
AddEventFunc("QUEST_DETAIL", OnQUEST_DETAIL)
AddEventFunc("QUEST_PROGRESS", OnQUEST_DETAIL)
AddEventFunc("QUEST_COMPLETE", OnQUEST_DETAIL)

-- PLAYER_SOFT_INTERACT_CHANGED
-- Whenever we can't find a ObjectID in ATT data, create a cached version of it so we can keep resolved data
-- instead of always generating new
local UnknownObjectsCache = setmetatable({}, { __index = function(t, objectID)
	local o = app.CreateObject(objectID)
	t[objectID] = o
	return o
end})
local LastSoftInteract = {}
local RegisterUNIT_SPELLCAST_SENT, UnregisterUNIT_SPELLCAST_SENT
-- Allows automatically tracking nearby ObjectID's and running check functions on them for data verification
local function OnPLAYER_SOFT_INTERACT_CHANGED(previousGuid, newGuid)
	-- app.PrintDebug("PLAYER_SOFT_INTERACT_CHANGED",previousGuid,newGuid)

	-- previousGuid == newGuid when the player distance becomes close enough to interact
	if not newGuid or previousGuid ~= newGuid then
		LastSoftInteract.GuidType = nil
		LastSoftInteract.ID = nil
		UnregisterUNIT_SPELLCAST_SENT()
		return
	end

	local id, guidtype, _
	guidtype, _, _, _, _, id = ("-"):split(newGuid)
	id = tonumber(id)
	LastSoftInteract.GuidType = guidtype
	LastSoftInteract.ID = id
	-- app.PrintDebug("Interact:",guidtype,id)

	-- only check object soft-interact (for now)
	if guidtype ~= "GameObject" then return end

	-- close enough to an object to open, track potential looting via mouseclick/interact for a few seconds
	RegisterUNIT_SPELLCAST_SENT(10)

	local objRef = app.SearchForObject("objectID", id)
	-- only check sourced objects
	if not objRef then return end
	-- app.PrintDebug("GameObject",app:SearchLink(objRef))

	-- check sourced object coords
	if not IgnoredChecksByType[guidtype].coord(id) then
		-- object auto-detect can happen from rather far, so using 2 distance
		local objID = objRef.keyval
		local checkCoords = Check_coords(objRef, 2)
		if not checkCoords then
			local reportData = {
				id = id,
				type = "Object",
			}
			reportData.MissingCoords = ("No Coordinates for this %s!"):format(objRef.__type)
			AddReportData(objRef.__type,objID,reportData)
		elseif checkCoords == 1 then
			-- no extra data to add for object detection
		end
	end
end
AddEventFunc("PLAYER_SOFT_INTERACT_CHANGED", OnPLAYER_SOFT_INTERACT_CHANGED)

-- UNIT_SPELLCAST_SENT
-- Allows handling some special logic in special cases for special spell casts
local SpellIDHandlers = setmetatable({
	-- Opening (on Objects)
	[6478] = function(source, dest)
		if source ~= "player" then return end

		-- Verify 'Opening' cast, report ObjectID if not Sourced
		local id = LastSoftInteract.ID
		if not id or IgnoredChecksByType.GameObject.coord(id) then return end

		local objRef = app.SearchForObject("objectID", id)
		-- if it's Sourced, we've already checked it via PLAYER_SOFT_INTERACT_CHANGED
		if objRef then return end

		local tooltipName = dest or (GameTooltipTextLeft1 and GameTooltipTextLeft1:GetText())
		objRef = UnknownObjectsCache[id]
		local objID = objRef.keyval
		-- report openable object
		local reportData = BuildGenericReportData(objRef, id)
		reportData.NotSourced = "Openable Object not Sourced!"
		reportData.Name = tooltipName or "(No Tooltip Text Available)"
		reportData.objectID = id
		AddReportData(objRef.__type,objID,reportData)
	end
}, { __index = function(t, key)
	if app.Debugging then
		return function(source, dest)
			if dest then
				app.PrintDebug(app.Modules.Color.Colorize("Object Interact SpellID", app.Colors.LockedWarning),key,source,dest)
			end
		end
	end
end})
-- Other 'Opening' spells
SpellIDHandlers[3365] = SpellIDHandlers[6478]
SpellIDHandlers[6247] = SpellIDHandlers[6478]
SpellIDHandlers[6477] = SpellIDHandlers[6478]

local RegisteredUNIT_SPELLCAST_SENT
local function OnUNIT_SPELLCAST_SENT(...)
	-- app.PrintDebug("UNIT_SPELLCAST_SENT",...)
	local source, dest, _, id = ...
	local spellHandler = SpellIDHandlers[id]
	if not spellHandler then return end

	spellHandler(source, dest)
	UnregisterUNIT_SPELLCAST_SENT()
end
UnregisterUNIT_SPELLCAST_SENT = function()
	if not RegisteredUNIT_SPELLCAST_SENT then return end
	-- app.PrintDebug("Unregister.UNIT_SPELLCAST_SENT")
	app:UnregisterEvent("UNIT_SPELLCAST_SENT")
	RegisteredUNIT_SPELLCAST_SENT = nil
end
RegisterUNIT_SPELLCAST_SENT = function(secTilRemove)
	if RegisteredUNIT_SPELLCAST_SENT then return end
	RegisteredUNIT_SPELLCAST_SENT = true
	-- app.PrintDebug("Register.UNIT_SPELLCAST_SENT",secTilRemove)
	app:RegisterFuncEvent("UNIT_SPELLCAST_SENT",OnUNIT_SPELLCAST_SENT)
	app.CallbackHandlers.DelayedCallback(UnregisterUNIT_SPELLCAST_SENT, secTilRemove or 0.5)
end

-- PLAYER_SOFT_TARGET_INTERACTION
-- Allows handling when the player succeeds in interacting with a soft-interact
-- This happens when the player presses the keybind while a soft-interact is active, but not necessarily when it's within range
local function OnPLAYER_SOFT_TARGET_INTERACTION()
	-- app.PrintDebug("PLAYER_SOFT_TARGET_INTERACTION",LastSoftInteract.GuidType,LastSoftInteract.ID)

	-- currently only track interacts on objects
	if LastSoftInteract.GuidType ~= "GameObject" then return end
	-- if ignore check on coords, then also ignore for unsourced
	if IgnoredChecksByType.GameObject.coord(LastSoftInteract.ID) then return end

	-- If the player attempts to interact, hook for spell cast start event
	RegisterUNIT_SPELLCAST_SENT()
end
AddEventFunc("PLAYER_SOFT_TARGET_INTERACTION", OnPLAYER_SOFT_TARGET_INTERACTION)

-- Contribution setup
local function Contribute(contrib)
	app.Contributor = contrib == 1 and true or nil
	AllTheThingsSavedVariables.Contributor = app.Contributor and 1 or 0
	local contribModule = app.Modules.Contributor or app.EmptyTable
	if app.Contributor then
		app.print("Thanks for helping to contribute to ATT! There may be additional chat and report sounds to help with finding additional discrepancies in ATT data.")
		if contribModule.Events then
			for event,func in pairs(contribModule.Events) do
				-- app.PrintDebug("Contribute.RegisterFuncEvent",event)
				app:RegisterFuncEvent(event,func)
			end
		end
	elseif app.IsReady then
		app.print("Not showing ATT contribution information.")
		if contribModule.Events then
			for event,func in pairs(contribModule.Events) do
				-- app.PrintDebug("Contribute.UnregisterEventClean",event)
				app:UnregisterEventClean(event)
			end
		end
	end
end
-- Allows a user to use /att contribute
-- to opt-in/out of seeing additional reporting/chat/sound functionality to help with refining ATT data
app.ChatCommands.Add("contribute", function(args)
	Contribute(not app.Contributor and 1)
	return true
end, {
	"Usage : /att contribute"
})
app.AddEventHandler("OnReady", function()
	Contribute(AllTheThingsSavedVariables.Contributor)
end)
