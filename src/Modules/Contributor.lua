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
	if fake then
		return UNKNOWN..", "..UNKNOWN..", "..tostring(mapID or UNKNOWN).." ("..(app.GetMapName(mapID) or "??")..")"
	end
	-- floor coords to nearest tenth
	if px then px = round(px, 1) end
	if py then py = round(py, 1) end
	return tostring(px or UNKNOWN)..", "..tostring(py or UNKNOWN)..", "..tostring(mapID or UNKNOWN).." ("..(app.GetMapName(mapID) or "??")..")"
end

local function DoReport(reporttype, id)
	local dialogID = reporttype.."_"..id
	-- app.PrintDebug("Contributor.DoReport",reporttype,id)

	local reportData = Reports[reporttype][id]
	-- keyed report data
	local keyedData = {}
	for k,v in pairs(reportData) do
		keyedData[#keyedData + 1] = tostring(k)..": \""..tostring(v).."\""
	end
	-- common report data
	reportData[#reportData + 1] = "### "..reporttype..":"..id
	reportData[#reportData + 1] = "```elixir"	-- discord fancy box start
	for _,text in pairs(keyedData) do
		reportData[#reportData + 1] = text
	end
	-- common report data
	reportData[#reportData + 1] = "---- User Info ----"
	reportData[#reportData + 1] = "PlayerLocation: "..GetReportPlayerLocation()
	reportData[#reportData + 1] = "L:"..app.Level.." R:"..app.RaceID.." ("..app.Race..") C:"..app.ClassIndex.." ("..app.Class..")"
	reportData[#reportData + 1] = "ver: "..app.Version
	reportData[#reportData + 1] = "build: "..app.GameBuildVersion
	reportData[#reportData + 1] = "```";	-- discord fancy box end

	if app:SetupReportDialog(dialogID, "Contributor Report: " .. dialogID, reportData) then
		app.print(app:Linkify("Contributor Report: "..dialogID, app.Colors.ChatLinkError, "dialog:" .. dialogID));
		app.Audio:PlayReportSound();
	end

	-- due to complications with multiple reports in one session of one object, we will only support
	-- the first report of a given ID for now
	reportData.REPORTED = true
end

local function AddReportData(reporttype, id, data)
	-- app.PrintDebug("Contributor.AddReportData",reporttype,id)
	-- app.PrintTable(data)
	local reportData = Reports[reporttype][id]
	if reportData.REPORTED then app.PrintDebug("Duplicate Report Ignored",reporttype,id) return end

	if type(data) == "table" then
		for k,v in pairs(data) do
			reportData[k] = v
		end
	else
		reportData[#reportData + 1] = tostring(data)
	end
	-- after adding data for a report, we will trigger that report shortly afterwards in case more data is added elsewhere within
	-- that timeframe
	DelayedCallback(DoReport, 0.25, reporttype, id)
end

api.DoReport = function(id, text)
	AddReportData("test", id, text)
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
	 [629] = 3,	-- Aegwynn's Gallery
	[1164] = 3,	-- Dazar'alor
	[1176] = 3,	-- Breath Of Pa'ku
	[1177] = 3,	-- Breath Of Pa'ku
	[1699] = 3,	-- Sinfall
	[1700] = 3,	-- Sinfall
	[1912] = 10,	-- The Runecarver's Oubliette
	[2328] = 3,	-- The Proscenium
}

local function Check_coords(objRef, id, maxCoordDistance)
	-- check coord distance
	local mapID, px, py, fake = app.GetPlayerPosition()
	-- fake player coords (instances, etc.) cannot be checked
	if fake then return true end

	if not objRef then return end
	local coords = app.GetRelativeValue(objRef, "coords")
	if not coords then return end

	local relCoords = not objRef.coords
	local dist, sameMap, check
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
			-- round to the tenth
			closest = round(closest, 1)
			AddReportData(objRef.__type,id,{
				[objRef.key or "ID"] = id,
				VerifyOrAddCoords = ("Closest %s Coordinates are off by: %d on mapID: %d"):format(relCoords and "relative" or "existing", closest, mapID),
			})
			check = 1
		end
	else
		AddReportData(objRef.__type,id,{
			[objRef.key or "ID"] = id,
			MissingMap = "No Coordinates on current Map!",
		})
		check = 1
	end
	return check or true
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
	 [14626] = true,	-- Taskmaster Scrange
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
	 [22818] = true,	-- Draenei Orphan
	 [23870] = true,	-- Ember Clutch Ancient
	 [26206] = true,	-- Keristrasza
	 [29795] = true,	-- Kolitra Deathweaver (Orgrim's Hammer)
	 [30137] = true,	-- Shift Vickers
	 [30216] = true,	-- Vile
	 [32971] = true,	-- Ranger Glynda Nal'Shea
	 [33276] = true,	-- Moon Priestess Maestra
	 [33533] = true,	-- Oracle Orphan
	 [33777] = true,	-- Gaivan Shadewalker
	 [34653] = true,	-- Bountiful Table Hostess
	 [37172] = true,	-- Detective Snap Snagglebolt
	 [38255] = true,	-- Maximillian of Northshire
	 [38274] = true,	-- Garl Stormclaw
	 [38275] = true,	-- Gremix <Treasure Hunter>
	 [38276] = true,	-- Tara
	 [38277] = true,	-- Doreen
	 [38066] = true,	-- Inspector Snip Snagglebolt
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
	 [45451] = true,	-- Argus Highbeacon
	 [45574] = true,	-- Vex'tul
	 [45736] = true,	-- Deacon Andaal
	 [46664] = true,	-- Dr. Hieronymus Blam
	 [47280] = true,	-- Lunk
	 [47332] = true,	-- Lunk
	 [48346] = true,	-- John J. Keeshan
	 [52234] = true,	-- Bwemba
	 [52980] = true,	-- Kil'karil
	 [55497] = true,	-- Zin'Jun
	 [64337] = true,	-- Nomi
	 [67153] = true,	-- Zin'Jun
	 [67976] = true,	-- Tinkmaster Overspark
	 [75968] = true,	-- Iron Shredder Prototype
	 [77367] = true,	-- Archmage Kem
	 [77789] = true,	-- Blingtron 5000
	 [79815] = true,	-- Grun'lek
	 [79836] = true,	-- Gez'la
	 [79867] = true,	-- Orgek Ironhand <Blacksmith>
	 [83858] = true,	-- Khadgar's Servant
	 [84247] = true,	-- Lumber Lord Oktron <Work Orders>
	 [85414] = true,	-- Alexi Barov
	 [86629] = true,	-- Raza'kul
	 [86677] = true,	-- Kuros
	 [86682] = true,	-- Retired Gorian Centurion(Tormmok)
	 [86806] = true,	-- Ancient Trading Mechanism
	 [86927] = true,	-- Stormshield Death Knight(Delvar Ironfist)
	 [86933] = true,	-- Warspear Magus(Vivianne)
	 [86934] = true,	-- Sha'tari Defender(Defender Illona)
	 [86945] = true,	-- Sunsworn Warlock(Aeda Brightdawn)
	 [86946] = true,	-- Outcast Talonpriest(Talonpriest Ishaal)
	 [86964] = true,	-- Bloodmane Earthbinder(Leorajh)
	 [86979] = true,	-- Tormak the Scarred <Stable Master>
	 [87206] = true,	-- Ancient Trading Mechanism
	 [87242] = true,	-- Sage Paluna
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
	 [90474] = true,	-- Kor'vas Bloodthorn
	 [96038] = true,	-- Rivermane Shaman
	[101527] = true,	-- Blingtron 6000
	[105637] = true,	-- Scowling Rosa <Texts and Specialty Goods>
	[113686] = true,	-- Archmage Khadgar
	[115785] = true,	-- Direbeak Hatchling
	[117292] = true,	-- Navarrogg
	[117475] = true,	-- Lord Darius Crowley
	[126576] = true,	-- Razgaji (You can accept quests as he's walking back to his start position)
	[129514] = true,	-- Warguard Rakera
	[129655] = true,	-- Boss Tak
	[130474] = true,	-- Reckless Vulpera (Nisha)
	[133302] = true,	-- Wardruid Loti
	[141602] = true,	-- Thomas Zelling
	[145005] = true,	-- Lor'themar Theron
	[145394] = true,	-- Liam
	[146462] = true,	-- Rexxar
	[146536] = true,	-- Lost Wisp
	[145707] = true,	-- Advisor Belgrum
	[146937] = true,	-- Dark Ranger Lyana
	[150202] = true,	-- Hunter Akana
	[151300] = true,	-- Neri Sharpfin
	[153897] = true,	-- Blingtron 7000
	[156179] = true,	-- Gila Crosswires <Tinkmaster's Assistant>
	[158544] = true,	-- Lord Herne
	[158635] = true,	-- Xolartios <Eternal Traveler>
	[161261] = true,	-- Kael'thas Sunstrider
	[161427] = true,	-- Kael'thas Sunstrider
	[161431] = true,	-- Kael'thas Sunstrider
	[161436] = true,	-- Kael'thas Sunstrider
	[161439] = true,	-- Kael'thas Sunstrider
	[162476] = true,	-- Ta'eran
	[164965] = true,	-- Prince Renathal (Ember Court)
	[168432] = true,	-- Ve'rayn <Assets and Liabilities>
	[172854] = true,	-- Dredger Butler
	[181085] = true,	-- Stratholme Supply Crate
	[185749] = true,	-- Gnoll Mon-Ark
	[191494] = true,	-- Khanam Matra Sarest
	[193985] = true,	-- Initiate Zorig
	[197915] = true,	-- Lindormi
	-- #if BEFORE 10.2.7
	[205127] = true,	-- Newsy
	-- #endif
	[209681] = true,	-- Squally
	[211444] = true,	-- Flynn Fairwind
	[213560] = true,	-- Inspector Snip Snagglebolt
	[214707] = true,	-- Detective Snap Snagglebolt
	[214890] = true,	-- Magni Bronzebeard
	[214892] = true,	-- Dagran Thaurissan II
	[215597] = true,	-- Alleria Winderunner
	[220307] = true,	-- Holiday Enthusiast
	[220859] = true,	-- Amy Lychenstone
	[221492] = true,	-- Baron Sybaestan Braunpyke
	[221539] = true,	-- Alleria Winderunner
	[221867] = true,	-- Mereldar Child
	[221980] = true,	-- Faerin Lothar
	[222239] = true,	-- Scrit
	[224618] = true,	-- Danagh's Cogwalker
	[226934] = true,	-- Jojo Gobdre
	[232660] = true,	-- Alleria Winderunner
	[235849] = true,	-- Fleet Master Seahorn
	[241593] = true,	-- Skibbles
	[241603] = true,	-- Threadis
	[241604] = true,	-- Destien
	[241605] = true,	-- Kitzy
}
-- These should be GameObjects which are mobile in that they can have completely variable coordinates in game
-- either by following the player or having player-based decisions that cause them to have any coordinates
-- but also quests objects that are not sourced elsewhere..
-- Legend: q - Quest, dq - Daily Quest, wq - World Quest, [A] - Alliance, [H] - Horde
MobileDB.GameObject = {
		[57] = true,	-- Bloodscalp Lore Tablet (q:26744)
	   [119] = true,	-- Abercrombie's Crate (q:26680)
	   [759] = true,	-- The Holy Spring (q:26817)
	  [1673] = true,	-- Fel Cone (q:489)
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
	  [3659] = true,	-- Barrel of Melon Juice
	  [3695] = true,	-- Food Crate
	  [4608] = true,	-- Timberling Sprout (q:919)
	 [17155] = true,	-- Large Battered Chest (Deadmines)
	 [17282] = true,	-- Bathran's Hair (q:26473)
	 [17783] = true,	-- Ancient Statuette (q:26465)
	 [19015] = true,	-- Soot-Covered Elune's Tear (q:26475)
	 [19018] = true,	-- Giant Clam (BFD)
	 [19019] = true,	-- Box of Assorted Parts
	 [19020] = true,	-- Box of Assorted Parts
	 [22550] = true,	-- Draenethyst Crystals (q:27840)
	 [30854] = true,	-- Atal'ai Artifact (q:27694)
	 [30855] = true,	-- Atal'ai Artifact (q:27694)
	 [30856] = true,	-- Atal'ai Artifact (q:27694)
	 [74448] = true,	-- Large Solid Chest
	 [75298] = true,	-- Large Solid Chest
	[113768] = true,	-- Brightly Colored Egg
	[113769] = true,	-- Brightly Colored Egg
	[113770] = true,	-- Brightly Colored Egg
	[113771] = true,	-- Brightly Colored Egg
	[143981] = true,	-- Brightly Colored Egg
	[148499] = true,	-- Felix's Box (q:3361)
	[153464] = true,	-- Large Solid Chest
	[164658] = true,	-- Blue Power Crystal
	[164659] = true,	-- Green Power Crystal
	[164660] = true,	-- Red Power Crystal
	[164661] = true,	-- Yellow Power Crystal
	[164778] = true,	-- Blue Power Crystal
	[164779] = true,	-- Green Power Crystal
	[164780] = true,	-- Red Power Crystal
	[164958] = true,	-- Bloodpetal Sprout
	[169243] = true,	-- Chest of The Seven (BRD)
	[176208] = true,	-- Horgus' Skull (q:27387)
	[176209] = true,	-- Shattered Sword of Marduk (q:27387)
	[176224] = true,	-- Supply Crate (Stratholme)
	[176248] = true,	-- Premium Grimm Tobacco (q:27192)
	[176751] = true,	-- Kodo Bones (q:5501)
	[176752] = true,	-- Kodo Bones (q:5501)
	[177789] = true,	-- Augustus' Receipt Book (q:27534)
	[178084] = true,	-- Felix's Chest (q:3361)
	[178144] = true,	-- Troll Chest (q:13874 [A], q:6462 [H])
	[179528] = true,	-- Warpwood Pod
	[179828] = true,	-- Dark Iron Pillow (q:28057)
	[179832] = true,	-- Pillamaster's Ornate Pillow (starts q:28058)
	[179922] = true,	-- Vessel of Tainted Blood (starts q:26524)
	[181687] = true,	-- Warsong Lumber Pile (q:13869)
	[181690] = true,	-- Fertile Dirt Mound (q:26446)
	[181916] = true,	-- Satyrnaar Fel Wood (q:26454)
	[182053] = true,	-- Glowcap
	[186903] = true,	-- Pirate Booty (q:25054)
	[192818] = true,	-- Infused Mushroom (q:13100, 13112)
	[192828] = true,	-- Crystalsong Carrot (q:13114)
	[194088] = true,	-- Highborne Relic (q:13505)
	[194089] = true,	-- Highborne Relic (q:13505)
	[194090] = true,	-- Highborne Relic (q:13505)
	[194100] = true,	-- Bear's Paw (q:13526)
	[194107] = true,	-- Encrusted Clam (q:13520)
	[194150] = true,	-- Jadefire Brazier (q:13572)
	[194204] = true,	-- Twilight Plans (q:13596)
	[194208] = true,	-- Fuming Toadstool (q:13598)
	[194209] = true,	-- Fuming Toadstool (q:13598)
	[194482] = true,	-- Horde Explosives (q:13698)
	[195002] = true,	-- Lava Fissure (q:13880)
	[195007] = true,	-- Slain Wildkin Feather (q:13578)
	[195012] = true,	-- Sunken Scrap Metal (q:13883)
	[195021] = true,	-- Glittering Shell (q:13882)
	[195042] = true,	-- Greymist Debris (q:13909)
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
	[195492] = true,	-- Kaja'mite Chunk (q:14124)
	[195519] = true,	-- Weapon Rack (q:14357)
	[195535] = true,	-- Bleached Skullpile (q:14364)
	[195601] = true,	-- Element 116 (q:14254)
	[195656] = true,	-- Ancient Tablet Fragment (q:14268)
	[195657] = true,	-- Ancient Tablet Fragment (q:14268)
	[195658] = true,	-- Ancient Tablet Fragment (q:14268)
	[195659] = true,	-- Ancient Tablet Fragment (q:14268)
	[195674] = true,	-- Aloe Thistle (q:14305)
	[195692] = true,	-- Cenarion Supply Crate (q:14316)
	[196395] = true,	-- Defiled Relic (q:14333)
	[201615] = true,	-- Ooze Release Valve (Rotface)
	[201616] = true,	-- Gas Release Valve (Festergut)
	[201733] = true,	-- Leaky Stove (q:14125)
	[201734] = true,	-- Flammable Bed (q:14125)
	[201735] = true,	-- Defective Generator (q:14125)
	[201974] = true,	-- Raptor Egg (q:24741)
	[201975] = true,	-- Tarblossom (q:24700)
	[201979] = true,	-- Un'Goro Coconut (q:24715)
	[202158] = true,	-- Discarded Supplies (q:24701)
	[202159] = true,	-- Discarded Supplies (q:24701)
	[202160] = true,	-- Discarded Supplies (q:24701)
	[202198] = true,	-- Steamwheedle Crate (q:25048)
	[202351] = true,	-- Rockin' Powder (q:24946)
	[202420] = true,	-- Ancient Hieroglyphs (q:25565)
	[202470] = true,	-- Bilgewater Footlocker (q:25062)
	[202552] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202553] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202554] = true,	-- Kaja'Cola Zero-One (q:25110)
	[202606] = true,	-- Stonetear (q:25396)
	[202609] = true,	-- Valve #1 (q:25204)
	[202610] = true,	-- Valve #2 (q:25204)
	[202611] = true,	-- Valve #3 (q:25204)
	[202612] = true,	-- Valve #4 (q:25204)
	[202793] = true,	-- Loose Soil (q:25422)
	[202956] = true,	-- Rocket Car Parts (q:25515)
	[202957] = true,	-- Rocket Car Parts (q:25515)
	[202958] = true,	-- Rocket Car Parts (q:25515)
	[202959] = true,	-- Rocket Car Parts (q:25515)
	[202960] = true,	-- Rocket Car Parts (q:25515)
	[202961] = true,	-- Rocket Car Parts (q:25515)
	[203071] = true,	-- Night Elf Archaeology Find
	[203090] = true,	-- Sunken Treasure Chest (q:25609)
	[203148] = true,	-- Horde Cage (q:25662)
	[203179] = true,	-- Sediment Deposit (q:25722)
	[203182] = true,	-- Fenberries (q:25725)
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
	[203762] = true,	-- Juicy Apple (q:26183)
	[203972] = true,	-- Fresh Dirt (q:26230)
	[203989] = true,	-- Ooze-coated Supply Crate (q:26492)
	[204087] = true,	-- Mosh'Ogg Bounty (q:26782)
	[204102] = true,	-- Shadraspawn Egg (q:26641)
	[204120] = true,	-- Cache of Shadra (q:26529)
	[204133] = true,	-- Cache of Shadra (q:26528)
	[204336] = true,	-- Naga Icon (q:26820)
	[204432] = true,	-- Lime Crate (q:26634)
	[204433] = true,	-- Bloodsail Cannonball (q:26635)
	[204817] = true,	-- Lightforged Rod (ends q:26725, starts q:26753)
	[204824] = true,	-- Lightforged Arch (ends q:26753, starts q:26722)
	[204826] = true,	-- Kurzen Compound Prison Records (q:26735)
	[204827] = true,	-- Kurzen Compound Officers' Dossier (q:26735)
	[205089] = true,	-- Stabthistle Seed (q:27025)
	[205092] = true,	-- Nascent Elementium (q:27077)
	[205216] = true,	-- Neptulon's Cache (Throne of the Tides)
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
	[207320] = true,	-- Hero's Call Board
	[207346] = true,	-- Moonpetal Lily (q:28724)
	[207472] = true,	-- Silverbound Treasure Chest
	[207473] = true,	-- Silverbound Treasure Chest
	[207474] = true,	-- Silverbound Treasure Chest
	[207476] = true,	-- Silverbound Treasure Chest
	[207484] = true,	-- Sturdy Treasure Chest
	[207485] = true,	-- Sturdy Treasure Chest
	[207486] = true,	-- Sturdy Treasure Chest
	[207487] = true,	-- Sturdy Treasure Chest
	[207488] = true,	-- Sturdy Treasure Chest
	[207489] = true,	-- Sturdy Treasure Chest
	[207498] = true,	-- Dark Iron Treasure Chest
	[207512] = true,	-- Silken Treasure Chest
	[207513] = true,	-- Silken Treasure Chest
	[207522] = true,	-- Maplewood Treasure Chest
	[207523] = true,	-- Maplewood Treasure Chest
	[207524] = true,	-- Maplewood Treasure Chest
	[207534] = true,	-- Runestone Treasure Chest
	[208545] = true,	-- Ash Pile (q:29139)
	[209273] = true,	-- Tonk Scrap (q:29518)
	[209274] = true,	-- Tonk Scrap (q:29518)
	[209275] = true,	-- Tonk Scrap (q:29518)
	[209276] = true,	-- Staked Skin (q:29519)
	[209283] = true,	-- Discarded Weapon (q:29510)
	[209284] = true,	-- Darkblossom (q:29514)
	[209287] = true,	-- Bit of Glass, (q:29516)
	[209366] = true,	-- Portal Energy Focus (Well of Eternity)
	[209447] = true,	-- Portal Energy Focus (Well of Eternity)
	[209448] = true,	-- Portal Energy Focus (Well of Eternity)
	[209506] = true,	-- Stolen Treats, (q:7043 [A], q:6983 [H])
	[216150] = true,	-- Horde Supply Crate (q:32144)
	[220908] = true,	-- Mist-Covered Treasure Chest
	[221689] = true,	-- Ripe Crispfruit
	[221690] = true,	-- Sand-Covered Egg
	[221763] = true,	-- Fire Poppy
	[222684] = true,	-- Glinting Sand
	[222685] = true,	-- Crane Nest
	[236262] = true,	-- Finalize Garrison Plot
	[236263] = true,	-- Finalize Garrison Plot
	[241726] = true,	-- Leystone Deposit
	[241743] = true,	-- Felslate Deposit
	[245324] = true,	-- Rich Leystone Deposit
	[245325] = true,	-- Rich Felslate Deposit
	[247072] = true,	-- Wax Ingot (q:41127)
	[247073] = true,	-- Wax Ingot (q:41127)
	[247074] = true,	-- Wax Ingot (q:41127)
	[247875] = true,	-- Boom Bait (q:41278)
	[249771] = true,	-- Heavy Stone (wq:42172)
	[250433] = true,	-- Felforge
	[253280] = true,	-- Leystone Seam
	[253992] = true,	-- Box of Trinkets (Eye of Azshara)
	[253993] = true,	-- Crusty Kvaldir Chest (Maw of Souls)
	[254003] = true,	-- Legion Cache (Vault of the Wardens)
	[255344] = true,	-- Felslate Seam
	[259764] = true,	-- Love Potion No. 13
	[268457] = true,	-- Lost Highborne Journal
	[269026] = true,	-- Ancient Gong
	[270040] = true,	-- Nearly-hatching Pterrordax Egg
	[270902] = true,	-- Weathered Shrine
	[270918] = true,	-- Soothing Lilybud (q:47259)
	[271014] = true,	-- Tarkaj's Warblade (q:47317)
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
	[272409] = true,	-- Message Rocket (q:47245)
	[272622] = true,	-- Cursed Treasure
	[272768] = true,	-- Empyrium Deposit
	[272778] = true,	-- Rich Empyrium Deposit
	[272780] = true,	-- Empyrium Seam
	[272782] = true,	-- Astral Glory
	[273443] = true,	-- Void-Seeped Cache
	[273537] = true,	-- Gravebloom (q:51787)
	[273660] = true,	-- Mysterious Trashpile
	[273679] = true,	-- Sethrak Cage
	[273836] = true,	-- Backpack (q:48585)
	[273837] = true,	-- Supply Pouch (q:48585)
	[275071] = true,	-- Small Treasure Chest (Tiragarde Sound)
	[275074] = true,	-- Small Treasure Chest (Tiragarde Sound)
	[275076] = true,	-- Small Treasure Chest (Tiragarde Sound)
	[275099] = true,	-- Saurolisk Egg
	[276236] = true,	-- Star Moss
	[276237] = true,	-- Akunda's Bite
	[276238] = true,	-- Winter's Kiss
	[276239] = true,	-- Siren's Sting
	[276240] = true,	-- Sea Stalks
	[276616] = true,	-- Monelite Deposit
	[276617] = true,	-- Storm Silver Deposit
	[276618] = true,	-- Platinum Deposit
	[276619] = true,	-- Monelite Seam
	[276620] = true,	-- Storm Silver Seam
	[276621] = true,	-- Rich Monelite Deposit
	[276622] = true,	-- Rich Stormsilver Deposit
	[276623] = true,	-- Rich Platinum Deposit
	[277336] = true,	-- Treasure Chest
	[277526] = true,	-- Freshly Dug Sand (q:49138)
	[277859] = true,	-- Jailer Cage (q:49286)
	[277876] = true,	-- Sethrak Cage (q:49334)
	[277899] = true,	-- Sethrak War Banner (q:49327)
	[277910] = true,	-- Sethrak Cage (q:50656)
	[278150] = true,	-- Pile of Wood (Warfronts)
	[278189] = true,	-- Nazeshi Cage
	[278336] = true,	-- Tortollan Traveling Pack (q:49284)
	[278349] = true,	-- Tortollan Scroll Case (q:49284)
	[278456] = true,	-- Treasure Chest (Zuldazar)
	[278459] = true,	-- Treasure Chest (Zuldazar)
	[278462] = true,	-- Treasure Chest (Zuldazar)
	[278685] = true,	-- Sethrak Skull (q:49676)
	[278694] = true,	-- Treasure Chest (Zuldazar)
	[278716] = true,	-- Treasure Chest (Zuldazar)
	[278795] = true,	-- Treasure Chest (Zuldazar)
	[279044] = true,	-- Zandalari Rushes
	[279293] = true,	-- Sweetleaf Bush
	[279346] = true,	-- Urn of Voices
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
	[288601] = true,	-- Inconspicuous Seaforium Bomb
	[288604] = true,	-- Treasure Chest (Zuldazar)
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
	[290842] = true,	-- Odoriferous Stew (q:51677)
	[290903] = true,	-- Horde Banner (q:51438)
	[290975] = true,	-- Silver Nugget (q:51707 & q:51743)
	[290996] = true,	-- Temple of Rezan Map (q:51679)
	[291213] = true,	-- Small Treasure Chest (Drustvar)
	[291222] = true,	-- Small Treasure Chest (Drustvar)
	[291234] = true,	-- Steaming Fresh Carrion (q:47272)
	[291235] = true,	-- Steaming Fresh Carrion (q:47272)
	[291236] = true,	-- Steaming Fresh Carrion (q:47272)
	[291246] = true,	-- Small Treasure Chest (Stormsong Valley)
	[291254] = true,	-- Small Treasure Chest (Stormsong Valley)
	[291258] = true,	-- Small Treasure Chest (Stormsong Valley)
	[291261] = true,	-- Woven Idol
	[292390] = true,	-- Horde Banner (q:52127)
	[292535] = true,	-- Altar of Kimbul (q:47578)
	[292764] = true,	-- Metal Scraps (q:52142 & q:52160)
	[292765] = true,	-- Discarded Toolbox (q:52142 & q:52160)
	[292868] = true,	-- Horde Banner (q:52222)
	[293121] = true,	-- Horde Banner (q:52276)
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
	[294170] = true,	-- Sealed Tideblood (q:52968)
	[296855] = true,	-- Truffle
	[305839] = true,	-- Shortfuse Special
	[307028] = true,	-- Azerite Grenades (q:53950)
	[308100] = true,	-- Engine Gearing (q:53885)
	[308103] = true,	-- Azerite Cannon Balls (q:53885)
	[308381] = true,	-- Alliance Cage (q:53883)
	[309886] = true,	-- Engine Gearing (q:53712)
	[311174] = true,	-- Volatile Azerite Weapons (q:54177)
	[311182] = true,	-- Crawler Mine Parts (q:54189)
	[311183] = true,	-- Remote Mine Controls (q:54189)
	[311206] = true,	-- Spider Ichor (q:54104)
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
	[322805] = true,	-- Calling Conch
	[325425] = true,	-- Wanderer's Wayshrine
	[325426] = true,	-- Wanderer's Wayshrine
	[325427] = true,	-- Wanderer's Wayshrine
	[325476] = true,	-- Direbloom (q:55504)
	[325478] = true,	-- Direbloom (q:55504)
	[325632] = true,	-- Burial Mound
	[325874] = true,	-- Osmenite Seam
	[325875] = true,	-- Osmenite Deposit
	[325883] = true,	-- Highborne Relic (q: 55659)
	[326214] = true,	-- Fetid Limb
	[326594] = true,	-- Arcane Tome
	[326598] = true,	-- Zin'anthid
	[327230] = true,	-- Jelly Deposit
	[327576] = true,	-- Glimmering Chest
	[327577] = true,	-- Glimmering Chest
	[327578] = true,	-- Glimmering Chest
	[328315] = true,	-- Mysterious Trashpile
	[329639] = true,	-- Sharas'dal, Scepter of Tides (q:56429)
	[330194] = true,	-- Prismatic Crystal
	[334115] = true,	-- Explosive Crate (q:57148)
	[334732] = true,	-- Glimmering Chest
	[334733] = true,	-- Glimmering Chest
	[334734] = true,	-- Glimmering Chest
	[334735] = true,	-- Glimmering Chest
	[334736] = true,	-- Glimmering Chest
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
	[348639] = true,	-- Anima Stores (q:59581)
	[349136] = true,	-- Forgotten Memorandum (q:59717)
	[349274] = true,	-- Forgotten Memorandum (q:59717)
	[349393] = true,	-- Battered Chest (q:59740)
	[349885] = true,	-- Guide To Marching (q:58622)
	[350978] = true,	-- Queen's Conservatory Cache
	[351473] = true,	-- Droplets of Anima (q:60176)
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
	[354649] = true,	-- Relic Hoard
	[355915] = true,	-- Razorthread Spool (q:58680)
	[355971] = true,	-- Stoneborn Glaive (q:61402)
	[356560] = true,	-- Explosive Animastore (q:60532)
	[356561] = true,	-- Everburn Lantern (q:60532)
	[356562] = true,	-- Emberlight Lantern (q:60532)
	[356563] = true,	-- Sanguine Rose (q:60532)
	[356596] = true,	-- Feather Cap (q:61406)
	[356597] = true,	-- Lacy Bell Morel (q:61406)
	[358297] = true,	-- Purified Nectar (q:62276)
	[363824] = true,	-- Cage (q:62720)
	[364345] = true,	-- A Faintly Glowing Seed
	[368304] = true,	-- Damaged Binding
	[368604] = true,	-- Mawsworn Cage
	[368605] = true,	-- Cage (SoD)
	[368606] = true,	-- Cage (SoD)
	[369306] = true,	-- Bundle of Writings (q:64224)
	[369308] = true,	-- Undelivered Mail (q:64224)
	[369309] = true,	-- Unattended Books (q:64224)
	[369375] = true,	-- Triggered Trap (q:64226)
	[373525] = true,	-- Place Shard (q:64813)
	[373526] = true,	-- Place Shard (q:64813)
	[373527] = true,	-- Place Shard (q:64813)
	[375235] = true,	-- Molten Draconium Deposit
	[375241] = true,	-- Bubble Poppy
	[375290] = true,	-- Cypher Bound Chest
	[375530] = true,	-- Forgotten Treasure Vault
	[376386] = true,	-- Disturbed Dirt
	[376587] = true,	-- Expedition Scout's Pack
	[378802] = true,	-- Corrupted Dragon Egg
	[381042] = true,	-- Shimmering Chest
	[381106] = true,	-- Serevite Seam
	[381154] = true,	-- Writhebark
	[381207] = true,	-- Saxifrage
	[381213] = true,	-- Windswept Hochenblume
	[381214] = true,	-- Frigid Hochenblume
	[381515] = true,	-- Hardened Serevite Deposit
	[381519] = true,	-- Infurious Serevite Deposit
	[381673] = true,	-- Gorloc Crystals
	[382029] = true,	-- Disturbed Dirt
	[382033] = true,	-- Djaradin Supply Jar
	[382284] = true,	-- Mature Gift of the Grove [Dragon Isle Resources]
	[383732] = true,	-- Tuskarr Tacklebox
	[383733] = true,	-- Disturbed Dirt
	[383734] = true,	-- Disturbed Dirt
	[383735] = true,	-- Disturbed Dirt
	[386521] = true,	-- Toxin Antidote
	[387725] = true,	-- Glowing Crystal (q:74518)
	[387727] = true,	-- Sulfuric Crystal (q:74518)
	[387729] = true,	-- Magma Crystal (q:74518)
	[390139] = true,	-- Lambent Hochenblume
	[401844] = true,	-- Smelly Trash Pile
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
	[410994] = true,	-- Map of Shadowfang Keep Security (q:78332 [A], q:78982 [H])
	[410998] = true,	-- Formula: Intoxicating Toxic Perfume (q:78332 [A], q:78982 [H])
	[410999] = true,	-- Memo from Apothecary Hummel (q:78332 [A], q:78982 [H])
	[411560] = true,	-- Lavenbloom (q:78565 & q:78986)
	[411561] = true,	-- Sugar Orchid (q:78565 & q:78986)
	[411562] = true,	-- Orange Illicium (q:78565 & q:78986)
	[411656] = true,	-- Hallowfall Scythe
	[411755] = true,	-- Flickerflame Candles (q:78635, q:82519)
	[411878] = true,	-- Intriguing Scrap (q:79205)
	[411930] = true,	-- Blackpowder Barrel
	[413126] = true,	-- Box of Artisanal Goods (q:78369 [A], q:78984 [H])
	[413246] = true,	-- Elemental Silt Mound
	[413590] = true,	-- Bountiful Coffer
	[414699] = true,	-- Darkroot Persimmon
	[414701] = true,	-- Cold Coffee
	[414869] = true,	-- Weapons Crate
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
	[419657] = true,	-- Abandoned Tools
	[419696] = true,	-- Waxy Lump
	[421070] = true,	-- Remnent Satchel
	[423714] = true,	-- Duskstem Stalk
	[425875] = true,	-- Nerubian Explosive Cache (q:78555)
	[428699] = true,	-- Sizzling Barrel (q:79205)
	[433370] = true,	-- War Supply Chest
	[434861] = true,	-- Ever-Blossoming Fungi
	[437195] = true,	-- Titan Artifact @ 79.3, 29, 2248 (q:81465)
	[437758] = true,	-- Alliance Weapon Rack (q:82153)
	[437761] = true,	-- Supplies (q:82153)
	[439314] = true,	-- Camp Supplies
	[441181] = true,	-- Research Cache (q:81908)
	[441225] = true,	-- Deepwalker Crate (q:81908)
	[443754] = true,	-- Earthen Coffer
	[444105] = true,	-- Escape Rope (q:81691)
	[444798] = true,	-- Arathi Treasure Hoard
	[444799] = true,	-- Potent Concentrated Shadow
	[444800] = true,	-- Sureki Strongbox
	[444801] = true,	-- Brimming Arathi Treasure Hoard
	[444802] = true,	-- Kobyss Ritual Cache
	[444804] = true,	-- Concentrated Shadow
	[444866] = true,	-- Overflowing Kobyss Ritual Cache
	[446357] = true,	-- Chest of Dynamite (q:82615)
	[446495] = true,	-- Pile of Refuse
	[446496] = true,	-- Enormous Pile of Refuse
	[449528] = true,	-- Opal-Mining Tools
	[451579] = true,	-- Used Fuel Drum (Ringing Deeps)
	[452696] = true,	-- Machine Speaker's Reliquary
	[452706] = true,	-- Deep-Lost Satchel
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
	[462533] = true,	-- Spare Excavation Rocket
	[465064] = true,	-- Old Scroll
	[465067] = true,	-- Faded Pages
	[465208] = true,	-- Crystal Chunk (q:84430)
	[467447] = true,	-- G.E.T.A. Needs You! (q: 84885)
	[469857] = true,	-- Overflowing Dumpster
	[469858] = true,	-- Shiny Trash Can
	[473943] = true,	-- Salvageable Scrap (q:85051)
	[474030] = true,	-- Salvageable Scrap (q:85051)
	[474033] = true,	-- Salvageable Scrap (q:85051)
	[474084] = true,	-- Salvageable Scrap (q:85051)
	[474086] = true,	-- Salvageable Scrap (q:85051)
	[474822] = true,	-- Runed Storm Cache (Treasure)
	[475990] = true,	-- Junk Pile
	[478435] = true,	-- Waiting Garbage Can (q:85514)
	[478436] = true,	-- Waiting Garbage Can (q:85514)
	[478437] = true,	-- Waiting Garbage Can (q:85514)
	[478438] = true,	-- Waiting Garbage Can (q:85514)
	[478443] = true,	-- Mislaid Curiosity (delve object)
	[478744] = true,	-- Mislaid Curiosity (delve object)
	[478679] = true,	-- Salvage Part
	[479594] = true,	-- Depleted Hotrod Battery
	[487825] = true,	-- Ruffled Pages (q:85589)
	[494499] = true,	-- Seafarer's Cache
	[495091] = true,	-- Improvised Explosive
	[499620] = true,	-- Runed Storm Cache @ 68.4, 73.8, 2369 (q:84726)
	[499863] = true,	-- Runed Storm Cache @ 39.4, 20.1, 2369 (q:84726)
	[499928] = true,	-- Darkfuse Research Notes
	[500096] = true,	-- Unseemly Growth
	[500203] = true,	-- Resold Goods
	[500407] = true,	-- Runed Storm Cache (Treasure)
	[500581] = true,	-- Container of Highly Profitable Sludge
	[500582] = true,	-- Crate of Somewhat Profitable Sludge
	[500583] = true,	-- Box of Lightly Profitable Sludge
	[500640] = true,	-- Metal Scrap (q:86274)
	[500682] = true,	-- Seafarer's Cache
	[500683] = true,	-- Seafarer's Cache
	[500684] = true,	-- Seafarer's Cache
	[500685] = true,	-- Seafarer's Cache
	[500686] = true,	-- Seafarer's Cache
	[503044] = true,	-- Ultra-Pasteurized Flesh Substitute
	[503050] = true,	-- Complainer Container 9000
	[503056] = true,	-- Customer Retrival Harpoons
	[503329] = true,	-- Corroded Plaque
	[503440] = true,	-- Discarded Goods
	[503450] = true,	-- Chunk of Charged Glass
	[503868] = true,	-- Nemesis Strongbox
	[503869] = true,	-- Nemesis Strongbox
	[503870] = true,	-- Nemesis Strongbox
	[503871] = true,	-- Nemesis Strongbox
	[506498] = true,	-- Gilded Stash
	[506640] = true,	-- Faded Journal Page @ 39.3, 54.2, 2369 (q:85571)
	[506696] = true,	-- Buried Treasure
	[507768] = true,	-- Jettisoned Pile of Goblin-Bucks
	[507867] = true,	-- Soggy Journal Page @ 51.4, 75.8, 2369 (q:85571)
	[507868] = true,	-- Stained Journal Page @ 55.8, 14.7, 2369 (q:85571)
	[507869] = true,	-- Torn Journal Page @ 46.1, 47.1, 2369 (q:85571)
	[507870] = true,	-- Weathered Journal Page @ 71, 59.2, 2369 (q:85571)
	[508727] = true,	-- Partially-Drained Battery
	[516163] = true,	-- Half-Empty Bag
	[516296] = true,	-- Sureki Cage (Nightfall)
	[517672] = true,	-- Emergency Exit (qs: 75874, 83121, 83123, 84121)
	[522157] = true,	-- Bomb Pile (Nightfall)
	[523535] = true,	-- Torch (Nightfall)
	[529289] = true,	-- Spore Sample (q: 88711)
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
	n = function(objID, objRef, providers, providerID)
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
			AddReportData(objRef.__type,objID, {
				[objRef.key or "ID"] = objID,
				QuestGiver = "Missing Quest Giver: "..providerID..", -- "..(app.NPCNameFromID[providerID] or UNKNOWN),
			})
		end
	end,
	o = function(objID, objRef, providers, providerID)
		if not providers then
			AddReportData(objRef.__type,objID, {
				[objRef.key or "ID"] = objID,
				QuestGiver = "Missing Object Provider: "..providerID..", -- "..(app.ObjectNames[providerID] or UNKNOWN),
			})
			return
		end
		local found
		for _,provider in ipairs(providers) do
			if provider[1] == "o" and provider[2] == providerID then found = 1 break end
		end
		if not found then
			AddReportData(objRef.__type,objID, {
				[objRef.key or "ID"] = objID,
				QuestGiver = "Missing Object Provider: "..providerID..", -- "..(app.ObjectNames[providerID] or UNKNOWN),
			})
		end
	end,
	-- TODO: Items are weird, maybe handle eventually
	-- i = function(objID, objRef, providers, providerID)
	-- end,
}

local function Check_providers(objID, objRef, providerType, id)
	local providerTypeCheck = ProviderTypeChecks[providerType]
	if providerTypeCheck then
		providerTypeCheck(objID, objRef, objRef.providers, id)
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

	local objRef = app.SearchForObject("questID", questID, "field")
	-- app.PrintDebug("Contributor.OnQUEST_DETAIL.ref",objRef and objRef.hash)
	if not objRef then
		-- this is reported from Quest class
		return
	end

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
	app.PrintDebug(guidtype,providerid,app.NPCNameFromID[providerid] or app.ObjectNames[providerid]," => Quest #", questID)

	-- check coords
	if not IgnoredChecksByType[guidtype].coord(providerid) then
		if not Check_coords(objRef, objRef.keyval) then
			-- is this quest listed directly under an NPC which has coords instead? check that NPC for coords
			-- e.g. Garrison NPCs Bronzebeard/Saurfang
			local questParent = objRef.parent
			if questParent and questParent.__type == "NPC" then
				if not Check_coords(questParent, questParent.keyval) then
					AddReportData(objRef.__type,questID,{
						[objRef.key or "ID"] = questID,
						MissingCoords = "No Coordinates for this quest under NPC!",
					})
				end
			else
				AddReportData(objRef.__type,questID,{
					[objRef.key or "ID"] = questID,
					MissingCoords = "No Coordinates for this quest!",
				})
			end
		end
	end

	-- check provider
	if not IgnoredChecksByType[guidtype].provider(providerid) then
		Check_providers(questID, objRef, GuidTypeProviders[guidtype], providerid)
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
local RegisterUNIT_SPELLCAST_START, UnregisterUNIT_SPELLCAST_START
-- Allows automatically tracking nearby ObjectID's and running check functions on them for data verification
local function OnPLAYER_SOFT_INTERACT_CHANGED(previousGuid, newGuid)
	-- app.PrintDebug("PLAYER_SOFT_INTERACT_CHANGED",previousGuid,newGuid)

	-- previousGuid == newGuid when the player distance becomes close enough or far enough to change interaction cursor
	if not newGuid or previousGuid ~= newGuid then
		LastSoftInteract.GuidType = nil
		LastSoftInteract.ID = nil
		UnregisterUNIT_SPELLCAST_START()
		return
	end

	local id, guidtype, _
	guidtype, _, _, _, _, id = ("-"):split(newGuid)
	id = tonumber(id)
	LastSoftInteract.GuidType = guidtype
	LastSoftInteract.ID = id
	-- app.PrintDebug(guidtype,id)

	-- only check object soft-interact (for now)
	if guidtype ~= "GameObject" then return end

	-- close enough to an object to open, track potential looting via mouseclick for a few seconds
	RegisterUNIT_SPELLCAST_START(10)

	local objRef = app.SearchForObject("objectID", id)
	-- only check sourced objects
	if not objRef then return end
	-- app.PrintDebug("GameObject",app:SearchLink(objRef))

	-- check sourced object coords
	if not IgnoredChecksByType[guidtype].coord(id) then
		-- object auto-detect can happen from rather far, so using 2 distance
		local objID = objRef.keyval
		if not Check_coords(objRef, objID, 2) then
			AddReportData(objRef.__type,objID,{
				[objRef.key or "ID"] = objID,
				["objectID"] = id,
				MissingCoords = ("No Coordinates for this %s!"):format(objRef.__type),
			})
		end
	end
end
AddEventFunc("PLAYER_SOFT_INTERACT_CHANGED", OnPLAYER_SOFT_INTERACT_CHANGED)

-- UNIT_SPELLCAST_START
-- Allows handling some special logic in special cases for special spell casts
local SpellIDHandlers = {
	-- Opening (on Objects)
	[6478] = function(source)
		if source ~= "player" then return end

		-- Verify 'Opening' cast, report ObjectID if not Sourced
		local id = LastSoftInteract.ID
		if not id or IgnoredChecksByType.GameObject.coord(id) then return end

		local objRef = app.SearchForObject("objectID", id)
		-- if it's Sourced, we've already checked it via PLAYER_SOFT_INTERACT_CHANGED
		if objRef then return end

		local tooltipName = GameTooltipTextLeft1:GetText()
		objRef = UnknownObjectsCache[id]
		local objID = objRef.keyval
		-- report openable object
		AddReportData(objRef.__type,objID,{
			[objRef.key or "ID"] = objID,
			["objectID"] = id,
			NotSourced = "Openable Object not Sourced!",
			Name = tooltipName or "(No Tooltip Text Available)",
		})
	end
}
-- Other 'Opening' spells
SpellIDHandlers[3365] = SpellIDHandlers[6478]

local RegisteredUNIT_SPELLCAST_START
local function OnUNIT_SPELLCAST_START(...)
	-- app.PrintDebug("UNIT_SPELLCAST_START",...)
	local source, _, id = ...
	local spellHandler = SpellIDHandlers[id]
	if not spellHandler then return end

	spellHandler(source)
end
UnregisterUNIT_SPELLCAST_START = function()
	if not RegisteredUNIT_SPELLCAST_START then return end
	-- app.PrintDebug("Unregister.UNIT_SPELLCAST_START")
	app:UnregisterEvent("UNIT_SPELLCAST_START")
	RegisteredUNIT_SPELLCAST_START = nil
end
RegisterUNIT_SPELLCAST_START = function(secTilRemove)
	if RegisteredUNIT_SPELLCAST_START then return end
	RegisteredUNIT_SPELLCAST_START = true
	-- app.PrintDebug("Register.UNIT_SPELLCAST_START",secTilRemove)
	app:RegisterFuncEvent("UNIT_SPELLCAST_START",OnUNIT_SPELLCAST_START)
	app.CallbackHandlers.DelayedCallback(UnregisterUNIT_SPELLCAST_START, secTilRemove or 0.5)
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
	RegisterUNIT_SPELLCAST_START()
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
