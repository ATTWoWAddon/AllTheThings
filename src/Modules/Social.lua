-- Social Module
local _, app = ...;

-- Global locals
local print, rawget, select, tonumber, tremove
	= print, rawget, select, tonumber, tremove;
local C_ChatInfo, GetRealmName, IsInGuild, IsInGroup, IsInInstance, IsInRaid, UnitGUID, UnitInParty, UnitInRaid, UnitIsPlayer, UnitName
	= C_ChatInfo, GetRealmName, IsInGuild, IsInGroup, IsInInstance, IsInRaid, UnitGUID, UnitInParty, UnitInRaid, UnitIsPlayer, UnitName;
local LE_PARTY_CATEGORY_INSTANCE, LE_PARTY_CATEGORY_HOME
	= LE_PARTY_CATEGORY_INSTANCE, LE_PARTY_CATEGORY_HOME;
local GetProgressColorText = app.Modules.Color.GetProgressColorText;
local Callback = app.CallbackHandlers.Callback

-- Addon Message Handling
local function SendGroupMessage(msg)
	if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and IsInInstance() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "INSTANCE_CHAT")
		return true
	elseif IsInRaid() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "RAID")
		return true
	elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "PARTY")
		return true
	end
end
local function SendGuildMessage(msg)
	if IsInGuild() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "GUILD");
		return true
	end
end
local function SendResponseMessage(msg, player)
	local name,server = ("-"):split(player);
	if not server or server == "" or server == GetRealmName() then
		C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", name);
	elseif UnitInRaid(player) or UnitInParty(player) then
		SendGroupMessage("to\t" .. player .. "\t" .. msg);
	else
		C_ChatInfo.SendAddonMessage("ATTC", msg, "WHISPER", player);
	end
end

-- Player Progress Cache
local PlayerProgressCacheByGUID = {};
app.PlayerProgressCacheByGUID = PlayerProgressCacheByGUID;

-- Version Cache
local major,minor,build,versionString,versionUID;
local VersionCache = setmetatable({
	["Git"] = 999999,
	["[Git]"] = 999999,
}, {
	__index = function(t, version)
		versionString = version:match('%d[%d.,]*');
		major,minor,build = ("."):split(versionString);
		major = tonumber(major or "0");
		minor = tonumber(minor or "0");
		build = tonumber(build or "0");
		versionUID = (major * 10000) + (minor * 100) + build;
		--print("GenerateVersionUniqueID", versionString, major,minor,build, versionUID);
		t[version] = versionUID;
		return versionUID;
	end
});
local CurrentVersion = VersionCache[app.Version];
local MaxReportedVersion = CurrentVersion

app.events.CHAT_MSG_ADDON = function(prefix, text, channel, sender, target, ...)
	if not target then target = sender; end
	if prefix == "ATTC" then
		-- app.PrintDebug(prefix, text, channel, sender, target, ...)
		local args = { ("\t"):split(text) };
		local cmd = args[1];
		if cmd then
			local a = args[2];
			if cmd == "?" then		-- Query Request
				local response;
				if a then
					if a == "a" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Achievements[b] and 1 or 0);
						end
					elseif a == "e" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Exploration[b] and 1 or 0);
						end
					elseif a == "f" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Factions[b] and 1 or 0);
						end
					elseif a == "fp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.FlightPaths[b] and 1 or 0);
						end
					elseif a == "p" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.BattlePets[b] and 1 or 0);
						end
					elseif a == "q" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Quests[b] and 1 or 0);
						end
					elseif a == "s" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (ATTAccountWideData.Sources and ATTAccountWideData.Sources[b] or 0);
						end
					elseif a == "sp" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Spells[b] and 1 or 0);
						end
					elseif a == "t" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (app.CurrentCharacter.Titles[b] and 1 or 0);
						end
					elseif a == "toy" then
						response = a;
						for i=3,#args,1 do
							local b = tonumber(args[i]);
							response = response .. "\t" .. b .. "\t" .. (ATTAccountWideData.Toys[b] and 1 or 0);
						end
					end
				else
					local character = app.CurrentCharacter;
					if character then
						local data = character.PrimeData;
						if data then
							response = "ATTC\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. data.modeString .. "\t" .. character.guid;
						end
					end
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				if a == "ATTC" then
					local guid = args[6];
					if guid then PlayerProgressCacheByGUID[guid] = { tonumber(args[3]), tonumber(args[4]), args[5] }; end
					print(target .. ": " .. GetProgressColorText(tonumber(args[3]), tonumber(args[4])) .. " " .. args[5]);
				else
					local response;
					if a == "s" then
						response = " ";
						for i=3,#args,2 do
							local b = tonumber(args[i]);
							local c = tonumber(args[i + 1]);
							response = response .. b .. ": " .. c .. " - ";
						end
					elseif a == "q" then
						response = " ";
						for i=3,#args,2 do
							local b = tonumber(args[i]);
							local c = tonumber(args[i + 1]);
							response = response .. b .. ": " .. c .. " - ";
						end
					elseif a == "a" then
						response = " ";
						for i=3,#args,2 do
							local b = tonumber(args[i]);
							local c = tonumber(args[i + 1]);
							response = response .. b .. ": " .. c .. " - ";
						end
					end
					if response then print(response .. sender); end
				end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = ("-"):split(a);
				if myName == name and (not server or server == "" or GetRealmName() == server) then
					app.events.CHAT_MSG_ADDON(prefix, text:sub(5 + a:len()), "WHISPER", sender);
				end
			elseif cmd == "A" then -- Version Command
				local guid = args[6];
				if guid then PlayerProgressCacheByGUID[guid] = { tonumber(args[3]), tonumber(args[4]), args[5] }; end
				if a ~= "[Git]" and not rawget(VersionCache, a) then
					local baseVersion = VersionCache[a]
					-- don't report the same or lower new versions more than once
					-- this doesn't account for alpha versions which are newer for someone using the same alpha version
					if CurrentVersion < baseVersion and baseVersion < MaxReportedVersion then
						MaxReportedVersion = baseVersion
						local flavors = app.L.NEW_VERSION_FLAVORS;
						print(app.L.NEW_VERSION_AVAILABLE:format(app.L.TITLE.." ("..a..")", flavors[math.random(#flavors)]));
					end
				end
			end
		end
	elseif prefix == "ATT" then	-- old format, supported until Retail supports the new sync window
		-- app.PrintDebug(prefix, text, channel, sender, target, ...)
		local args = { ("\t"):split(text) };
		local cmd = args[1];
		if cmd then
			local a = args[2];
			if cmd == "?" then		-- Query Request
				local response;
				if a then
					if a == "sync" then
						app:ReceiveSyncRequest(target, a);
					elseif a == "syncsum" then
						tremove(args, 1);
						tremove(args, 1);
						app:ReceiveSyncSummary(target, args);
					end
				end
				if response then SendResponseMessage("!\t" .. response, sender); end
			elseif cmd == "!" then	-- Query Response
				local response;
				if a == "syncsum" then
					tremove(args, 1);
					tremove(args, 1);
					app:ReceiveSyncSummaryResponse(target, args);
				end
				if response then print(response .. sender); end
			elseif cmd == "to" then	-- To Command
				local myName = UnitName("player");
				local name,server = ("-"):split(a);
				if myName == name and (not server or server == "" or GetRealmName() == server) then
					app.events.CHAT_MSG_ADDON(prefix, text:sub(5 + a:len()), "WHISPER", sender);
				end
			elseif cmd == "chks" then	-- Total Chunks Command [sender, uid, total]
				app:AcknowledgeIncomingChunks(target, tonumber(a), tonumber(args[3]));
			elseif cmd == "chk" then	-- Incoming Chunk Command [sender, uid, index, chunk]
				app:AcknowledgeIncomingChunk(target, tonumber(a), tonumber(args[3]), args[4]);
			elseif cmd == "chksack" then	-- Chunks Acknowledge Command [sender, uid]
				app:SendChunk(target, tonumber(a), 1, 1);
			elseif cmd == "chkack" then	-- Chunk Acknowledge Command [sender, uid, index, success]
				app:SendChunk(target, tonumber(a), tonumber(args[3]) + 1, tonumber(args[4]));
			end
		end
	end
end
SLASH_ALLTHETHINGSGUILD1 = "/attguild";
SlashCmdList.ALLTHETHINGSGUILD = function(cmd)
	if not cmd or cmd == "" then
		cmd = "?";
	elseif cmd:sub(1,1) ~= "?" then
		cmd = "?\t" .. cmd:gsub(":","\t");
	end
	SendGuildMessage(cmd);
end
SLASH_ALLTHETHINGSRAID1 = "/attraid";
SLASH_ALLTHETHINGSRAID2 = "/attgroup";
SLASH_ALLTHETHINGSRAID3 = "/attparty";
SLASH_ALLTHETHINGSRAID4 = "/attinstance";
SlashCmdList.ALLTHETHINGSRAID = function(cmd)
	if not cmd or cmd == "" then
		cmd = "?";
	elseif cmd:sub(1,1) ~= "?" then
		cmd = "?\t" .. cmd:gsub(":","\t");
	end
	SendGroupMessage(cmd);
end
SLASH_ALLTHETHINGSYOU1 = "/attu";
SlashCmdList.ALLTHETHINGSYOU = function(cmd)
	local name,server = UnitName("target");
	if name then
		if UnitIsPlayer("target") then
			if not cmd or cmd == "" then
				cmd = "?";
			elseif cmd:sub(1,1) ~= "?" then
				cmd = "?\t" .. cmd:gsub(":","\t");
			end
			SendResponseMessage(cmd, (server and server ~= "" and (name .. "-" .. server)) or name);
		else
			local guid = UnitGUID("target");
			if guid then
				local cmd = "creatureid:" .. select(6, ("-"):split(guid));
				app.SetSkipLevel(2);
				local group = app.GetCachedSearchResults(app.SearchForLink, cmd, nil, {SkipFill=true,IgnoreCache=true});
				app.SetSkipLevel(0);
				if group then app:CreateMiniListForGroup(group); end
			end
		end
	end
end
if app.IsClassic then
	-- Yell is only supported in Classic Game Clients.
	SLASH_ALLTHETHINGSYELL1 = "/attyell";
	SlashCmdList.ALLTHETHINGSYELL = function(cmd)
		C_ChatInfo.SendAddonMessage("ATTC", "?", "YELL");
	end
end

local lastProgressUpdateMessage;
local function SendProgressAnnounce()
	-- Send a message to your party members with your current Prime progress
	local currentCharacter = app.CurrentCharacter and app.CurrentCharacter;
	local data = currentCharacter.PrimeData or app:GetDataCache();
	local msg = "A\t" .. app.Version .. "\t" .. (data.progress or 0) .. "\t" .. (data.total or 0) .. "\t" .. data.modeString .. "\t" .. currentCharacter.guid;
	if lastProgressUpdateMessage ~= msg then
		lastProgressUpdateMessage = msg;
		local anySent
		anySent = SendGroupMessage(msg)
		anySent = SendGuildMessage(msg) or anySent
		if not anySent then
			-- self-call the chat function to refresh own data
			app.events.CHAT_MSG_ADDON("ATTC", msg, "WHISPER", "player");
		end
	end
end
local function SendVersionAnnounce()
	-- Send a message to your party members with your current ATT version only
	local msg = "A\t" .. app.Version
	SendGroupMessage(msg)
	SendGuildMessage(msg)
end
app.AddEventHandler("OnWindowUpdated", function(window, suffix)
	-- only the Prime window updates the 'PrimeData' cache
	if not window or suffix ~= "Prime" then return end

	-- announce the updated ATT info on the next frame following an update
	Callback(SendProgressAnnounce)
end)
app.AddEventHandler("OnSavedVariablesAvailable", function()
	local savedCache = AllTheThingsSavedVariables.PlayerProgressCacheByGUID;
	if savedCache then
		for guid,progress in pairs(PlayerProgressCacheByGUID) do
			savedCache[guid] = progress;
		end
		PlayerProgressCacheByGUID = savedCache;
		app.PlayerProgressCacheByGUID = savedCache;
	else
		AllTheThingsSavedVariables.PlayerProgressCacheByGUID = PlayerProgressCacheByGUID;
	end
end);
app.AddEventHandler("OnReady", function()
	app:RegisterEvent("CHAT_MSG_ADDON");
	C_ChatInfo.RegisterAddonMessagePrefix("ATTC");
	SendVersionAnnounce()
end);
